defmodule TicTacToe.Square do
  alias __MODULE__

  @board_size 3
  @enforce_keys [:pos]


  defstruct [:x, :y, :val, :pos ]

  def new(pos) do
    %TicTacToe.Square{pos: pos, y: y(pos), x: x(pos)}
  end

  #helper functions for x and y
  def x(pos), do: rem(pos - 1, @board_size) + 1
  def y(pos), do: div(pos - 1, @board_size) + 1


end
