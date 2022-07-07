@menu = [
  { value: '1', message: 'List all books' },
  { value: '2', message: 'List all music albums' },
  { value: '3', message: 'List all games' },
  { value: '4', message: 'List all genres' },
  { value: '5', message: 'List all labels' },
  { value: '6', message: 'List all authors' },
  { value: '7', message: 'Add a book' },
  { value: '8', message: 'Add a music album' },
  { value: '9', message: 'Add a game' },
  { value: '0', message: 'Exit' }
]

def print_menu
  puts "\n"
  puts 'Please choose an option by typing a number from the list:'
  puts "\n"
  @menu.map { |option| puts "#{option[:value]} - #{option[:message]}" }
end

def load_menu
  print_menu
  @input = gets.chomp
  system('cls')
end

def valid_input?(input)
  %w[1 2 3 4 5 6 7 8 9 0].include?(input)
end
