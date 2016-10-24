defmodule Solution do
  defp read_int do
    case IO.read(:stdio, :line) do
      :eof -> :eof
      data -> data |> String.trim |> String.to_integer
    end
  end

  def main do
    Enum.map(0..read_int-1, fn(x) -> x end) |> IO.inspect
  end
end
Solution.main()
