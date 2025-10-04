### 1. Módulos (module)

# Um módulo é como uma biblioteca de métodos ou constantes.
# Não pode ser instanciado (não dá para criar Module.new).
# Serve para agrupar métodos, constantes ou classes relacionadas.
# Exemplo básico:

module Calculadora
  PI = 3.14159

  def self.somar(a, b)
    a + b
  end

  def self.subtrair(a, b)
    a - b
  end
end

puts Calculadora.somar(10, 5)       # 15
puts Calculadora.subtrair(10, 5)    # 5
puts Calculadora::PI # 3.14159

# Note que usamos self.metodo para criar métodos de módulo “estáticos”,
# acessíveis via Modulo.metodo.

### 2. Mixins (include / extend)

# Ruby não tem herança múltipla, mas permite compartilhar código entre classes usando módulos → mixins.
## a) include
# Inclui métodos como métodos de instância na classe.

module Falante
  def falar
    'Olá!'
  end
end

class Pessoa
  include Falante
end

p1 = Pessoa.new
puts p1.falar # "Olá!"

## b) extend
# Inclui métodos como métodos de classe.

module Falante
  def falar
    'Olá do módulo!'
  end
end

class Robot
  extend Falante
end

puts Robot.falar # "Olá do módulo!"

### 3. Exemplo completo com Mixins
module Transportavel
  def andar
    'Andando...'
  end
end

module Voavel
  def voar
    'Voando...'
  end
end

class Carro
  include Transportavel
end

class Aviao
  include Transportavel
  include Voavel
end

c = Carro.new
a = Aviao.new

puts c.andar  # "Andando..."
puts a.andar  # "Andando..."
puts a.voar   # "Voando..."

# Isso mostra como módulos permitem compartilhar comportamento entre classes diferentes
# sem precisar de herança múltipla.
