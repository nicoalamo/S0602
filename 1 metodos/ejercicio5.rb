# Crear un método que reciba como parámetro dos números enteros positivos
# e imprima los números pares que existen entre esos dos números.

def pares_num(num1, num2)
  for i in (num1 + 1)..(num2 - 1)
    puts i if i.even?
  end
end

pares_num(1, 9)
