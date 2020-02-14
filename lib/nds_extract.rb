$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 total = 0
  row = 0

  while row < director_data[:movies].length do
    total += director_data[:movies][row][:worldwide_gross]
    row += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
   result = {}
  row = 0
  while row < source.size do
    name = source[row]
    result[name[:name]] = gross_for_director(name)
    row += 1
  end
  result
end
