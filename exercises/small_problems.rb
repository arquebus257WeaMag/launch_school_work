
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


print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  name.delete!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end


