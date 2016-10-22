defmodule Solution do
  defp read_int, do: IO.gets("") |> String.trim |> String.to_integer
  defp read_int(s) do
    print_int(read_int, s)
    read_int(s)
  end
  defp print_int(_, s) when s == 0, do: :ok
  defp print_int(number, s) do
    IO.puts(number)
    print_int(number, s-1)
  end

  def main do
    s = read_int
    read_int(s)
  end
end
Solution.main()