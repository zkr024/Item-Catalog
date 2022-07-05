require 'json'

def save_label(label)
  label_data = []
  label.map do |val|
    info = {}
    info['Title'] = val.title
    info['Color'] = val.color
    label_data << info
  end
  File.write('./data/label.json', JSON.pretty_generate(label_data))
end
