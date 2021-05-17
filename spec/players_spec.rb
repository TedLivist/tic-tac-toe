require_relative '../lib/players.rb'

describe Players do
  the_players = Players.new
  describe '#player_assignment' do
    it "returns an array" do
      the_players = Players.new.player_assignment
      expect(the_players).to be_an_instance_of(Array)
    end
  end
end