class GenreList
  def genre_list(genre)
    if genre.empty?
      puts 'There are no records'
    else
      puts 'List of Genres:'
      (genre.map.with_index do |g, index|
        puts "#{index + 1}) #{g[:Name]}"
      end)
    end
  end
end
