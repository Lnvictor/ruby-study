def fibo(position)
	if position <= 2 then
		return 1
	else
		return fibo(position - 1) + fibo(position - 2)
	end
end

puts "Digite a posição da sequancia de fibonacci: \n"
position = gets.to_i
puts fibo(position)
