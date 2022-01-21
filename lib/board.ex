defmodule TicTacToe.Board do
  alias __MODULE__
  alias TicTacToe.Square

  @board_size 3
  def board_size, do: @board_size

  @max_pos @board_size * @board_size
  def max_pos, do: @max_pos

  defstruct [squares: []]

  def new do
    %Board{squares: Enum.map(1..@max_pos, &Square.new/1)}
  end


  def print(%Board{squares: squares}) do
    squares
  |> Enum.chunk_every(3)
  |> Enum.each(&print_line/1)
  end

  def print_line(squares) do
    squares
    |> Enum.map(fn s -> s.val end)
    |> Enum.join(" | ")
    |> IO.puts()
  end
end
