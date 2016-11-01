defmodule Solution do
  defp read_int do
    case IO.read(:stdio, :line) do
      :eof -> :eof
      data -> data |> String.trim |> String.to_integer
    end
  end

  defp loop_read_and_queue(numbers) do
    case read_int do
      :eof -> numbers
      data -> loop_read_and_queue(numbers ++ [data])
    end
  end

  defp reverse(original, reversed) do
    case original do
      [h|t] -> reverse(t, [h] ++ reversed)
      [] -> reversed
    end
  end

  defp print_elements(numbers) do
    case numbers do
      [h|t] -> IO.puts(h) ; print_elements(t)
      [] -> :ok
    end
  end

  def main do
    loop_read_and_queue([]) |> reverse([]) |> print_elements
  end
end
Solution.main()
