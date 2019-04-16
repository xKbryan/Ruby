class Conta
    def transfere(valor, argumentos)
        destino = argumentos[:para]
        data = argumentos[:em]
    end
end

aluno = Conta.new
escola = Conta.new

puts aluno.transfere( 50.00, {para: escola, em: Time.now} )