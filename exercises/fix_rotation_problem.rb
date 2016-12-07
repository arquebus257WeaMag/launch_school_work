

# def rotate_array(arr)
#   a = arr.shift
#   arr << a
# end





# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true






# def rotate_rightmost_digits(num, dist)
#   return num if dist == 1
#   res=''
#   str = num.to_s
#   res = str[0..-dist-1] + str[-dist+1..-1] + str[-dist]
#   res.to_i
# end



# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917



# def rotate_rightmost_digits(num, dist)
#   str = num.to_s
#   puts "str[dist] #{str[dist]}"
#   a = str[dist]
#   str.slice!(dist)
#   str += a
#   str.to_i
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.split('')
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# def max_rotation(num)
#   num_arr = num.to_s.split('')
#   curr_size = arr_size = num_arr.size

#   arr_size.times do |a|
#     dig_num = num_arr.join.to_i
#     puts "dig_num #{dig_num}"
#     dig_num = rotate_rightmost_digits(dig_num,a)
#     num_arr = dig_num.to_s.split('')
#     puts "num_arr #{num_arr}"
#     break unless a < arr_size - 2
#     puts "num_arr chopped #{num_arr}"
#   end
#   num_arr.join.to_i
# end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
