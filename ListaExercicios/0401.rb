print "Insira a distancia da primeira cidade: "
cidade1 = gets.to_i
print "Insira a distancia da segunda cidade: "
cidade2 = gets.to_i
print "Insira a velocidade média do carro: "
velocidade = gets.to_i

distancia = cidade1 - cidade2

if cidade1 < cidade2
    distancia = cidade2 - cidade1
end

puts "Velocidade media do carro: #{velocidade}km/h"
puts "Distancia entre as cidades: #{distancia}km"
tempo1 = (cidade1.to_f/velocidade.to_f)
tempo2 = (cidade2.to_f/velocidade.to_f)
puts "Do ponto atual até a primeira cidade: #{tempo1} horas"
puts "Do ponto atual até a segunda cidade: #{tempo2} horas"
