def compra (*produtos)
    #produtos é uma array. * é chamado de splat
    puts produtos.size
end
compra( "Notebook", "Computador", "Celular" )
