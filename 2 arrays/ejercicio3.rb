# Dado el array:
# 1. Crear un método para eliminar todos los números pares del arreglo.
# 2. Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each
# 3. Crear un método para obtener el promedio de un arreglo.
# 4. Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts '----Ej1----'

len = a.length
puts "Largo de A= #{len}"
puts 'Arreglo A:'
puts a

for i in 0..(len - 1) do
  a.delete_at(len - i) if a[len - i].to_i.even?
end

puts ''
puts 'Nuevo Arreglo A:'
puts a

puts '----Ej2----'

puts 'Arreglo A:'
puts a

suma = 0
a.each_with_index do |j, k|
  suma += j
end


puts "Suma: #{suma}"

puts '----Ej3----'

#PASAR TODO A METODOS!
