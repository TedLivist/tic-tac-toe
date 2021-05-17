# rubocop: disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Lint/DuplicateBranch

class Logic
  def initialize
    @checking = false
  end

  def check_win(player_mark, arr)
    if arr[0] == player_mark and arr[1] == player_mark and arr[2] == player_mark
      @checking = true
    elsif arr[3] == player_mark and arr[4] == player_mark and arr[5] == player_mark
      @checking = true
    elsif arr[6] == player_mark and arr[7] == player_mark and arr[8] == player_mark
      @checking = true
    elsif arr[0] == player_mark and arr[4] == player_mark and arr[8] == player_mark
      @checking = true
    elsif arr[2] == player_mark and arr[4] == player_mark and arr[6] == player_mark
      @checking = true
    elsif arr[0] == player_mark and arr[3] == player_mark and arr[6] == player_mark
      @checking = true
    elsif arr[1] == player_mark and arr[4] == player_mark and arr[7] == player_mark
      @checking = true
    elsif arr[2] == player_mark and arr[5] == player_mark and arr[8] == player_mark
      @checking = true
    end
  end

  def win?
    true if @checking == true
    @checking
  end
end

# rubocop: enable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Lint/DuplicateBranch
