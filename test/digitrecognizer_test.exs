defmodule DigitRecognizerTest do
  use ExUnit.Case
  doctest DigitRecognizer

  test "all zeroes" do
    assert DigitRecognizer.parse_digit(" _ ", "| |", "|_|") == 0
  end
end
