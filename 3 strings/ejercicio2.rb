# Construir un arreglo de los nombres de todos sus compañeros y en base a él:
# 1. Imprimir todos los elementos que excedan más de 5 caracteres.
# 2. Crear un arreglo nuevo con todos los elementos en minúscula.
# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.


compañeros = ["Juanito", "Pedro", "Diego", "José", "Miguel", "Nicolás"]

puts '------------Ej1-------------'

compañeros.each do |value|
  puts value if value.length > 5
end

puts '------------Ej2-------------'

nuevo_arreglo =[]

compañeros.each_with_index do |value, index|
  nuevo_arreglo.push(value.downcase)
end

puts nuevo_arreglo

puts '------------Ej3-------------'

def arreglo_caracteres(arreglo)

  arreglo_num = []

  arreglo.each_with_index do |value, index|
    arreglo_num.push(value.length)
  end

  arreglo_num
end

b = arreglo_caracteres(compañeros)
puts b
