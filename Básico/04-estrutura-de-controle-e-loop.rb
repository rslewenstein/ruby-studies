# 1. if
## Executa o bloco se a condição for verdadeira.

idade = 18

if idade >= 18
  puts "Maior de idade"
else
  puts "Menor de idade"
end

# Também pode ser escrito em uma linha (inline):
puts "Maior de idade" if idade >= 18

## 2. unless
# É o oposto do if. Executa o bloco a menos que a condição seja verdadeira.

chovendo = false

unless chovendo
  puts "Pode sair sem guarda-chuva"
else
  puts "Leve o guarda-chuva"
end

# versão inline:
puts "Pode sair sem guarda-chuva" unless chovendo

## 3. case
# Parecido com o switch do C#.

nota = "B"

case nota
when "A"
  puts "Excelente"
when "B"
  puts "Bom"
when "C"
  puts "Regular"
else
  puts "Reprovado"
end

## 4. while
# Executa enquanto a condição for verdadeira.

i = 0
while i < 5
  puts "i = #{i}"
  i += 1
end

## 5. until
#Executa enquanto a condição for falsa (oposto do while).

i = 0
until i == 5
  puts "i = #{i}"
  i += 1
end

## 6. for
#Percorre um intervalo ou coleção.

for i in 1..5
  puts "Número #{i}"
end

## 7. each (C# = foreach)
# Itera sobre arrays e coleções.

numeros = [10, 20, 30]

numeros.each do |n|
  puts "Número: #{n}"
end

## 8. times (C# = for)
# Repete um bloco de código um número fixo de vezes.
5.times do |i|
  puts "Execução #{i}"
end
