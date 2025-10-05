# O módulo Enumerable dá superpoderes para coleções (map, select, reject, etc).
# Qualquer classe que implemente each pode usar Enumerable.

class Colecao
  include Enumerable

  def initialize(valores)
    @valores = valores
  end

  def each(&bloco)
    @valores.each(&bloco)
  end
end

c = Colecao.new([1, 2, 3, 4])
puts c.map { |x| x * 2 }   # [2, 4, 6, 8]
puts c.select(&:even?)     # [2, 4]
