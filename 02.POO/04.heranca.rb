### 1. Herança (<)
#Uma classe pode herdar de outra, ganhando métodos e atributos da classe pai.

class Animal
  def falar
    "Som genérico"
  end
end

class Cachorro < Animal
end

dog = Cachorro.new
puts dog.falar
# => "Som genérico" (herdado da classe Animal)
