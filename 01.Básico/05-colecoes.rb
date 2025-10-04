
## 1. Arrays ([])
# Um Array em Ruby é uma lista ordenada que pode guardar qualquer tipo de objeto (strings, números, booleanos, até outros arrays).

### Criando arrays:
# Array vazio
lista = []

# Array com elementos
numeros = [10, 20, 30, 40]

# Array com tipos mistos
misturado = [1, "Rafael", true, 3.14]

### Acessando elementos:
numeros = [10, 20, 30, 40]

puts numeros[0]   # 10 (primeiro elemento)
puts numeros[-1]  # 40 (último elemento)
puts numeros[1..2] # [20, 30] (intervalo)

### Métodos comuns:
numeros = [1, 2, 3, 4, 5]

puts numeros.length     # 5
puts numeros.empty?     # false
puts numeros.include?(3) # true

numeros.push(6)         # adiciona no fim
numeros << 7            # outra forma de adicionar
puts numeros.inspect    # [1, 2, 3, 4, 5, 6, 7]

numeros.pop             # remove o último
numeros.shift           # remove o primeiro
numeros.unshift(0)      # adiciona no começo

# Iterar
numeros.each do |n|
  puts "Número: #{n}"
end

# Map (transforma)
dobrados = numeros.map { |n| n * 2 }
puts dobrados.inspect
numeros = [1, 2, 3, 4, 5]

puts numeros.length     # 5
puts numeros.empty?     # false
puts numeros.include?(3) # true

numeros.push(6)         # adiciona no fim
numeros << 7            # outra forma de adicionar
puts numeros.inspect    # [1, 2, 3, 4, 5, 6, 7]

numeros.pop             # remove o último
numeros.shift           # remove o primeiro
numeros.unshift(0)      # adiciona no começo

# Iterar
numeros.each do |n|
  puts "Número: #{n}"
end

# Map (transforma)
dobrados = numeros.map { |n| n * 2 }
puts dobrados.inspect


## 2. Hashes ({ chave: valor })
# Um Hash é como um dicionário (key-value pairs).

## Criando hashes:
# Forma moderna (símbolos como chave)
pessoa = { nome: "Rafael", idade: 30 }

# Forma clássica
carro = { "marca" => "Ford", "ano" => 2020 }

## Acessando valores:
pessoa = { nome: "Rafael", idade: 30 }

puts pessoa[:nome]   # "Rafael"
puts pessoa[:idade]  # 30


## Adicionando e removendo:
pessoa[:cidade] = "São Paulo"   # adiciona
pessoa.delete(:idade)           # remove

puts pessoa.inspect

## Métodos úteis:
carro = { marca: "Ford", ano: 2020, cor: "preto" }

puts carro.keys    # [:marca, :ano, :cor]
puts carro.values  # ["Ford", 2020, "preto"]

# Iterar
carro.each do |chave, valor|
  puts "#{chave}: #{valor}"
end
