class AuthorList
  def author_list(author)
    if author.empty?
      puts 'Sorry, no authors on file just yet'
    else
      puts 'List of Authors: '
      (author.map.with_index do |a, i|
        puts "#{i + 1}) #{a.first_name} #{a.last_name}"
      end)
    end
  end
end
