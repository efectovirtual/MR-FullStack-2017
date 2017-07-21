

# # h = a.map.with_index { |x, i| [i, x] }.to_h
# h = a.map.with_index { |x, i| if i == 0 : [i, x] }.to_h


# h[0] = h[0].to_i

# puts h


# h = {}
# lines.each_with_index do |line, i|
#   quantity, item, price = line.match(/^(\d+) (.*) at (\d+\.\d+)$/).captures
#   h[i+1] = {quantity: quantity.to_i, item: item, price: price.to_f}
# end



# File.open("tareas2.txt", "r") do |f|
#   n,h = 0,{}
#   f.each_line do |line|
#     n += 1
#     line =~ /(\d) (.*) at (\d*\.\d*)/
#     h[n.to_s] = { :id => $1.to_i, :name => $2, :done => $3 }
#   end
# end


# File.open("tareas2.txt", "r") do |f|
# 	h = {}
# 	lines.each_with_index do |line, i|
# 	  quantity, item, price = line.match(/^(\d+) (.*) at (\d+\.\d+)$/).captures
# 	  h[i+1] = {quantity: quantity.to_i, item: item, price: price.to_f}
# 	end
# end

file = File.open("logzT09.txt")
	rows = []
	file.each_line do |line|
	rows << line.split(" ")[2]
end
p rows 








