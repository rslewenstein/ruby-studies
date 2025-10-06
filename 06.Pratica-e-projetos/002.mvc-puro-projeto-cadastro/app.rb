require_relative 'controller/produtos_controller'

controller = ProdutosController.new

loop do 
    puts "\n1 - Listar produtos"
    puts "2 - Adicionar produto"
    puts "0 - Sair"
    print "Escolha uma opção: " 
    opcao = gets.chomp.to_i

    case opcao
    when 1
        controller.listar
    when 2
        controller.adicionar
    when 0
        puts "Saindo..."
        break
    else
        puts "Opção inválida!"
    end
end                    