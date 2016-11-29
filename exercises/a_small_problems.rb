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





def remove_vowels(arr)
  vowels=%w[a e i o u A E I O U]
  res = arr.join(' ')
  vowels.each do |a|
    res = res.delete(a)
  end
  res = res.split(' ')
  res
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
