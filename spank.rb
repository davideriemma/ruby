#encoding: utf-8
newT = Time.new

def get_integer_input
  gets.chomp.to_i
end

def bisesitle(birth1)
  (birth1 % 4) == 0 || (birth1 % 400) == 0
end

def birthday(birth3, birth2)
  conta30 = [11,02,04,06,9]
  conta31 = [01,01,05,07,8,10,12]
  if birth3 == 30 || birth3 == 31 #anche qui le conversioni sono trial
    compar = conta30.include?(birth2)
    compar2 = conta31.include?(birth2)
    if compar == true && birth3 > 30
      puts 'non esiste un mese del genere'
      birth2 = get_integer_input
      birth3 = get_integer_input
      birthday(birth3, birth2)
    end
    if compar2 == true && birth3 > 31
      puts ' on esiste un mese del genere'
      birth2 = get_integer_input
      birth3 = get_integer_input
      birthday(birth3, birth2)
    end
  end
end

def bisrec(bisesitle)
  if bisesitle == 'true' && birth2 == conta30[1]
    if birth3 >= 30
      puts ' non esiste un bisestile di 30'
      birth3 = get_integer_input
      bisrec(bisestile)
    end
  elsif bisesitle == 'false' && birth2 == conta30[1]
    if birth3 >= 29
      puts ' febbraio ha solo 28 giorni'
      birth3 = get_integer_input
      bisrec(bisestile)
    end
  end
end

birth1 = get_integer_input
birth2 = get_integer_input
while birth2 > 12
  puts ' immetti un mese che esista!!'
  birth2 = get_integer_input
end
birth3 = get_integer_input
while birth3.to_i > 31
  puts 'non esiste un mese così lungo'
  birth3 = get_integer_input
end

bisesitle(birth1)
bisrec(bisesitle)
dtbirth = Time.mktime(birth1, birth2, birth3)
yrlive = dtbirth.to_i - newT.to_i
puts 'spank!' * yrlive
