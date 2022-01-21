defmodule TicTacToe.Square do
  alias __MODULE__
  alias TicTacToe.Board

  @board_size Board.board_size()
  @enforce_keys [:pos]
  @max_pos Board.max_pos()

  defstruct [:x, :y, :val, :pos ]

  def new(pos) when pos > 0 and pos <= @max_pos do
    %TicTacToe.Square{pos: pos, y: y(pos), x: x(pos), val: :x}
  end

  def x(%Square{pos: pos}), do: x(pos)
  def x(pos), do: rem(pos - 1, @board_size) + 1

  def y(%Square{pos: pos}), do: y(pos)
  def y(pos), do: div(pos - 1, @board_size) + 1

end
