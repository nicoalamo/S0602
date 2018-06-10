=begin
Se tiene un arreglo de productos, se pide que el output sea:
<div class='product'><p> Producto1 </p></div>
<div class='product'><p> Producto2 </p></div>
<div class='product'><p> Producto3 </p></div>
<div class='product'><p> Producto4 </p></div>
=end

products = ["Producto1", "Producto2", "Producto3", "Producto4"]

html = ''
products.each do |value|
  html += "<div class='product'><p> "
  html += value
  html += " </p></div>\n"
end

puts html
