#O método initialize é usado para executar quando um objeto é criado. Os initalizer são métodos privados e podem receber parâmetros
class Pessoa
    def initialize(nome) 
        puts "Criando a pessoa: #{nome}"
    end
end
Pessoa.new("João")
