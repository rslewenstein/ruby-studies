### 3. Sobrescrita de métodos
# Uma subclasse pode redefinir métodos da superclasse.

class Animal
  def falar
    "Som genérico"
  end
end

class Cachorro < Animal
  def falar
    "Au au!"
  end
end

dog = Cachorro.new
puts dog.falar
# => "Au au!" (sobrescreveu o método falar da superclasse)
