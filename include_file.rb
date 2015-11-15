#encoding: utf-8

require_relative'layaut'

class Cavolo
 def initialize
  @array = ['salta','balla','danza','canta']
 end
 def broccolo 
  puts 'Attenzione, il programma potrebbe avere effetti diuretici'.center(80)
  Layaut.marcatore
 end
end 
Cavolo.new.broccolo #=> gives error 'undefined method `marcatore' for Layaut:Class (NoMethodError)'
