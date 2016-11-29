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




# def ascii_value(str)
#   str_arr = str.chars
#   result = str_arr.inject(1) do |a,b|
#     a + b.ord
#   end
#   result-1
# end



# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0



# def time_of_day(num)
#   hour_plus = num / 60
#   hour = hour_plus % 24
#   min = num % 60
#   "#{"%02d" % hour}:#{"%02d" % min}"
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"



# def calc(str)
#   time_arr = str.split(':')
#   hr = time_arr[0].to_i
#   min = time_arr[1].to_i
#   res = (hr * 60 + min)
# end

# def after_midnight(min)
#   res = calc(min)
#   res == 1440 ? 0 : res
# end

# def before_midnight(min)
#   res = 1440 - calc(min)
#   res == 1440 ? 0 : res
# end


# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0



# def swap(str)
#   str_arr = str.split(' ')
#   res = str_arr.map do |a|
#     if a.size == 1
#       a
#     else
#       a[-1] + a[1..-2] + a[0]
#     end
#   end
#   res.join(' ')
# end


# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'



# def cleanup(str)
#   a=0
#   result=''
#   skip=false
#   str.size.times do
#     curr = str[a]
#     if ('a'..'z').include?(curr)
#       result += curr
#       skip = false
#     else
#       result += ' ' if skip == false
#       skip = true
#     end
#     a+=1
#   end
#   result
# end

# p cleanup("---what's my +*& line?") == ' what s my line '

# def remove_junk(str)
#   a = str.chars
#   result=''
#   a.each do |a|
#     if ('a'..'z' ).include?(a) || ('A'..'Z').include?(a)
#       result += a
#     end
#   end
#   result
# end

# def word_sizes(str)
#   ret={}
#   str_arr = str.split(' ')
#   str_arr.each do |b|
#     a = remove_junk(b)
#     if ret.has_key?(a.size)
#       ret[a.size] += 1
#     else
#       ret[a.size] = 1
#     end
#   end
#   ret
# end



# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}




# def alphabetic_number_sort(arr)
#   num_name = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
#   alpha_arr = num_name.sort
#   result = arr.map do |a|
#     num_name.index(alpha_arr[a])
#   end
# end


# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]


# def crunch(str)
#   str_arr = str.chars
#   curr=''
#   res = str_arr.map do |a|
#     if a == curr
#       ''
#     else
#       curr = a
#       a
#     end
#   end
#   res.join
# end


# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''



# def print_in_box(str)
#   len = str.size
#   print '+-'
#   len.times{print '-'}
#   puts '-+'
#   print '| '
#   len.times{print ' '}
#   puts ' |'
#   print '| '
#   print str
#   puts ' |'
#   print '| '
#   len.times{print ' '}
#   puts ' |'
#   print '+-'
#   len.times{print '-'}
#   puts '-+'
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')





# def dms(num)
#   int = num.to_i
#   dec = num % 1
#   min_frac = dec * 60
#   min = min_frac.to_i
#   sec_dec = min_frac % 1
#   sec = sec_dec * 60
#   sec = sec.to_i
#     %(#{int}#deg#{'%02d' % min}'#{'%02d' % sec}")
# end


#   p dms(30) == %(30#deg00'00")
#   p dms(76.73) == %(76#deg43'48")
#   p dms(254.6) == %(254#deg36'00") # rounding problem, not going to fix
#   p dms(93.034773) == %(93#deg02'05")
#   p dms(0) == %(0#deg00'00")
#   p dms(360) == %(360#deg00'00") || dms(360) == %(0#deg00'00")





# def remove_vowels(arr)
#   vowels=%w[a e i o u A E I O U]
#   res = arr.join(' ')
#   vowels.each do |a|
#     res = res.delete(a)
#   end
#   res = res.split(' ')
#   res
# end



# def remove_vowels(arr)
#   vowels=%w[a e i o u A E I O U]
#   res = arr.map do |w|
#     vowels.each do |v|
#       w = w.delete(v)
#     end
#     w
#   end
#   res
# end


# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']



# def fibo(num)
# 	x=1
#   curr=1
#   (3..num).each do
#   	y = curr
#     curr = curr + x
#     x = y
#   end
#   curr
# end


# def find_fibonacci_index_by_length(num)
#   count=1
#   loop do
#     fib_res = fibo(count)
#     res = fib_res.to_s.size
#     if res >= num then return count end
#     count += 1
#   end
# end



# p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

# def a
# 	loop do
# 		puts 'hi'
# 		return
# 		puts 'ho'
# 	end
# 	puts 'hee'
# end




# def reverse!(arr)
#   x = arr.size
#   y = x - 1
#   other = []

#   arr.each do |a|
#     other << a
#   end

#   x.times do |b|
#     arr[y] = other[b]
#     y -= 1
#   end
#   arr
# end



# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# p list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# p list == ["abc"]

# list = []
# reverse!([]) # => []
# p list == []



# def reverse(arr)
#   res=[]
#   n = arr.size - 1
#   arr.each do |a|
#     res[n] = a
#     n -= 1
#   end
#   res
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 2, 3]                     # => true
# p new_list == [3, 2, 1]                 # => true




# def merge(a,b)
#   c=a+b
#   c.uniq!
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]



# def halvsies(arr)
#   n = arr.size
#   half_plus = n/2 + n%2
#   half = n/2
#   a = []
#   b = []

#   half_plus.times do |x|
#     a[x] = arr[x]
#   end

#   half.times do |y|
#     b[y] = arr[y+half_plus]
#   end

#   [a,b]
# end


# def halvsies(arr)
#   n = arr.size
#   half_plus = n/2 + n%2
#   half = n/2
#   a = arr.slice(0..half_plus-1)
#   b = arr.slice(half_plus..-1)
#   [a,b]
# end


# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]




# def find_dup(arr)
#   arr.each do |a|
#     found_one = false
#     arr.each do |b|
#       if a == b
#         if found_one then return b end
#         found_one = true
#       end
#     end
#   end
# end

# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#             38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#             14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#             78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#             89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#             41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#             55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#             85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#             40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#             7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73




# def include?(arr, elem)
#   arr.each do |a|
#     if a == elem then return true end
#   end
#   false
# end


# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false
