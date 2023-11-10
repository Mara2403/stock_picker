def stock_picker(array)
#for each number in an array find the lowest before him, subtract and compare
  lowest_before = nil

  highest_subtract_value = 0
  result_pair = nil

  array.each_with_index do |current_number, index|
    #use only array elements before the current number
    sliced_array = array[0...index]
    #filter out numbers equal or grater to the current number in an array
    number = sliced_array.select { |num| num < current_number}
    lowest_before = number.empty? ? nil : number.min
    # subtract
    unless lowest_before.nil?
      subtract = current_number - lowest_before
      #compare subtract with highest_subtract_value
      if subtract > highest_subtract_value
        highest_subtract_value = subtract
        result_pair = [array.index(lowest_before), array.index(current_number)]
      end
    end
  end
puts "Highest subtract value is #{highest_subtract_value}"
puts "The best day to buy is day nr #{result_pair[0]} and best day to sell is day nr #{result_pair[1]} (days starts at 0)"
return result_pair
end

stock_picker([17,3,6,9,15,8,6,1,10])