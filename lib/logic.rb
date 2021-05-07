class Logic
  def initialize
    @checking = false
  end

  def check_win(player, player_mark, arr)
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
    if @checking == true
      return true
    end
  end
end