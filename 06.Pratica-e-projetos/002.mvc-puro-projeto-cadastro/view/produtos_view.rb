class ProdutosView
    def mostrar_lista(produtos)
        puts "=== Lista de Produtos ==="
        produtos.each do |p|
            puts "Nome: #{p.nome} | Preço: R$ #{'%.2f' % p.preco}"
        end
        puts "========================================="
    end 
    
    def solicitar_dados
        print "Digite o nome do produto: "
        nome = gets.chomp
        print "Digite o preço: 0"
        preco = gets.chomp.to_f
        { nome: nome, preco: preco }
    end 
    
    def mensagem_sucesso
        puts "\u2705 Produto cadastrado com sucesso!"
    end    
end    