defmodule TicTacToe.Game do
  alias __MODULE__
  alias TicTacToe.Board

  defstruct [:board, :next_player, :winner]

  def new do
    %Game{board: Board.new()}
  end

end
