defmodule Chop do

  def guess(actual, [min, max]) do
    IO.puts "#{actual} #{min} #{max}"
    guess(actual, min, max, div((min+max), 2))
  end

  def guess(actual, _min, _max, num) when actual == num do
    IO.puts "#{num}"
  end

  def guess(actual, _min, max, num) when actual > num do
    IO.puts "Is it #{num}?"
    guess(actual, num, max, div((num+max), 2))
  end

  def guess(actual, min, _max, num) when actual < num do
    IO.puts "Is it #{num}?"
    guess(actual, min, num, div((num+min), 2))
  end

end
