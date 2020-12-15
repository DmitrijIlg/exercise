def Fakt(n)
  fakt = 1
  begin
    if n == 0
      break
    end
    fakt = fakt * n
    n -= 1
  end while n>0
  return fakt
end

e = 1.0

2000.times {|x|
  e+=(1.0/Fakt(x+1))
}

puts "Galutinis: #{e}"


m = 1.0
a = 3
b = 5

1000000000.times {|x|
  m = m - (1.0/a) + (1.0/b)
  a = a + 4
  b = b + 4
}

pi = 4 * m

puts "Pi skaicius: #{pi}"
puts 'test'

