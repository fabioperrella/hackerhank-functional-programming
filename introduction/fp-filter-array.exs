defmodule Solution do
  defp read_int do
    case IO.read(:stdio, :line) do
      :eof -> :eof
      data -> data |> String.trim |> String.to_integer
    end
  end

  defp loop_read_and_print(x) do
    case read_int do
      :eof -> :ok
      number -> filter_and_print(number, x)
                loop_read_and_print(x)
    end
  end

  defp filter_and_print(number, x) when number < x, do: IO.puts(number)
  defp filter_and_print(_, _), do: :ok

  def main do
    x = read_int()
    loop_read_and_print(x)
  end
end
Solution.main()
