require_relative '../lib/logic.rb'

describe Logic do
  new_logic = Logic.new
  describe '#logic' do
    it "returns false if no winner has been checked" do
      expect(new_logic.win?).to be(false)
    end
  end
end