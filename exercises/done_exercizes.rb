# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end
# a = b = 0
# loop do
#   print "Please enter a positive or negative integer:"
#   input1 = gets.chomp

#   print "Please enter a positive or negative integer:"
#   input2 = gets.chomp

#   unless valid_number?(input1) && valid_number?(input2)
#     puts "Invalid input. Only non-zero integers are allowed."
#     next
#   end

#   a = input1.to_i
#   b = input2.to_i

#   if a > 0 && b < 0 || a < 0 && b > 0
#     break
#   else
#     puts "Sorry. One integer must be positive, one must be negative."
#     puts "Please start over."
#   end
# end
#   result = a - b
#   puts "#{a} + #{b} = #{result}"


# Methods
# --------------------------------------------------

# def a
#   'Hello'
# end

# def b
#   "World"
# end

# puts "#{a} #{b}"

# def a
#   'Hello'
# end

# def b
#   "World"
# end

# def greet(a,b)
#   a + ' ' + b
# end

# puts greet(a,b)

# def car(a,b)
#   puts "#{a} #{b}"
# end

# car('Toyota', 'Corolla')

# daylight = [true, false].sample

# def time_of_day(dl)
#   if dl
#     puts "It's daytime!"
#   else
#     puts "It's nightime!"
#   end
# end

# time_of_day(daylight)



# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end


# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

# def assign_name(a='Bob')
#   a
# end

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'


# def add(a,b)
#   a+b
# end

# def multiply(a,b)
#   a*b
# end


# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# def name(arr)
#   arr.sample
# end

# def activity(arr)
#   arr.sample
# end

# def sentence(a,b)
#   "#{a} went #{b} today!"
# end

# puts sentence(name(names), activity(activities))

# def print_me
#   puts "I'm printing within the method!"
# end
# print_me

# def print_me
#   "I'm printing the return value!"
# end
# puts print_me

# Conditionals
# ----------------------------


# sun = ['visible', 'hidden'].sample

# if sun == 'visible'
#   puts "The sun is so bright!"
# end

# unless sun == 'visible'
#   puts "The clouds are blocking the sun!"
# end

# boolean = [true, false].sample

# puts boolean ? "I'm true!": "I'm false!"

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# when 'red'
#   puts 'Stop!'
# end

# if stoplight == 'green'
#   puts 'Go!'
# elsif stoplight == 'yellow'
#   puts 'Slow down!'
# elsif stoplight == 'red'
#   puts 'Stop!'
# end

# status = ['awake', 'tired'].sample

# result = if status == 'awake'
#   "Be productive!"
# else
#   "Go to sleep!"
# end

# puts result

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green';puts 'Go!'
# when 'yellow' ; puts 'Slow down!'
# else;puts 'Stop!'
# end

# a = String.new

# state = 'tExAs'.downcase.capitalize
# puts state

# colors = 'blue pink yellow orange'
# puts colors.include?('yellow')
# puts colors.include?('purple')

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pet = pets[2]
# puts "I have a pet #{my_pet} "

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2..3]
# puts "I have a pet
#{pets[0]} and a pet #{pets[1]}}"

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# puts my_pets

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets << pets[1]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each{|a| puts "I'm the color #{a}"}

# numbers = [1, 2, 3, 4, 5]
# doubled_numbers = numbers.map{|a| a+a }
# p doubled_numbers

# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select{|a| a % 3 == 0}
# p divisible_by_three

# count=0
# b=[]
# a = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
# while !a.empty?
# 	temp = []
# 	temp << a.shift
# 	temp << a.shift
# 	b << temp
# end
# p b

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# p favorites.flatten

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# p array1 == array2

# car = {type:'sedan',color:'blue',mileage:80_000}
# car[:year]=2003
# p car
# car.delete(:mileage)
# p car
# p car[:color]

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |k,v|
# 	puts "A #{k} number is #{v}"
# end

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }
# half_numbers = numbers.map do |_,v|
#   v/2
# end
# p half_numbers


# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# p low_numbers = numbers.select!{|k,v| v<25}
# p numbers

# {car:{type:'sedan',color:'blue',year:2003},
# truck:{type:'pickup',color:'red',year:1998}}


# car = {
#   type:  'sedan',
#   color: 'blue',
#   year:  2003
# }
# p arr = car.map{|k,v|[k,v]}

# def repeat(a,b)
# 	b.times{puts a}
# end
# repeat('Hello', 3)


# def is_odd?(a)
#   ab = a<0 ? -a : a
#   ab % 2 == 1
# end
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(7.1)  # => false
# puts is_odd?(-5.0) # => true

# def digit_list(a)
# 	b = a.to_s.split('')
# 	b.map{|c|c.to_i}
# end

# def digit_list(number)
#   number.to_s #.chars  #.map(&:to_i)
# end
# puts digit_list(12345)

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurrences(arr)
# 	res={}
# 	arr.each do |a|
# 		if res.has_key?(a)
# 			res[a] += 1
# 		else
# 			res[a] = 1
# 		end
# 	end
# 	res
# end

# puts count_occurrences(vehicles)


# def reverse_sentence(a)
#   res=[]
#   a.split(" ").each{|b|res.unshift(b)}
#   res.join(' ')
# end

# puts reverse_sentence('Reverse these words')
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'


# def reverse_words(a)
#   c = a.split(' ')
#   res = c.map do |b|
#     if b.size>5
#       b.reverse
#     else
#       b
#     end
#   end
#   res.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS


# def stringy(a)
#   c=true
#   res=''
#   a.times do |b|
#     if c == true
#       res << '1'
#       c=false
#     else
#       res << '0'
#       c=true
#     end
#   end
#   res
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


