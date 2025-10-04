# Ruby é orientado a objetos: praticamente tudo é um objeto (números, strings, arrays, até nil).

### Criando uma Classe
# No Ruby, usamos class para declarar uma classe. Dentro dela, podemos definir atributos e métodos.

class Pessoa
  # inicializador (construtor)
  def initialize(nome, idade)
    @nome = nome       # variável de instância
    @idade = idade
  end

  # método de instância
  def apresentar
    "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
  end
end

### Criando um Objeto
# Podemos instanciar a classe com ClassName.new.

p1 = Pessoa.new("Rafael", 30)
puts p1.apresentar
