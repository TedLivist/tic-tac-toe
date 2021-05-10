# rubocop: disable Metrics/MethodLength

class Players
  def player_assignment
    puts 'Welcome to this tic-tac-toe game'
    begin
      puts 'Please, put in your name Player 1'
      player_one = gets.chomp
      raise StandardError, player_one if player_one == ''
    rescue StandardError
      puts ''
      puts 'Name cannot be empty'
      retry
    end
    sleep 0.5
    puts "#{player_one} your marker is 'X'"
    puts ''
    begin
      puts 'Please, put in your name Player 2'
      player_two = gets.chomp
      raise StandardError, player_one if player_two == ''
    rescue StandardError
      puts ''
      puts 'Name cannot be empty'
      retry
    end
    sleep 0.5
    puts "#{player_two} your marker is 'O'"
    puts ''
    [player_one, player_two]
  end
end

# rubocop: enable Metrics/MethodLength
