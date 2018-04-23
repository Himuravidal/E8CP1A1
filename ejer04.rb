def show_stock_by_product
  lines = File.open('archivo.txt', 'r').readlines.each(&:chomp)
  new_lines = []
    lines.each { |line| new_lines.push(line.split(', ').map(&:chomp)) }

    new_lines.each do |details|
      name = details.shift
      sum = get_sum(details)
    end
end
def get_sum(details)
  suma = 0
  details.each do |ele|
    unless ele == 'NR'
      sum += ele.to_i
    end
  end
    return sum
  end

show_stock_by_product
