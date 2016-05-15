print 'Kokio skaiciaus faktoriala apskaiciuot: '
a = gets.chomp.to_i
n = a
fakt = 1
begin
  if n == 0
    break
  end
  fakt = fakt * n
  n -= 1
end while n>0

puts 'Variant nr1'
puts fakt

def Fakt n
  fakt = 1
  if  n == 0
    return fakt
  end
  fakt = n * Fakt(n-1)
  return fakt
end

puts 'Variant nr2'
puts Fakt(a)