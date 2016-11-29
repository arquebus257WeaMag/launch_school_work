def reverse!(arr)
  x = arr.size
  y = x - 1
  other = []

  arr.each do |a|
    other << a
  end

  x.times do |b|
    arr[y] = other[b]
    y -= 1
  end
  arr
end

a = [1,2,3,4]
reverse! a
p a
