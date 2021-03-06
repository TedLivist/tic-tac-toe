#!/usr/bin/env ruby

# rubocop: disable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity, Metrics/AbcSize, Metrics/BlockNesting

require_relative '../lib/players'
require_relative '../lib/board'
require_relative '../lib/logic'

def play
  cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  players = Players.new.player_assignment
  game_board = Board.new
  puts game_board.board(cell)
  i = 0
  game_on = true
  while game_on
    if i.even?
      puts "It's #{players[0]}'s turn!"
      player_mark = 'X'
      puts 'Select a number'
      input = gets.chomp.to_i
      puts ''
      while input.nil? or input < 1 or input > 9 or !cell[input - 1].is_a?(Integer)
        if input.nil? or input < 1 or input > 9
          puts 'Select a number between 1 and 9'
          input = gets.chomp.to_i
        elsif cell[input - 1] != input - 1
          puts 'The positon has been taken'
          input = gets.chomp.to_i
        end
      end
      cell[input - 1] = player_mark
      check = Logic.new
      check.check_win(player_mark, cell)
      if check.win?
        puts game_board.board(cell)
        puts "#{players[0]} is the winner!!"
        repeat_game
        game_on = false
        break
      end
      puts game_board.board(cell)
    elsif i.odd? and i != 9
      puts "It's #{players[1]}'s turn!"
      player_mark = 'O'
      puts 'Select a number'
      input = gets.chomp.to_i
      puts ''
      while input.nil? or input < 1 or input > 9 or !cell[input - 1].is_a?(Integer)
        if input.nil? or input < 1 or input > 9
          puts 'Select a number between 1 and 9'
          input = gets.chomp.to_i
        elsif cell[input - 1] != input - 1
          puts 'The positon has been taken'
          input = gets.chomp.to_i
        end
      end
      cell[input - 1] = player_mark
      check = Logic.new
      check.check_win(player_mark, cell)
      if check.win?
        puts game_board.board(cell)
        puts "#{players[1]} is the winner!!"
        repeat_game
        game_on = false
        break
      end
      puts game_board.board(cell)
    elsif i == 9
      puts ''
      puts 'DRAW'
      repeat_game
      game_on = false
    end
    i += 1
  end
end

def repeat_game
  puts 'Play another round? (Y/N)'
  answer = gets.chomp.downcase
  if answer == 'y'
    play
  else
    puts 'Game over'
  end
end

play

# rubocop: enable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity, Metrics/AbcSize, Metrics/BlockNesting
