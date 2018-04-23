def count_words(file)
  file = File.open(file, 'r')
  data = file.readlines
  puts data.count
  file.close
end
count_words('movies.txt')
