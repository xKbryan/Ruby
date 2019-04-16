class Pessoa #Atributos são variáveis de instância, em Rubi são sempre privadas e iniciam com @. São Inalteráveis fora da classe
    def muda_nome(novo_nome)
        @nome = novo_nome
    end
    def diz_nome
        puts "meu nome é #{@nome}"
    end
end

pessoa = Pessoa.new
pessoa.muda_nome "João"
pessoa.diz_nome