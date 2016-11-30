# def sum_of_sums(arr)
#   arr_size = arr.size
#   curr_count = 0
#   curr_end = 0
#   curr_sum = 0
#   sum_arr = []
#   loop do
#     loop do
#       curr_sum += arr[curr_count]
#       curr_count += 1
#       break unless curr_count < curr_end
#     end
#     sum_arr << curr_sum
#     curr_end += 1
#     break unless curr_end < arr_size
#   end
#   total = sum_arr.reduce(:+)
# end




# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35



# print "Enter a noun: "
# noun = gets.chomp
# print "Enter a verb: "
# verb = gets.chomp
# print "Enter an adjective: "
# adjective = gets.chomp
# print "Enter an adverb: "
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?"




# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!





# def substrings_at_start(str)
#   str_size = str.size
#   str_arr = str.split('')
#   curr_sum = 1
#   res_str = ''
#   res_arr = []

#   loop do
#     curr_count = 0
#     res_str = ''
#     loop do
#       res_str += str_arr[curr_count]
#       curr_count += 1
#       break unless curr_count < curr_sum
#     end
#     res_arr << res_str
#     curr_sum += 1
#     break unless curr_sum < str_size + 1
#   end
#   res_arr
# end

# def substrings_at_start(str)
#   res=[]
#   n=1
#   loop do
#     res << str[0,n]
#     n+=1
#     break unless n < str.size + 1
#   end
#   res
# end



# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']






# a='hey there'
# c = a.size
# c.times do |b|
#   print b
# end



# def substrings(str)
#   str_size = str.size
#   res_arr=[]

#   str_size.times do |a|
#     n = a
#     loop do
#       res_arr << str[a..n]
#       n += 1
#       break unless n < str_size
#     end
#   end
#   res_arr
# end



# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]


# def pdrm(str)
#   str if str.reverse == str
# end


# def palindromes(str)
#   res_arr=[]
#   n=1
#   b=''

#   str.size.times do |a|
#     n=a+1
#     loop do
#       break unless n<str.size
#       if b = pdrm(str[a..n]) then res_arr << b end
#       n+=1
#     end
#   end
#   res_arr
# end

# frak optimize looping

# extra credit - ignore non-alpha and case

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]



# def fizzbuzz(start,fin)
#   (start..fin).each do |a|
#     case
#     when a % 3 == 0 && a % 5 == 0; print 'FizzBuzz '
#     when a % 3 == 0; print 'Fizz '
#     when a % 5 == 0; print 'Buzz '
#     else print "#{a} "
#     end
#   end
# end


# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz




# def repeater(str)
#   res=''
#   str.chars.each do |a|
#     res += a + a
#   end
#   res
# end


# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''




# def double_consonants(str)
#   cons = ('A'..'Z')
#   res=''
#   str.each_char do |a|
#     if /[a-zA-Z&&[^aeiouAEIOU]]/.match(a)
#       res << a << a
#     else
#       res << a
#     end
#   end
#   res
# end


# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""




def reversed_number(num)
  str = num.to_s
  arr = str.split

end


reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1
