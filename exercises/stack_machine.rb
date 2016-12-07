# def n(a)
#   #
# end

# def PUSH(a)
#   stack.push(a)
# end

# def ADD
#   reg += stack.pop
# end

# def SUB
#   reg -= stack.pop
# end

# def MULT
#   reg *= stack.pop
# end

# def DIV
#   reg /= stack.pop
# end

# def MOD
#   reg %= stack.pop
# end

# def POP
#   reg = stack.pop
# end

# def PRINT
#   puts reg
# end

# stack = []
# reg = 0
# x = 0

# def minilang(str)
#   prog = str.split(' ')

#   prog.each do |a|
#     case a
#     when 'n'; n(x)
#     when 'PUSH'; n(x)
#     when 'ADD'; ADD
#     when 'SUB'; SUB
#     when 'MULT'; MULT
#     when 'DIV'; DIV
#     when 'MOD'; MOD
#     when 'POP'; POP
#     when 'PRINT'; PRINT.call
#     else x = a.to_i
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
