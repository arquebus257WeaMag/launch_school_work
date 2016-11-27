
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


def palindrome?(str)
  str.reverse == str
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
