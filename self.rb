class Conta #Self é análogo do comando this em C# e Java, usado para referenciar o proprio objeto
    def transfere_para(destino, quantia)
        debita quantia
        #mesmo que self.debita(quantia)
        destino.deposita quantia
    end
end