### 1. Método simples

def soma x, y, z # pode ser utilizado ou nao os parenteses 
    return x + y + z
end 

puts soma(3, 4, 3) 

### 2. Interação com o console:

## Método sem parâmetro
def imprimir_na_tela()
    puts "Qual o seu nome?"
    nome = gets.chomp
    puts "Qual a sua idade?"
    idade = gets.chomp.to_i # to_i para converter para inteiro
    return puts "Olá #{nome}! Você tem #{idade} anos, correto?"
end    

imprimir_na_tela()

## Método com parâmetro:
puts "Qual o seu nome?"
nome = gets.chomp
puts "Qual a sua idade?"
idade = gets.chomp.to_i # to_i para converter para inteiro


def imprimir_na_tela(n, i)
    return puts "Olá #{n}! Você tem #{i} anos, correto?"
end
imprimir_na_tela(nome, idade)
