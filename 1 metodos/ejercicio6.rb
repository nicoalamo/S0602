# Un método puede llamar a otros métodos, modifica el siguiente código
# para que al llamar a un sólo método se imprima:
#  *****
#  *****
#  *****
#  *****
#  *****

def draw_line(size)
  puts '*' * size
end

def draw_lines(lines, size)
  lines.times do
    draw_line(size)
  end
end

draw_lines(3, 8)
