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




# def reversed_number(num)
#   str = num.to_s
#   arr = str.split('')
#   arr = arr.reverse!.join.to_i
# end


# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # Note that zeros get dropped!
# p reversed_number(1) == 1





# def center_of(str)
#   s = str.size / 2
#   if str.size % 2 == 0
#     str[s-1,2]
#   else
#     str[s]
#   end
# end

# p center_of('ada')
# p center_of('good')

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'




# def greetings(arr,hsh)
#   "Hello, #{arr[0]} #{arr[1]} #{arr[2]}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
# end


# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."




# def twice(num)
#   arr = num.to_s
#   half = arr.size / 2 + arr.size % 2
#   front = arr[0..half-1]
#   #p "f #{front}"
#   back = arr[half..-1]
#   #p "b #{back}"
#   if front == back
#     num
#   else
#     num.to_i * 2
#   end
# end


# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10





# def negative(num)
#   if num > 0
#     -num
#   else
#     num
#   end
# end


# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby





# def sequence(num)
#   res_arr=[]
#   num.times do |a|
#     res_arr << a+1
#   end
#   res_arr
# end

# def sequence(num)
#   (1..num).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]






# def uppercase?(str)
#   str.each_char do |c|
#     return false if (/[a-z]/).match(c)
#   end
#   true
# end


# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true





# def word_lengths(str)
#   arr = str.split(' ')
#   res=arr.map do |w|
#     "#{w} #{w.size}"
#   end
# end



# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []





# def swap_name(str)
#   str_arr = str.split(' ')
#   "#{str_arr[1]}, #{str_arr[0]}"
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'




# def sequence(count,iter_val)
#   res_arr=[iter_val]
#   curr_sum=iter_val
#   (count-1).times do
#     res_arr << curr_sum += iter_val
#   end
#   count == 0 ? [] : res_arr
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []





# def get_grade(a,b,c)
#   grade = (a+b+c)/3

# 	case grade
# 	when 90..100 ; 'A'
# 	when 80..89 ; 'B'
# 	when 70..79 ; 'C'
# 	when 60..69 ; 'D'
# 	when 0..60 ; 'F'
# 	end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"




# def buy_fruit(arr)
#   res_str=[]
#   arr.each do |a|
#     (a[1]).times do
#       res_str << a[0]
#     end
#   end
#   res_str
# end


# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
