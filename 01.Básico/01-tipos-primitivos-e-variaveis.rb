# Ruby é dinamicamente tipado). 
# O tipo é definido automaticamente pelo valor atribuído.
# Tipos primitivos (String, Integer, Float, Boolean, Symbol)


# 1 - Variáveis Locais
# Usadas dentro de métodos, blocos ou escopo atual.
# Sempre começam com letra minúscula ou _.

# Equivalência C#: Variável local dentro de métodos (int idade = 30;)

nome = "Rafael"
idade = 40
_preco = 53.50

puts nome
puts idade
puts _preco


# 2. Variáveis de Instância
# Pertence a cada objeto da classe. 
# Cada instância tem o seu valor próprio.
# Começam com @.
# Equivalência C#: Campo/atributo de instância (private string nome;)

class Pessoa
  def initialize(nome)
    @nome = nome
  end

  def mostrar_nome
    @nome
  end
end

p1 = Pessoa.new("Rafael")
puts p1.mostrar_nome

# 3. Variáveis de Classe
# Compartilhadas entre todas as instâncias da classe.
# Começam com @@.
# Equivalência C#: Campo static (private static int contador;)

class Pessoa
  @@contador = 0

  def initialize(nome)
    @nome = nome
    @@contador += 1
  end

  def self.total
    @@contador
  end
end

Pessoa.new("Rafael")
Pessoa.new("João")

puts Pessoa.total

# 4. Variáveis Globais
# Acessíveis de qualquer lugar do programa.
# Começam com $ (não é muito recomendado usar).
# Equivalência C#: Em C# puro não existe variável global “solta”. 
# O mais próximo seria static em uma classe pública acessível em todo o código.

$versao = "1.0"

def mostrar_versao
  puts $versao
end

mostrar_versao

# 5. Constantes
# Por convenção, usam MAIÚSCULAS.
# Valor que, por convenção, não deve mudar (se mudar Ruby dá warning, mas não proíbe)
# Equivalência C#: const ou readonly

PI = 3.14159
NOME_APP = "MeuSistema"

puts PI
puts NOME_APP
