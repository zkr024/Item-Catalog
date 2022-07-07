require 'json'

def save_game(game)
  game_data = []
  game.map do |val|
    info = {}
    info['Multiplayer'] = val.multiplayer
    info['Last_played_on'] = val.last_played_at
    game_data << info
  end
  File.write('./data/game.json', JSON.pretty_generate(game_data))
end
