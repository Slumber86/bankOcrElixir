defmodule DigitRecognizerTest do
  use ExUnit.Case
  doctest DigitRecognizer

  test "all zeroes" do
    assert DigitRecognizer.parse_triple(
      " _  _  _  _  _  _  _  _  _ ",
      "| || || || || || || || || |",
      "|_||_||_||_||_||_||_||_||_|") == "000000000"
  end

  test "all zeroes" do
    assert DigitRecognizer.parse_digit(" _ ", "| |", "|_|") == "0"
  end
end
