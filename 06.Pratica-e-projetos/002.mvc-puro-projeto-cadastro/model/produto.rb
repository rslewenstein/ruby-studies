class Produto
    attr_acessor :nome, :preco

    def initialize(nome, preco)
        @nome = nome
        @preco = preco
    end
end        