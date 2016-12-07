# def longest_sentence
#   curr_size=res_size=0
#   a = File.open("frankenstein","r") #"gburg_addr"
#   b=a.read

#   b.gsub!("\n"," ")
#   c=b.split(/[!.?]/)
#   c.each do |x|
#     x.strip!
#     curr_size = x.split(' ').size
#     if curr_size > res_size then res_size = curr_size end
#   end
#   res_size
# end

# p longest_sentence

# finished






# def block_word?(str)
#   blk_arr = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
#              ['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
#              ['V','I'], ['L','Y'], ['Z','M']]
#   result=true
#   str.upcase!
#   blk_arr.each do |a|
#     if str.include?(a[0]) && str.include?(a[1])
#       result=false
#     end
#   end
#   result
# end



# p block_word?('BATCH') == true
# p  block_word?('BUTCH') == false
# p  block_word?('jest') == true

# #finished




# def letter_percentages(str)
#   lc=uc=nr=0
#   str_arr = str.split('')
#   str_arr.each do |a|
#     if a.match(/[a-z]/)
#       lc+=1
#     elsif a.match(/[A-Z]/)
#       uc+=1
#     else
#       nr+=1
#     end
#   end
#   tl=lc+uc+nr
#   tl=tl.to_f
#   lc=lc/tl*100
#   uc=uc/tl*100
#   nr=nr/tl*100
#   {lowercase:lc, uppercase:uc, neither:nr}
# end



# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }




# def balanced?(str)
#   left=right=0
#   str=str.split('')
#   str.each do |a|
#     if a == '(' ; left+=1 end
#     if a == ')' ; right+=1 end
#     if right > left ; return false end
#   end
#   left == right
# end


# p  balanced?('What (is) this?') == true
# p  balanced?('What is) this?') == false
# p  balanced?('What (is this?') == false
# p  balanced?('((What) (is this))?') == true
# p  balanced?('((What)) (is this))?') == false
# p  balanced?('Hey!') == true
# p  balanced?(')Hey!(') == false
# p  balanced?('What ((is))) up(') == false






def triangle(a,b,c)
  if !(a>0 && b>0 && c>0)
    :invalid
  elsif a+b<c || b+c<a || a+c<b
    :invalid
  elsif a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end




# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid










# def triangle(a,b,c)
#   if !(a>0 && b>0 && c>0)
#     :invalid
#   elsif a+b+c != 180
#     :invalid
#   elsif a==90 || b==90 || c==90
#     :right
#   elsif a>90 || b>90 || c>90
#     :obtuse
#   else
#     :acute
#   end
# end



# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid





# def friday_13th?(num)
#   year=[]
#   leap=false
#   if num%4==0
#     unless num%100==0
#       unless num%400==0
#         leap=true
#       end
#     end
#   end

#   leap ? x=29 : x=28
#   months=[31,x,31,30,31,30,31,31,30,31,30,31]
#   months.each do |a|
#     year<<(1..a).to_a
#   end
#   year.flatten!
#   fri=1
#   result=[]
#   loop do
#     if year[fri] == 13
#       result << fri
#     end
#     fri+=7
#     break if fri>365
#   end
#   result.size
# end


# p friday_13th?(2015) == 3
# # p friday_13th?(1986) == 1
# # p friday_13th?(2019) == 2








# def featured(num)
#   loop do
#     num+=1
#     if num%2==0 ; next end
#     unless num%7==0 ; next end
#     res=false
#     str = num.to_s
#     str_arr = str.split('')
#     str_arr.each do |a|
#       if str.count(a) > 1
#         res=true
#         #puts "from inside str loop"
#       end
#     end
#     if res
#       #puts "skip #{num}"
#       next
#     end

#     break
#   end
#   num
# end


# p	featured(12) == 21
# p	featured(20) == 21
# p	featured(21) == 35
# p	featured(997) == 1029
# p	featured(1029) == 1043
# p	featured(999_999) == 1_023_547
# p	featured(999_999_987) == 1_023_456_987

# p	featured(9_999_999_999) # -> There is no possible number that fulfills
#those requirements

#finished, too bad uniq didnt work




# def bubble_sort!(arr)
#   x=arr.size-1
#   temp=0
#   make_switches=true
#   loop do
#     if make_switches == false then return end
#     make_switches=false
#     x.times do |a|
#       if arr[a] > arr[a+1]
#         temp = arr[a+1]
#         arr[a+1] = arr[a]
#         arr[a] = temp
#         make_switches=true
#       end
#     end
#   end
# end



# array = [5, 3]
# bubble_sort!(array)
# p	array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p	array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p	array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# finished




# def sum_square_difference(num)
#   num_arr = (1..num).to_a
#   sum = num_arr.reduce(:+)
#   sq_sum = sum**2

#   sq_arr = num_arr.map{|a| a**2}
#   sum_sq = sq_arr.reduce(:+)
#   sq_sum - sum_sq
# end



# p	sum_square_difference(3) == 22
# # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p	sum_square_difference(10) == 2640
# p	sum_square_difference(1) == 0
# p	sum_square_difference(100) == 25164150

# # finished
