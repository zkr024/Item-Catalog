require 'json'
require_relative '../items/label'

def label_data(label)
  File.write('./data/label.json', JSON.pretty_generate([])) unless File.exist?('./data/label.json')
  @file_label = File.read('./data/label.json')
  return if @file_label.empty?

  data_label = JSON.parse(@file_label)
  data_label.map do |value|
    title = value['Title']
    color = value['Color']
    label_info = Label.new(title, color)
    label << label_info
  end
end
