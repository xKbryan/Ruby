pessoa = Object.new() #Criação de objetos. Ruby é puramente orientado a objetos!

def pessoa.vai(lugar)
    "indo para #{lugar}"
end

def pessoa.troca(roupa, lugar = 'banheiro') #É possível criar um padrão nos parâmetros, caso estiver nulo
    "trocando de #{roupa} no #{lugar}"
end

puts pessoa.vai("Casa")

#puts pessoa.troca("Sapatos")

puts pessoa.troca("Sapatos", "Quarto")
