defmodule TicTacToe.Board do
  alias __MODULE__
  alias TicTacToe.Square

  @board_size 3
  def board_size, do: @board_size

  @max_pos @board_size * @board_size
  def max_pos, do: @max_pos

  defstruct [squares: []]

  def new do
    Enum.map(1..@max_pos, &Square.new/1)
  end
end
