class GameList
  def game_list(game)
    if game.empty?
      puts 'There are no games in the system'
    else
      (game.map.with_index do |g, i|
        puts "#{i + 1}- Multiplayer: #{g.multiplayer}, last played on #{g.last_played_at}"
      end)
    end
  end
end
