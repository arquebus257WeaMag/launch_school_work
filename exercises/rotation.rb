def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end



# p  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p  rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p  rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true






def rotate_rightmost_digits(num,dist)
  result=''
  str_arr = num.to_s.split('')
  result = str_arr[0..-dist-1] + rotate_array(str_arr[-dist..-1])
  result.join.to_i
end



# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917






def max_rotation(num)
  dist = num.to_s.size
  count = dist - 1
  result = num
  count.times do
    result = rotate_rightmost_digits(result,dist)
    #puts "- #{result}"
    dist -= 1
  end
  result
end



p  max_rotation(735291) == 321579
p  max_rotation(3) == 3
p  max_rotation(35) == 53
p  max_rotation(105) == 15 # the leading zero gets dropped
p  max_rotation(8_703_529_146) == 7_321_609_845
