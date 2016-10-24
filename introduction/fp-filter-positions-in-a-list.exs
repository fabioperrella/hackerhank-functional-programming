defmodule Solution do
  defp read_int do
    case IO.read(:stdio, :line) do
      :eof -> :eof
      data -> data |> String.trim |> String.to_integer
    end
  end

  defp loop_read(numbers) do
    case read_int do
      :eof -> numbers
      number -> loop_read(numbers ++ [number])
    end
  end

  def main do
    for {v,k} <- loop_read([]) |> Enum.with_index, rem(k,2) != 0, do: IO.puts(v)
  end
end
Solution.main()
