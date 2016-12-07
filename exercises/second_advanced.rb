# def permutations(arr)

# end





# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])
# # -> [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
# #     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
# #     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
# #     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
# #     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
# #     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
# #     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
# #     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]






# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# # is expected to print:
# # []
# # [21]
# # [9, 16]
# # [25, 36, 49]






def merge(ar1,ar2)

end


merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]
