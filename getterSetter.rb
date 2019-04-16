class Pessoa #Método acessor e modificador, bastante usado em Ruby. Em java: Getter e Setter
    def nome #Acessor / Getter
        @nome
    end
    def nome=(novo_nome) #Modificador / Setter
        @nome = novo_nome
    end
end
pessoa = Pessoa.new
pessoa.nome=("José")
puts pessoa.nome