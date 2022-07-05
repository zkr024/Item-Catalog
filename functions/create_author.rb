require_relative '../items/author'

def create_author(author)
  puts 'Enter first name:'
  first_name = gets.chomp

  puts 'Enter last name:'
  last_name = gets.chomp

  @author = Author.new(first_name, last_name)

  author << @author unless author.include?(@author)
end
