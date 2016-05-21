defmodule DigitRecognizerTest do
  use ExUnit.Case
  doctest DigitRecognizer

  test "all zeroes" do
    assert DigitRecognizer.parse(
      " _  _  _  _  _  _  _  _  _ \n" <>
      "| || || || || || || || || |\n" <>
      "|_||_||_||_||_||_||_||_||_|\n") == "000000000"
  end

  test "all ones" do
    assert DigitRecognizer.parse(
      "                           \n" <>
      "  |  |  |  |  |  |  |  |  |\n" <>
      "  |  |  |  |  |  |  |  |  |\n") == "111111111"
  end

  test "all zeroes" do
    assert DigitRecognizer.parse_digit(" _ ", "| |", "|_|") == "0"
  end
end
