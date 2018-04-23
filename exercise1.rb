def create_index(word1, word2)
  word1 = "<p> #{word1}  </p>"
  word2 = "<p> #{word2}   </p>"
  file = File.open('index.html', 'w')
  file.puts '<html>
  <head>
    <meta charset="utf-8">
    <title>hola</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>'
  file.puts word1, word2
  file.close
end
create_index('hola', 'mundo')

# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
# arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
# uno de los elementos.
def add_list(list)
  return if list.count.zero?
  file = File.open('index.html', 'a')
  file.puts '<ol>'
  list.each { |ele| file.puts "<li> #{ele} </li>"}
  file.puts '</ol>'
  file.puts '</body>
</html>'
  file.close
end

list = ['rojo', 'blaco', 'azul']
add_list(list)
# Crear un tercer método que además pueda recibir un color. Agregar color de fondo
# a los párrafos.
def add_color(color)
    color = "p { background-color: #{color};} "
    file = File.open('style.css', 'w')
    file.puts color
    file.close
end

add_color("red")
