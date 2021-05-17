require_relative '../lib/board.rb'

describe Board do
  init_board = Board.new
  describe '#board' do
    it "does not include number not passed in" do
      new_board = init_board.board([1,2,3,4,5,6,7,8,9])
      expect(new_board).not_to include('10')
    end

  end
end