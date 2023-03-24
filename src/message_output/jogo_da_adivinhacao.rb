puts "Por favor, informe o seu nome: "
name = gets().chomp

puts "\n\nMuito bem senhor %s, vamos começar o jogo!" % [name]
puts "\nDigite o numero:"

choosed_number = gets.to_i
generated_number = 123

if choosed_number == generated_number then
    puts "Parabéns, voce acertou o número"
else
    puts "Voce errou"
end