class TicTacToe

  def initialize
    @board = Array.new(9, " ")
  end

  WIN_COMBINATIONS = [[0, 1, 2],
                      [3, 4, 5],
                      [6, 7, 8],
                      [0, 4, 8],
                      [2, 4, 6],
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8]]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, player_token)
    @board[index] = player_token
  end

  def position_taken?(index)
    if @board[index] == "" || @board[index] == " " || @board[index] == nil
      false
    else
      true
    end
  end

  def valid_move?(index)
    if index.to_i.between?(0, 8) && !position_taken?(index)
      true
    else
      false
    end
  end

  def turn_count
    turn = 0
    @board.each do |board_move|
      if board_move == "X" || board_move == "O"
        turn +=1
      end
    end
    return turn
  end

  def current_player
    turn_count
    if turn_count.even?
     player = "X"
    elsif turn_count.odd?
      player = "O"
  end
  return player
  end

end
