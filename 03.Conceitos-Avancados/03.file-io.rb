
## Ler arquivo
conteudo = File.read("exemplo.txt")
puts conteudo

## Escrever arquivo
File.open("saida.txt", "w") do |f|
  f.puts "Linha 1"
  f.puts "Linha 2"
end

## Ler linha a linha
File.foreach("exemplo2.txt") do |linha|
  puts "Linha: #{linha}"
end
