puts "Por favor, insira o diretorio a limpar: "
directory_to_be_cleaned = gets.chomp

puts "Agora, o tempo minimo de acesso para ser deletado (em segundos):"
directory = gets.to_i


puts "\n\nLimpando...\n"


// TODO: Fazer excluir os arquivos, por enquanto so esta printando
Dir.glob(directory_to_be_cleaned).each do |file|
    puts(file)
end

