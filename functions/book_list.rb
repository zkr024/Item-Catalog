class BookList
  def book_list(book)
    if book.empty?
      puts "Sorry, there're no books"
    else
      (book.map.with_index do |b, i|
        puts "Book number #{i + 1}"
        puts "  -Title: #{b.title}"
        puts "  -Author: #{b.author.first_name} #{b.author.last_name}"
        puts "  -Type: #{b.label.title} Color-#{b.label.color}"
        puts "  -Published on: #{b.publish_date}"
        puts "  -Book status: #{b.cover_state}"
        puts "  -Publisher: #{b.publisher}"
        puts "\n"
      end)
    end
  end
end
