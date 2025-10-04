# Em Ruby, quando falamos de atributos, estamos falando de formas de acessar 
# e modificar as variáveis de instância (@variaveis) de uma classe.
# Por padrão, as variáveis de instância (@nome, @idade) não são acessíveis 
# diretamente fora da classe. Para resolver isso, Ruby fornece três macros:

### attr_reader
# Cria somente o getter (leitura).
# Você pode ler o valor, mas não alterar diretamente.

class Pessoa
  attr_reader :nome  # só leitura

  def initialize(nome)
    @nome = nome
  end
end

p1 = Pessoa.new("Rafael")
puts p1.nome   # "Rafael"
# p1.nome = "João"  # ❌ Erro! Não existe setter

### attr_writer
# Cria somente o setter (escrita).
# Você pode alterar, mas não ler diretamente.

class Pessoa
  attr_writer :nome  # só escrita

  def initialize(nome)
    @nome = nome
  end
end

p1 = Pessoa.new("Rafael")
p1.nome = "João"     # ✅ permitido
# puts p1.nome       # ❌ Erro! Não existe getter

### attr_accessor
# Cria getter e setter automaticamente.
# É o mais usado no dia a dia.

class Pessoa
  attr_accessor :nome, :idade  # leitura e escrita

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

p1 = Pessoa.new("Rafael", 30)

puts p1.nome     # getter → "Rafael"
p1.nome = "João" # setter
puts p1.nome     # getter → "João"

puts p1.idade    # getter → 30
p1.idade = 31    # setter
puts p1.idade    # getter → 31

### Comparação com C#
# Se a gente comparar com C#, fica assim:

# class Pessoa {
#     public string Nome { get; set; } // equivalente ao attr_accessor
#     public int Idade { get; }        // equivalente ao attr_reader
#     public int Peso { private get; set; } // equivalente ao attr_writer (aproximação)
# }
