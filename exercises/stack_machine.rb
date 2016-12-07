

# def minilang(str)
#   stack = []
#   reg = 0
#   prog = str.split(' ')

#   prog.each do |a|
#     case a
#     when 'PUSH'; stack << reg
#     when 'ADD'; reg += stack.pop
#     when 'SUB'; reg -= stack.pop
#     when 'MULT'; reg *= stack.pop
#     when 'DIV'; reg /= stack.pop
#     when 'MOD'; reg %= stack.pop
#     when 'POP'; reg = stack.pop
#     when 'PRINT'; puts reg
#     else reg = a.to_i
#     end
#   end
# end


# p minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
