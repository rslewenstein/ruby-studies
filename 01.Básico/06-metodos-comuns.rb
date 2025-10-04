### 1. each
# Percorre a coleção e executa algo para cada elemento, mas não retorna um novo array (retorna o próprio array).
# C#: foreach (var n in numeros) { ... }

numeros = [1, 2, 3, 4, 5]

numeros.each do |n|
  puts "Número: #{n}"
end
# Saída:
# Número: 1
# Número: 2
# Número: 3
# Número: 4
# Número: 5

### 2. map
# Percorre a coleção e transforma cada elemento, retornando um novo array.
# C# (LINQ): numeros.Select(n => n * 2).ToList();

numeros = [1, 2, 3, 4]

dobrados = numeros.map { |n| n * 2 }
puts dobrados.inspect
# => [2, 4, 6, 8]

### 3. select
# Filtra os elementos de acordo com a condição → mantém os que retornam true.
# C#: numeros.Where(n => n % 2 == 0).ToList();

numeros = [1, 2, 3, 4, 5, 6]

pares = numeros.select { |n| n.even? }
puts pares.inspect
# => [2, 4, 6]

### 4. reject
# É o oposto de select: remove os elementos que atendem à condição.
# C# (não tem reject, mas dá pra simular com Where invertido):
# numeros.Where(n => !(n % 2 == 0)).ToList();

numeros = [1, 2, 3, 4, 5, 6]

impares = numeros.reject { |n| n.even? }
puts impares.inspect
# => [1, 3, 5]

### 5. reduce (ou inject)
# Usado para acumular valores (somar, multiplicar, reduzir a um único valor).
# C# (LINQ): numeros.Aggregate(0, (acc, n) => acc + n);

numeros = [1, 2, 3, 4]

soma = numeros.reduce(0) { |acumulador, n| acumulador + n }
puts soma
# => 10

# Outro exemplo: fatorial de 5:

fatorial = (1..5).reduce(1) { |acumulador, n| acumulador * n }
puts fatorial
# => 120

