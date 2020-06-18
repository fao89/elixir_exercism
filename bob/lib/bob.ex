defmodule Bob do
  def hey(input) do
    trimmed = String.trim(input)
    shouting = String.upcase(input) == input and String.downcase(input) != input
    cond do
      String.strip(trimmed) == "" -> "Fine. Be that way!"
      String.ends_with?(trimmed, "?") and shouting -> "Calm down, I know what I'm doing!"
      String.ends_with?(trimmed, "?") -> "Sure."
      shouting -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
