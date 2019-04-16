def procuraCopa (ano) #criação de "Função" em Ruby
    case ano #Switch Case em Ruby
        when 1895..2005 #É possivel determinar comandos à multiplos valores entre dois numeros utilizando ..
            "Não lembro... :)"
        when 2006
            "Alemanha"
        when 2010
            "África do Sul"
        when 2014
            "Brasil"
    end
end

puts procuraCopa(2010)