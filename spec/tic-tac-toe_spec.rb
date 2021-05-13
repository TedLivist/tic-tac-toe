#spec/tic-tac-toe_spec.rb

require './lib/board'
require './lib/players'
require './lib/logic'

describe Logic do
  describe '#win?' do
    it 'Check winning cases vertical x' do
      win = Logic.new
      expect(win.check_win('x', %w[x o 2 x o o x 7 x])).to eql(true)
    end
    it 'Check winning cases horizontal x' do
      win = Logic.new
      expect(win.check_win('x', %w[x o o x o o x o x])).to eql(true)
    end
    it 'Check winning cases diagonal x' do
      win = Logic.new
      expect(win.check_win('x', %w[x o 2 o x 4 6 7 x])).to eql(true)
    end
    it 'Check winning cases vertical o' do
      win = Logic.new
      expect(win.check_win('o', %w[o o o x o x o x o])).to eql(true)
    end
    it 'Check winning cases horizontal o' do
      win = Logic.new
      expect(win.check_win('o', %w[o x x o x x o x o])).to eql(true)
    end
    it 'Check winning cases diagonal o' do
      win = Logic.new
      expect(win.check_win('o', %w[o x 2 x o 4 6 7 o])).to eql(true)
    end
    it 'check draw cases' do
      win = Logic.new
      expect(win.check_win('x', %w[x o x x o o o x x])).not_to eql(true)
    end
    it 'check draw cases' do
      win = Logic.new
      expect(win.check_win('o', %w[x o x x o o o x x])).not_to eql(true)
    end
  end
end

describe Players do
  describe '#validate' do
    it 'player_assignment valdiation expected truthy if its not empty input' do
      players = Players.new
      expect(players.player_assignment).to be_truthy
    end
  end
end

describe Board do
  describe '#board ' do
    it 'puts the board on the console' do
      cell = [1,2,3,4,5,6,7,8,9]
      new_board = Board.new
      expect{new_board.board(cell)}.to output("+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+\n").to_stdout
    end
  end
end
