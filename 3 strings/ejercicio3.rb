# Dado los arrays, obtener:
# 1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado).
# 2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado).
# 3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b).
# 4. Intercalar los elementos: [[1, "lunes"], [2, "martes"], [3, "miércoles"], [9, "jueves"], [12, "viernes"], [31, "sábado"], ["domingo", "domingo"]]

a = [1, 2, 3, 9, 12, 31, 'domingo']
b = %w[lunes martes miércoles jueves viernes sábado domingo]

puts '-----------Ej1------------'

puts ''
puts 'Arreglo A:'
puts a

puts ''
puts 'Arreglo B:'
puts b

c = a + b

puts ''
puts 'Arreglo C (A+B):'
puts c

puts ''
puts '-----------Ej2------------'

d1 = []
d2 = []
d3 = []

a.each_with_index do |value_a, index|
  d1.push(value_a)
  if a[index] != b[index]
    d2.push(b[index])
  end
end

d3 = d1 + d2

puts 'Arreglo D (Union de A y B):'
puts d3

puts ''
puts '-----------Ej3------------'

e = []

a.each_with_index do |value_a, index|
  if a[index] == b[index]
    e.push(value_a)
  end
end

puts 'Arreglo E (Intersección de A y B):'
puts e

puts ''
puts '-----------Ej4------------'

f = []

a.each_with_index do |value_a, index|
  f[index] = [value_a, b[index]]
end

puts 'Arreglo F (Union de A y B):'
puts f
