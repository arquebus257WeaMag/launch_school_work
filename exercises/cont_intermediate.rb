# def k_lights
#   lights=[]
#   1000.times do |a|
#     lights[a] = 'on'
#   end

#   count=0
#   iter=2
#   jump=1
#   while count < lights.size
#     while jump < lights.size
#       if lights[jump] == 'on'
#         lights[jump] = 'off'
#       else
#         lights[jump] = 'on'
#       end
#       jump+=iter
#     end
#     iter+=1
#     jump=iter-1
#     count+=1
#   end

#   lights
# end
# p k_lights





# def diamond(dim)
#   loop_num = spc_num = dim/2
#   star_num = 1
#   star = '*'
#   space = ' ' * spc_num

#   loop_num.times do
#     print space + star + space
#     puts
#     star_num += 2
#     star = '*' * star_num
#     spc_num -= 1
#     space = ' ' * spc_num
#   end

#   puts '*' * dim

#   (loop_num).times do
#     star_num -= 2
#     star = '*' * star_num
#     spc_num += 1
#     space = ' ' * spc_num
#     print space + star + space
#     puts
#   end
# end

# diamond 13

# finished
