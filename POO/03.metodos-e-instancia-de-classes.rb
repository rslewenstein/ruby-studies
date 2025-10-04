
### 1. Métodos de Instância

# Pertencem a um objeto específico (uma instância da classe).
# Para chamá-los, você precisa criar um objeto primeiro.
# Podem acessar variáveis de instância (@variavel).
# Exemplo:

class Pessoa
  attr_accessor :nome

  def initialize(nome)
    @nome = nome
  end

  # método de instância
  def apresentar
    "Olá, meu nome é #{@nome}"
  end
end

p1 = Pessoa.new("Rafael")
puts p1.apresentar
# => "Olá, meu nome é Rafael"

p2 = Pessoa.new("João")
puts p2.apresentar
# => "Olá, meu nome é João"

# Cada instância tem seu próprio estado (@nome) e seu próprio método apresentar.

### 2. Métodos de Classe (estáticos)

# Pertencem à classe, não ao objeto.
# São chamados usando NomeDaClasse.metodo.
# Não podem acessar variáveis de instância diretamente (@variavel), mas podem acessar variáveis de classe (@@) ou constantes.
# Exemplo:

class Pessoa
  @@contador = 0  # variável de classe

  def initialize(nome)
    @nome = nome
    @@contador += 1
  end

  # método de classe
  def self.total_pessoas
    @@contador
  end
end

p1 = Pessoa.new("Rafael")
p2 = Pessoa.new("João")

puts Pessoa.total_pessoas
# => 2

# O método total_pessoas pertence à classe, não a um objeto.

### Comparação C#
# Método de instância → não usa static:

# class Pessoa {
#     public string Nome { get; set; }
#     public string Apresentar() => $"Olá, meu nome é {Nome}";
# }
# var p = new Pessoa { Nome = "Rafael" };
# Console.WriteLine(p.Apresentar());

# Método de classe → static:

# class Pessoa {
#     private static int contador = 0;
#     public Pessoa() { contador++; }
#     public static int TotalPessoas() => contador;
# }
# Pessoa p1 = new Pessoa();
# Pessoa p2 = new Pessoa();
# Console.WriteLine(Pessoa.TotalPessoas());

