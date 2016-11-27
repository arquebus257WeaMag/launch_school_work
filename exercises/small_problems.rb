
# def average(a)
#   sum=0
#   a.each{|b|sum+=b}
#   sum/a.size
# end


# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40



# def sum(num)
#   str = num.to_s
#   arr = str.split('')
#   sum=0
#   arr.each{|elem| sum += elem.to_i}
#   sum
# end

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45



# def calculate_bonus(num,bool)
#   bool ? num/2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000




# def ted()
#   age = rand(20..200)
#   puts "Teddy is #{age} years old!"
# end
# ted



# puts "Enter the length of the room in meters: "
# len = gets.chomp.to_i

# puts "Enter the width of the room in meters: "
# wid = gets.chomp.to_i

# sm = len * wid
# sf = sm.to_f * 10.7639
# puts "The area of the room is #{sm} square meters (#{sf} square feet)."



# print "What is the bill? "
# bill = gets.chomp.to_f

# print "What is the tip percentage? "
# p_val = gets.chomp.to_f

# percent = p_val * 0.01
# tip = bill * percent
# total = (bill + tip).round(2)

# puts "tip is #{tip}"
# puts "total is #{total}"



# print "What is your age? "
# age = gets.chomp.to_i
# print "At what age would you like to retire? "
# ret_age = gets.chomp.to_i

# year = ret_age + (2016 - age)
# years = ret_age - age

# puts "It's 2016. You will retire in #{year}.
# You have only #{years} years of work to go!"


# print "What is your name? "
# name = gets.chomp

# if name[-1] == '!'
#   name.delete!('!')
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end


# (1..99).each{|a| puts a if a%2==1}
# (1..99).each{|a| puts a if a%2==0}



# print ">> Please enter an integer greater than 0: "
# num = gets.chomp.to_i
# print "Enter 's' to compute the sum, 'p' to compute the product. "
# comp = gets.chomp

# result=0
# if comp == 's'
#   result = (1..num).reduce(:+)
#   puts "The sum of the integers between 1 and #{num} is #{result}."
# elsif comp == 'p'
#   result = (1..num).reduce(:*)
#   puts "The product of the integers between 1 and #{num} is #{result}."
# else
#   puts "wrong input"
# end



# a=%w[1st 2nd 3rd 4th 5th]
# nums=[]
# a.each do |b|
#   print "Enter the #{b} number: "
#   nums << gets.chomp.to_i
# end
# print "Enter the last number: "
# last = gets.chomp.to_i
# answer = nums.include?(last) ? 'appears' : 'does not appear'
# puts "The number #{last} #{answer} in #{nums}"




# print "Enter the first number: "
# a = gets.chomp.to_i
# print "Enter the second number: "
# b = gets.chomp.to_i

# mod = a % b
# exp = a ** b
# plus = a + b
# puts "#{a} + #{b} = #{plus}"
# puts "#{a} mod #{b} = #{mod}"
# puts "#{a} to the #{b} power = #{exp}"



# print "Please write a word or multiple words: "
# input = gets.chomp

# result=0
# a = input.split(' ')
# a.each do |b|
#   result += b.size
# end
# puts "There are #{result} characters in #{input}"




# def multiply(a,b)
#   a*b
# end
# # p multiply(5, 3) == 15


# def square(a)
#   multiply(a,a)
# end

# p square(5) == 25
# p square(-8) == 64


# def xor?(a,b)
#   a != b
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false


# def oddities(a)
#   count=0
#   result=[]
#   while a.size > count
#     result << a[count]
#     count += 2
#   end
#   result
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []


def palindromic_number?(str)
  a = str.to_s.downcase.delete("^a-z0-9")
  a.reverse == a
end


# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true




# def short_long_short(a,b)
#   l=s=''
#   if a.size > b.size
#     b+a+b
#   else
#     a+b+a
#   end
# end
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"




# def century(year)
#   sufx='';yr=0
#   year -= 1
#   yr = (year / 100) + 1
#   dig = (yr % 100)
#   if dig > 20 then dig = dig % 10 end
#   sufx = case dig
#   when 0,4..20
#     'th'
#   when 2
#     'nd'
#   when 3
#     'rd'
#   when 1
#     'st'
#   else
#     'ho'
#   end
#   yr.to_s + sufx
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'



# def leap_year?(yr)
#   leap=false
#   if yr % 4 == 0
#     leap = true
#     if yr % 100 == 0
#       leap = false
#       if yr % 400 == 0
#         leap = true
#       end
#     end
#   end
#   leap
# end

# p leap_year?(4000)
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true



# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0
#   else
#     (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true




# def multisum(a)
#   arr = (1..a).select do |b|
#     b % 3 == 0 || b % 5 == 0
#   end
#   result = arr.reduce(:+)
# end


# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168



def running_total(arr)
  total=0
  result = [arr[0]]
  arr[1..-2].each_index do |a|
    total = total + arr[a]
    result << total 
  end
  result
end


p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) == []