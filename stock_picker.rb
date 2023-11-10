def stock_picker(array)
  #find the highest number and it's index
  max_number = array.max
  max_number_index = array.index(max_number)
  p [max_number, max_number_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])