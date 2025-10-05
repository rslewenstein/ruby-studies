
# Ruby usa o bloco begin/rescue/ensure para capturar e tratar esses erros.
# Se não tratarmos, o programa para imediatamente.

## Estrutura básica.
begin
  # código que pode gerar erro
rescue TipoDoErro => e
  # tratamento do erro
ensure
  # sempre executa (opcional)
end


## Exemplo 1: Tratando erro de divisão por zero
begin
  resultado = 10 / 0
rescue ZeroDivisionError => e
  puts "Erro: #{e.message}"   # => "Erro: divided by 0"
ensure
  puts "Operação finalizada" # sempre executa
end

## Exemplo 2: Tratando múltiplos erros
begin
  arquivo = File.open("inexistente.txt")
rescue ZeroDivisionError
  puts "Erro de divisão"
rescue Errno::ENOENT
  puts "Arquivo não encontrado"
rescue => e
  puts "Erro genérico: #{e.class} - #{e.message}"
ensure
  puts "Sempre roda no final"
end

## Exemplo 3: Usando else
# O else só roda se nenhuma exceção acontecer.
begin
  resultado = 10 / 2
rescue ZeroDivisionError
  puts "Não pode dividir por zero"
else
  puts "Divisão bem-sucedida: #{resultado}"
ensure
  puts "Fim do bloco"
end

## Exemplo 4: Criando exceções personalizadas
# podemos criar sua própria classe de erro (herdando de StandardError):
class SaldoInsuficienteError < StandardError; end

def sacar(saldo, valor)
  raise SaldoInsuficienteError, "Saldo insuficiente!" if valor > saldo
  saldo - valor
end

begin
  puts sacar(100, 200)
rescue SaldoInsuficienteError => e
  puts "Erro no saque: #{e.message}"
end
