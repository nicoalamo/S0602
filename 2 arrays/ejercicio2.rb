# Dado el array:
# 1. Eliminar el último elemento.
# 2. Eliminar el primer elemento.
# 3. Eliminar el elemento que se encuentra en la posición media,
#    si el arreglo tiene un número par de elementos entonces remover
#    el que se encuentre en la mitad izquierda, ejemplo:
#    en el arreglo [1,2,3,4] se removería el elemento 2.
# 4. Borrar el último elemento mientras ese número sea distinto a 1.
# 5. Utilizando un arreglo vacío auxiliar y operaciones de push y pop:
#    invertir el orden de los elementos en un arreglo.

a = [1,2,3,9,1,5,2,3,6,6]

puts "----Ej1----"

a.pop
puts a

puts ""
puts "----Ej2----"

a.shift
puts a

puts ""
puts "----Ej3----"
len = a.length
mid=len/2

mid -= 1 if len.even?

puts "Largo = #{len}"
puts "Mid = #{mid}"

a.delete_at(mid)
puts a

puts ""
puts "----Ej4-----"

len = a.length
last = len -1
puts "Largo = #{len}"
puts "Last = #{last}"

a.pop if a[last] != 1

puts a

puts ""
puts "----Ej5-----"

len = a.length
puts "Largo de A = #{len}"
puts "Arreglo A:"
puts a

b=[]

len.times do |i|
  b.push(a[len-1-i])
end

lenb = b.length

puts ""
puts "Largo de B = #{lenb}"
puts "Arreglo B:"
puts b
