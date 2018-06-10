# El siguiente programa debería mostrar sí o no, sin embargo muestrar error
# Se pide identificar el error y corregirlo.
require 'byebug'

a=4
b=5
def random
  result = [true, false].sample
  result
end
debugger

x = random

a=100
b=200

if x == true
  puts 'sí'
elsif x == false
  puts 'no'
else
  puts 'error'
end
