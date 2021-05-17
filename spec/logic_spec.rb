require_relative '../lib/logic.rb'

describe Logic do
  new_logic = Logic.new
  describe '#logic' do
    context "when no winner has been checked" do
      it "returns false" do
        expect(new_logic.win?).to be(false)
      end
    end

    

    it "returns false check for winner fails" do
      new_logic.check_win('X', ['X', 'X', 'O', 'O', 'O', 'X', 'X', 'X', 'O'])
    end
  end
end