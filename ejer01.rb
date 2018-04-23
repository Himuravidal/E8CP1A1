def create_index(word1, word2)
  word1 = "<p> #{word1}  </p>"
  word2 = "<p> #{word2}   </p>"
  file = File.open('index.html', 'w')
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
  file.close
end

list = ['rojo', 'blaco', 'azul']
add_list(list)


def add_color(color)
  back_color = "style= 'background-color:#{color}'"
  file = File.open('index.html', 'r')
  lines = file.readlines
  new_lines = lines.map do |line|
    if line[1] == 'p'
      print line.split('<p')
      line = '<p '+ back_color + line.split('<p')[1]
    else
      line
    end
  end
  file.close
  file = File.open('index.html', 'w')
  file.puts new_lines
  file.close
end
add_color('green')
