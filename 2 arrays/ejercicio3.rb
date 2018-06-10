# Dado el array:
# 1. Crear un método para eliminar todos los números pares del arreglo.
# 2. Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each
# 3. Crear un método para obtener el promedio de un arreglo.
# 4. Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts '----Ej1----'

def eliminar_pares(arreglo)
  len = arreglo.length
  for i in 0..(len - 1) do
    arreglo.delete_at(len - i) if arreglo[len - i].to_i.even?
  end
  arreglo
end

len = a.length
puts "Largo de A= #{len}"
puts 'Arreglo A:'
puts a

a = eliminar_pares(a)

puts ''
puts 'Nuevo Arreglo A:'
puts a

puts '----Ej2----'

puts 'Arreglo A:'
puts a

def sumar_elementos(arreglo)
  suma = 0
  arreglo.each_with_index do |j, _k|
    suma += j
  end
  suma
end

suma = sumar_elementos(a)

puts "Suma: #{suma}"

puts '----Ej3----'

def promediar_arreglo(arreglo)
  sum = sumar_elementos(arreglo)
  length = arreglo.length
  promedio = sum.to_f / length.to_f
  promedio = promedio.to_f
  promedio
end

average = promediar_arreglo(a)

def decimal(num, decimals)
  div = 10**decimals
  num *= div
  num = num.to_i
  num = num.to_f
  num /= div
  num
end

puts "Promedio1: #{average}"

average = decimal(average, 2)

puts "Promedio2: #{average}"

puts '----Ej4----'

def incrementar(arreglo, unidades)
  arreglo.each_with_index do |value, index|
    arreglo[index] = value + unidades
  end
  arreglo
end

puts 'Arreglo A:'
puts a

b = incrementar(a, 1)

puts 'Arreglo B:'
puts b
