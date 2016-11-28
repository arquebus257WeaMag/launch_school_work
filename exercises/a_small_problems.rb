# Convert a String to a Number!

# def string_to_integer(str)
#   str_size = str.size
#   num_str = '0123456789'
#   curr_size = 1
#   str_size.times{curr_size *= 10}
#   result = 0
#   pos = 0

#   arr = str.chars #.split('')

#   arr.each do |a|
#     pos = num_str.index(a)
#     add_up = pos * curr_size
#     result += add_up
#     curr_size /= 10
#   end
#   result /= 10
# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570





# def string_to_signed_integer(str)
#   result=0
#   if str[0] == '+'
#     result = string_to_integer(str[1..-1])
#   elsif str[0] == '-'
#     result = string_to_integer(str[1..-1])
#     result *= -1
#   else
#     result = string_to_integer(str)
#   end
# end


# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100




# def integer_to_string(num)
#   res_str = ''
#   cmp_str = %w[0 1 2 3 4 5 6 7 8 9]
#   return '0' if num == 0
#   while num > 0
#     res_str = cmp_str[num%10] + res_str
#     num/=10
#   end
#   res_str
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'




# def signed_integer_to_string(num)
#   if num < 0
#     '-' + integer_to_string(num * -1)
#   elsif num == 0
#     '0'
#   else
#     '+' + integer_to_string(num)
#   end
# end
    


# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'




def ascii_value(str)
  str_arr = str.chars
  result = str_arr.inject(1) do |a,b|
    a + b.ord
  end
  result-1
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0