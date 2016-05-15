print 'Skaicius n: '
n = gets.chomp.to_i
print 'Skaicius k: '
k = gets.chomp.to_i


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

razm = Fakt(n)/Fakt(n-k)

socet = Fakt(n)/( Fakt(k)*Fakt(n-k) )

puts "Razm: #{razm}"
puts "Razm: #{socet}"