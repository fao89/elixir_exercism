defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    number
    |> Integer.digits()
    |> Enum.reverse()
    |> Enum.with_index()
    |> Enum.map(fn {value, index} ->
      case {value, index} do
        {x, 0} when x in 1..3 ->  String.duplicate("I", value)
        {x, 0} when x == 4 -> "IV"
        {x, 0} when x in 4..8 ->  "V#{String.duplicate("I", value - 5 )}"
        {x, 0} when x == 9 ->  "IX"
        {x, 1} when x in 1..3 ->  String.duplicate("X", value)
        {x, 1} when x == 4 -> "XL"
        {x, 1} when x in 4..8 ->  "L#{String.duplicate("X", value - 5 )}"
        {x, 1} when x == 9 ->  "XC"
        {x, 2} when x in 1..3 ->  String.duplicate("C", value)
        {x, 2} when x == 4 -> "CD"
        {x, 2} when x in 4..8 ->  "D#{String.duplicate("C", value - 5 )}"
        {x, 2} when x == 9 ->  "CM"
        {x, 3} when x in 1..3 ->  String.duplicate("M", value)
        {0, _x} -> ""
      end
    end)
    |> Enum.reverse()
    |> to_string()
  end
end
