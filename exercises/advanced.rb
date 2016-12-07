# madlib = IO.readlines("madlib")
# wa = madlib.map{|a| a.chomp.split(' ')}

# noun = wa[0][rand(7)]
# verb = wa[1][rand(7)]
# adjective = wa[2][rand(7)]
# adverb = wa[3][rand(7)]

# puts "The #{adjective} #{noun} #{verb} #{adverb} down the hill"
# puts
# puts "The #{adjective} brown #{noun} #{adverb}
# #{verb} the #{adjective} yellow
# #{noun}, who #{adverb} #{verb} his
# #{noun} and looks around."

# #finished






# def star(num)
#   spc=num/2-1
#   osp=0
#   (num/2).times do
#     puts ' ' * osp + '*' + ' ' * spc + '*' + ' ' * spc + '*' + ' ' * osp
#     spc-=1
#     osp+=1
#   end
#   puts '*' * num
#   spc=''
#   osp=(num/2-1)
#   (num/2).times do
#     puts ' ' * osp + '*' + spc + '*' + spc + '*' + ' ' * osp
#     spc+=' '
#     osp-=1
#   end
# end

# star 11

# # finished, slight optimization by multiplying spaces to variable






# def new_matrix(mtx)
#   res=[]
#   3.times do |a|
#     res[0][a] = mx[a][0]
#     res[1][a] = mtx[a][1]
#     res[2][a] = mtx[a][2]
#   end
#   res
# end


# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = matrix.transpose

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# # finished





# def transpose(mtx)
#   res=[]
#   temp=[]
#   mtx[0].size.times do |n|
#     mtx.each_with_index do |a|
#       temp << a[n]
#     end
#     res[n] = temp
#     temp=[]
#   end
#   res
# end

# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

# # finished



def rotate90(mtx)
  arr_size = mtx.size
  row_size = mtx[0].size
  temp=res=[]
  count = arr_size-1
  row_size.times do |n|
    arr_size.times do |a|

      count-=1
    end
    res << temp
    count = arr_size-1
  end
  res
end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 #== matrix2
