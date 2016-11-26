def valid_number?(input)
  input.to_i != 0
end

puts "welcome to the calculate program"

a = b = ''
loop do # main loop
  loop do
    print "enter first number: "
    a = gets.chomp.to_f

    if valid_number?(a)
      break
    else
      puts "that does not look like a valid number"
    end
  end

  loop do
    print "enter second number: "
    b = gets.chomp.to_f

    if valid_number?(b)
      break
    else
      puts "that does not look like a valid number"
    end
  end

  op = ''
  loop do
    print "enter +, -, * or / operation character: "
    op = gets.chomp

    if %w(+ - * /).include? op
      break
    else
      puts "*error*: not a correct math operator"
    end
  end

  result = case op
  when '+'
    a + b
  when '-'
    a - b
  when '*'
    a * b
  when '/'
    a / b
  else
    puts 'error from case statement'
  end

  puts result

  print "do you want to do another calcuation? (y): "
  go = gets.chomp.downcase
  break if go != 'y'
end
