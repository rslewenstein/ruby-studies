
### 1. condição comum
animal = "cachorro"

if animal == "cachorro"
    puts "melhor amigo do homem!"
else
    puts "vacilão!"
end

### condição com eql
if !animal.eql?("cachorro")
    puts "Chega mais!"
else
    puts "vacilão!"
end

### expressão ternária
# condição ? true : false
puts animal.eql?("cachorro") ? "Vc é gente boa!" : "Pai de pet!"