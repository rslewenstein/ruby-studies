### 2. Polimorfismo
# Mesmo método pode ter comportamentos diferentes dependendo da classe do objeto.
# Em Ruby, é natural pelo duck typing (não precisa declarar interface).

class Animal
  def falar
    "Som genérico"
  end
end

class Cachorro < Animal
end

class Gato < Animal
  def falar
    "Miau"
  end
end

animais = [Cachorro.new, Gato.new]

animais.each do |animal|
  puts animal.falar
end
# Saída:
# "Som genérico"
# "Miau"
