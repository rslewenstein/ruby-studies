def soma(x,y)
    return puts "O resultado da soma é: #{x + y}"
end

def subtracao(a, b)
    return puts "O resultado da subtração é: #{a - b}"
end

def multiplicacao(a, b)
    return puts "O resultado da multiplicação é: #{a * b}"
end

def divisao(a, b)
    begin
    resultado = a / b
    rescue ZeroDivisionError => e
        puts "Erro: #{e.message}"
    else    
        puts puts "O resultado da divisão é: #{resultado}"
    ensure
        "Operação finalizada!"
    end
end

soma(10, 5)
subtracao(20, 2)
multiplicacao(5,5)
divisao(100, 20)