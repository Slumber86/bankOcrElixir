defmodule DigitRecognizer do
  def parse(inp) do
    [top,middle,bottom,_] = String.split(inp, "\n")
    parse_triple(top, middle, bottom)
  end
  def parse_triple(top, middle, bottom) do
    top_list = Enum.reduce(9..1, [], fn (x,acc) -> [String.slice(top, (x-1)*3..(x*3)-1) | acc] end)
    middle_list = Enum.reduce(9..1, [], fn (x,acc) -> [String.slice(middle, (x-1)*3..(x*3)-1) | acc] end)
    bottom_list = Enum.reduce(9..1, [], fn (x,acc) -> [String.slice(bottom, (x-1)*3..(x*3)-1) | acc] end)
    inner_parse(top_list, middle_list, bottom_list)
  end

  def inner_parse([t | top], [m | middle], [b | bottom]) do
    _parse_digit(t,m,b) <> inner_parse(top,middle,bottom)
  end
  def inner_parse([], [], []) do
    ""
  end
  def parse_digit(a,b,c) do
    _parse_digit(a,b,c)
  end
  defp _parse_digit(" _ ", "| |", "|_|") do
    "0"
  end
  defp _parse_digit("   ", "  |", "  |") do
    "1"
  end
end
