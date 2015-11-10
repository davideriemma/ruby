#encoding: utf-8
newT = Time.new
birth1 = gets.chomp
birth2 = gets.chomp
while birth2.to_i > 12 
puts ' immetti un mese che esista!!'
birth2 = gets.chomp
end
birth3 = gets.chomp
while birth3.to_i > 31
puts 'non esiste un mese così lungo'
birth3 = gets.chomp
end
def bisesitle birth1 
if birth1.to_i%4 == 0 or birth1.to_i%400 == 0
return true
else 
return false
end
end
def birthday birth3, birth2
conta30 = [11,02,04,06,9]
conta31 = [01,01,05,07,8,10,12]
if birth3.to_i == 30 or birth3.to_i == 31 #anche qui le conversioni sono trial
compar= conta30.include?(birth2.to_i)
compar2= conta31.include?(birth2.to_i)
if compar == true and birth3.to_i > 30
puts 'non esiste un mese del genere'
birth2 = gets.chomp
birth3 = gets.chomp
birthday birth3,birth2
end
if compar2 == true and birth3.to_i > 31
puts ' on esiste un mese del genere'
birth2 = gets.chomp
birth3 = gets.chomp
birthday birth3, birth2
end
end
end
def bisrec bisesitle
if bisesitle == 'true' and birth2.to_i == conta30[1].to_i
if birth3 >= 30 
puts ' non esiste un bisestile di 30'
birth3 = gets.chomp
bisrec bisestile
end
elsif bisesitle == 'false' and birth2.to_i ==conta30[1].to_i
if birth3 >= 29
puts ' febbraio ha solo 28 giorni'
birth3 = gets.chomp
bisrec bisestile
end
end
end
bisesitle birth1
bisrec bisesitle
dtbirth = Time.mktime(birth1.to_i,birth2.to_i,birth3.to_i)
yrlive = dtbirth.to_i - newT.to_i
puts 'spank!' * yrlive.to_i