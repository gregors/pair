defmodule Pair do
  def cons(x, y) do
    fn pick ->
      if pick == 1 do
        x
      else
        y
      end
    end
  end

  def car(pair) do
    pair.(1)
  end

  def cdr(pair) do
    pair.(2)
  end

  def to_s(pair) do
    IO.write("[")
    to_s2(pair)
    IO.puts("]")
  end

  def to_s2(pair) when is_function(pair) do
    pair |> car() |> IO.write
    IO.write(", ")
    to_s2(cdr(pair))
  end

  def to_s2(cell) do
    IO.write(cell)
  end
end
