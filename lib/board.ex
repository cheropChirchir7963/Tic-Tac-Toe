defmodule TicTacToe.Board do
  alias __MODULE__
  alias TicTacToe.Square

  @board_size 3
  def board_size(), do: @board_size

  @max_size @board_size * @board_size
  def max_size(), do: @max_size

  defstruct [squares: []]


end
