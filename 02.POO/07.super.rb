### 4. super
# Permite chamar o método da superclasse dentro da sobrescrita.

class Funcionario
  def initialize(nome)
    @nome = nome
  end

  def apresentar
    "Meu nome é #{@nome}"
  end
end

class Gerente < Funcionario
  def initialize(nome, departamento)
    super(nome)           # chama o initialize da superclasse
    @departamento = departamento
  end

  def apresentar
    "#{super} e trabalho no departamento #{@departamento}."
  end
end

g = Gerente.new("Rafael", "TI")
puts g.apresentar
# => "Meu nome é Rafael e trabalho no departamento TI."
