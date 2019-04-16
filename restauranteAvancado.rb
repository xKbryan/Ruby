class Restaurante
    attr_accessor :nota #Esta linha serve para refatorar o método 'nota'

    def initialize(nome)
        puts "Criando um novo restaurante: #{nome}"
        @nome = nome
    end
    
    def qualifica(msg = 'Obrigado')
        puts "A nota do restaurante #{@nome} foi: #{@nota}. #{msg}"
    end

=begin
    def nota(nota)
        @nota = nota
    end

    def nota
        @nota
    end
=end

end

restaurante1 = Restaurante.new("Fasano")
restaurante2 = Restaurante.new("Fogo de Chão")

restaurante1.nota = 10
restaurante2.nota = 1

restaurante1.qualifica
restaurante2.qualifica("Comida ruim, eca")