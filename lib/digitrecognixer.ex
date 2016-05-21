defmodule DigitRecognizer do
  def parse_triple(top, middle, bottom) do
    top_list = String.split(top, "", parts: 7)
  end

  def inner_parse(<<a, b, c, rest :: binary>>, list) do
    inner_parse(rest, [a<>b<>c | list] )
  end
  def inner_parse(_, list) do
    list
  end
  def parse_digit(a,b,c) do
    _parse_digit(a,b,c)
  end
  defp _parse_digit(" _ ", "| |", "|_|") do
    0
  end
  defp _parse_digit("   ", "  |", "  |") do
    1
  end
end
