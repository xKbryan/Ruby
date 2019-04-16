def procuraCopa (ano)
    if 2006 == ano
        "Alemanha"
    elsif 2010 == ano
        "África do Sul"
    elsif 2014 == ano
        "Brasil"
    elsif 2005 > ano #É possivel utilizar '1895..2005 == ano', porém dá um warning de range
        "Não lembro... :)"
    end
end

puts procuraCopa(2014)