require_relative 'author'

class CreateAuthor
  def create_author
    puts 'Enter first name:'
    first_name = gets.chomp

    puts 'Enter last name:'
    last_name = gets.chomp

    Author.new(first_name, last_name)
  end
end
