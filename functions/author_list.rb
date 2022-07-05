class AuthorList
  def author_list(author)
    if author.empty?
      puts 'Sorry, no authors on file just yet'
    else
      puts 'List of Authors: '
      (author.map.with_index do |a, i|
        puts "#{i + 1}) First name: #{a.first_name} - last name: #{a.last_name}"
      end)
    end
  end
end
