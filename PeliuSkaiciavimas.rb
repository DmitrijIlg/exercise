def Skaiciavimas(kelinta, l, peles)
  x = 1

  #count2 = 1
  begin
    if x == kelinta
      #puts "istrinta #{peles[l]}"
      peles.delete_at(l)
      x = 0
      l -= 1
    end
    count = peles.length
    x += 1
    l += 1
    if l >= count
      l = 0
    end
    #puts count2
    #puts "^^^^^^^^^"
    #count2 += 1
  end while count > 1

  #puts "--------------------"
  #puts "#{peles} pele"
  #puts "--------------------"
  return peles[0]
end

peles = []

print 'Iveskite peliu skaiciu: '
peliu_skaicius = gets.chomp.to_i
print 'Kas kelinta pele suvalgo: '
kelinta = gets.chomp.to_i

puts peliu_skaicius
puts kelinta

peliu_skaicius.times {|x| peles << x+1}

print peles
puts




m = 0
while m < peliu_skaicius do
  puts "**************************************************************"
  puts "Ciklas Nr: #{m}"
  peles_valgimui = []
  peles.each {|x| peles_valgimui << x}
  #print "Peles:          #{peles}"
  #puts
  #print "Peles valgimui: #{peles_valgimui}"
  #puts
  #puts "Kelinsta pele valgo: #{kelinta}"
  g=Skaiciavimas(kelinta, m, peles_valgimui)
  #puts "Pele kuri liko: #{g}"
  m += 1
  #print "Peles: #{peles}"
  #puts
  #print "Peles valgimui: #{peles_valgimui}"
  #puts
  puts "**************************************************************"

  if peles[peles.length-1] == g
    puts "Pele kuri liko: #{g}"
    puts "Pradet skaiciuot reikia nuo #{peles[m-1]}"
    break
  end
end
