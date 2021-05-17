require_relative '../lib/logic.rb'

describe Logic do
  new_logic = Logic.new
  describe '#logic' do
    context "when no winner has been checked" do
      it "returns false" do
        expect(new_logic.win?).to be(false)
      end
    end

    context "when check for winner fails" do
      it "returns false" do
        new_logic.check_win('X', ['X', 'X', 'O', 'O', 'O', 'X', 'X', 'X', 'O'])
        expect(new_logic.win?).to be(false)
      end
    end

    context "when check for winner passes" do
      it "returns true" do
        new_logic.check_win('O', ['O', 'X', 'X', 'O', 'O', 'X', 'X', 'X', 'O',])
        expect(new_logic.win?).to be(true)
      end
    end
  end
end