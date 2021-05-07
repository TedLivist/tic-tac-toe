#!/usr/bin/env ruby

# rubocop: disable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity, Style/IdenticalConditionalBranches
def board(arr)
  puts '+---+---+---+'
  puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
  puts '+---+---+---+'
  puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
  puts '+---+---+---+'
  puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"
  puts '+---+---+---+'
end

def player_assignment
  player_one = ''
  player_two = ''
  begin
    puts 'Please fill in your name, Player 1'
    player_one = gets.chomp
    raise StandardError, player_one if player_one == ''
  rescue StandardError
    puts 'Please put in a name'
    retry
  end
  begin
    puts 'Please fill in your name, Player 2'
    player_two = gets.chomp
    raise StandardError, player_two if player_two == ''
  rescue StandardError
    puts 'Please put in a name'
    retry
  end
  [player_one, player_two]
end

def play
  cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  game_on = true
  i = 0
  players = player_assignment
  board(cell)
  while game_on
    if i.even?
      puts "It's #{players[0]}'s turn"
      begin
        puts 'Please put in a number between 1 and 9'
        num = gets.chomp.to_i
        raise StandardError, num if num.nil? or num < 1 or num > 9 or cell[num - 1] != num
      rescue StandardError
        puts 'invalid input'
        retry
      end
      cell[num - 1] = 'X'
      board(cell)
    else
      puts "It's #{players[1]}'s turn"
      begin
        puts 'Please put in a number between 1 and 9'
        num = gets.chomp.to_i
        raise StandardError, num if num.nil? or num < 1 or num > 9 or cell[num - 1] != num
      rescue StandardError
        puts 'invalid input'
        retry
      end
      cell[num - 1] = 'O'
      board(cell)
    end
    i += 1
    game_on = false if i == 9
  end
end

play

# rubocop: enable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity, Style/IdenticalConditionalBranches
