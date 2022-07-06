require 'json'
require_relative '../items/game'

def game_data(game)
  File.write('./data/game.json', JSON.pretty_generate([])) unless File.exist?('./data/game.json')
  @file_game = File.read('./data/game.json')
  return if @file_game.empty?

  data_game = JSON.parse(@file_game)
  data_game.map do |value|
    multiplayer = value['Multiplayer']
    date = value['Last_played_on']
    game_info = Game.new(multiplayer, date)
    game << game_info
  end
end
