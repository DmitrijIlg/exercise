print 'Iveskite skaiciu: '
n = gets.chomp.to_i
a = [1, 1]

n.times {|x|
  b = a[x] + a[x+1]
  a << b
}
print a
puts
a.length.times {|x|
  puts '*'*a[x]
}
