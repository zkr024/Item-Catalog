class AlbumList
  def album_list(album)
    if album.empty?
      puts 'There are no Albums in the system'
    else
      (album.map.with_index do |m, i|
        puts "#{i + 1}- Genre: #{m.genre.name}, published on #{m.publish_date}"
      end)
    end
  end
end
