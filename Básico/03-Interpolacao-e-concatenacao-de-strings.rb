# 1. Interpolação
# Funciona quando usamos aspas duplas (") ou heredoc.
# Dentro da string, #{expressão} é substituído pelo valor.

nome = "Rafael"
idade = 30

# Interpolação simples
puts "Meu nome é #{nome} e tenho #{idade} anos."
# => "Meu nome é Rafael e tenho 30 anos."

# Interpolando expressões
puts "Ano que vem terei #{idade + 1} anos."
# => "Ano que vem terei 31 anos."

# Dentro de métodos
puts "Meu nome tem #{nome.length} letras."
# => "Meu nome tem 6 letras."


# 2. Concatenação de Strings

# Existem várias formas:
### a) Usando +

nome = "Rafael"
sobrenome = "Soares"

puts nome + " " + sobrenome
# => "Rafael Soares"

### b) Usando << (shovel operator)
# Adiciona ao final da string (modifica a string original).
texto = "Olá"
texto << ", mundo!"
puts texto
# => "Olá, mundo!"

### c) Usando concatenação com variáveis diferentes
mensagem = "Olá " + nome
puts mensagem
# => "Olá Rafael"

### d) Usando interpolação (forma mais comum)
puts "Olá #{nome} #{sobrenome}"
# => "Olá Rafael Soares"
