# def check_num(str)
#   case str
#   when 'one'; 1
#   when 'two'; 2
#   when 'three'; 3
#   when 'four'; 4
#   when 'five'; 5
#   when 'six'; 6
#   when 'seven'; 7
#   when 'eight'; 8
#   when 'nine'; 9
#   else nil
#   end
# end

# def word_to_digit(str)
#   res=''
#   str_arr = str.split(' ')
#   result = str_arr.map do |a|
#     if check_num a
#       "#{res}#{a.scan(/[^\w+]/)}"
#       check_num a
#     else
#       a
#     end
#   end
#   result.join(' ')
# end

# # need to fix period at end of 'four'
# p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'



# def fibonacci(a)
#   if a <= 2
#     return 1
#   else
#     fibonacci(a-1) + fibonacci(a-2)
#   end
# end


# p  fibonacci(1) == 1
# p  fibonacci(2) == 1
# p  fibonacci(3) == 2
# p  fibonacci(4) == 3
# p  fibonacci(5) == 5
# p  fibonacci(12) == 144
# p  fibonacci(20) == 6765

# # cheated, looked at answer


# def fibonacci(num)
#   answer=1               # <-- here is reason, answer=1
#   temp1=temp2=1
#   (num-2).times do |a|          # <-- num-2
#     answer = answer + temp2
#     temp2 = temp1
#     temp1 = answer
#   end
#   answer
# end

# # finished correctly, still need to know why (num-2) instead of just num

# p  fibonacci(20) == 6765
# p  fibonacci(100) == 354224848179261915075
# p  fibonacci(100_001) # => 4202692702.....8285979669707537501






# def fibonacci_last(num)
#   answer=0
#   temp1=temp2=1
#   (num-1).times do |a|
#     answer = answer + temp2
#     temp2 = temp1
#     temp1 = answer
#   end
#   x = answer.to_s
#   y = x[-1]
#   y.to_i
# end





# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4


# finished correctly
