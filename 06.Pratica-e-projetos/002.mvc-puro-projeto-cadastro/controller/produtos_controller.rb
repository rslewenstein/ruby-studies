require_relative '../model/produto'
require_relative '../view/produtos_view'

class ProdutosController
    def initialize
        @produtos = []
        @view = ProdutosView.new
    end
    
    def listar
        @view.mostrar_lista(@produtos)
    end 
    
    def adicionar
        dados = @view.solicitar_dados
        produto = Produto.new(dados[:nome], dados[:preco])
        @produtos << produto
        @view.mensagem_sucesso
    end 
end       