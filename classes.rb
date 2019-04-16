class Pessoa #Criação de classes em Ruby
    def fala
        puts "Sei falar"
    end

    def troca(roupa, lugar)
        puts "Trocando de #{lugar} no #{roupa}"
    end
end

pessoa = Pessoa.new #Criando um objeto utilizando a Classe 'Pessoa' e seus métodos (fala/troca)

pessoa.fala()
pessoa.troca("sapatos", "quarto")

class Pessoa #Em Ruby, as classes são abertas, ou seja, pode ser alterada em qualquer lugar do programa sem que dê erro
    def fala
        puts "Errei o lugar!"
    end

    def troca(roupa, lugar)
        puts "Trocando de #{roupa} no #{lugar}"
    end

    def vai(lugar)
        puts "Logo vou para #{lugar}"
    end
end

pessoa.fala()
pessoa.troca("sapatos", "quarto")
pessoa.vai("escola")