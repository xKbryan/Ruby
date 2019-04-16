nome = Array.new
nome << "[#{nome.size}] Bryan"
nome << "[#{nome.size}] Ronaldo"                            #1
nome << "[#{nome.size}] Lucas"
nome << "[#{nome.size}] Leandro"
nome << "[#{nome.size}] Heitor"
nome << "[#{nome.size}] Kaique"                             #5

# Trocar a maneira que cria os livros e usuários, colocando dentro de Classes

livro = Array.new
livro << "[#{livro.size}] Laranja Mecânica"
livro << "[#{livro.size}] Clube da Luta"                    #1
livro << "[#{livro.size}] Jogos Vorazes"
livro << "[#{livro.size}] Divergentes"
livro << "[#{livro.size}] 2001: Uma Odisseia no Espaço"
livro << "[#{livro.size}] Neuromancer"                      #5
livro << "[#{livro.size}] A Cor Púrpura"
livro << "[#{livro.size}] IT: A Coisa"
livro << "[#{livro.size}] O Guia do Mochileiro das Galáxias"
livro << "[#{livro.size}] A Culpa é das Estrelas"
livro << "[#{livro.size}] Fênix: A Ilha"                    #10
livro << "[#{livro.size}] A Pesquisa Pelo Ouro"

#pesquisa = Array.new

def linha()
    puts "-" * 80
end

class Livro
    def initialize(livro)
        @livros = []
        #@i = livro.size-1
        #puts "Livro registrado: #{livro[@i]}"
    end
end

class Cliente
    def initialize(nome) 
        @i = nome.size-1
        puts "Usuário registrado: #{nome[@i]}"
    end

    def aluga(nome, numCod)
        @nome = nome
        @numCod = numCod
        #livro[numCod] = Livro.new
        puts "#{Time.now} >> Usuario #{@nome} Alugou #{livro[@numCod]}"
    end
end

op1 = 1

while (op1 != 0)
    puts "Bem vindo ao Red Library"
    linha()
    puts "Insira uma operação"
    puts "[1] Cliente"
    puts "[2] Livros"
    puts "[0] Sair"
    linha()
    op1 = gets.to_i

    case op1
        when 1
            linha()
            puts "Insira uma operação para Cliente"
            puts "[1] Registrar cliente"
            puts "[2] Visualizar todos os clientes"
            puts "[0] Voltar"
            linha()
            op2 = gets.to_i
            linha()
            case op2
                when 1
                    print "Insira o nome do cliente: "
                    nome << "[#{nome.size}] " + gets.capitalize
                    linha()
                    Cliente.new(nome)
                    linha()
                when 2
                    linha()
                    puts nome
                    linha()
            end
        when 2
            linha()
            puts "Insira uma operação para Livro"
            puts "[1] Registrar livro"
            puts "[2] Visualizar todos os livros"
            puts "[3] Pesquisar livro"
            puts "[4] Alugar livro"
            puts "[5] Devolver livro"
            puts "[0] Voltar"
            linha()
            op3 = gets.to_i
            linha()
            case op3
                when 1
                    print "Insira o nome do livro: "
                    livro << "[#{livro.size}] " + gets.capitalize
                    linha()
                    Livro.new(livro)
                    linha()
                when 2
                    linha()
                    puts livro
                    linha()
                when 3
                    print "Insira o nome do livro, ou palavra-chave: "
                    pesquisa = gets
                    puts pesquisa
                    linha()
                    for i in (0..livro.size-1) do 
                        if livro[i].index("#{pesquisa}") != nil #Arranjar uma maneira para pesquisar pelo .index uma variável
                            puts livro[i]
                        else 
                            #puts "Nenhum livro encontrado +_-"
                        end
                    end
                when 4
                    print "Insira o numero de codificação: "
                    numCod = gets.to_i
                    if livro[numCod].index(/Alugado/) != nil 
                        linha()
                        puts "Desculpe, mas o livro inserido já está alugado >.<"
                        linha()
                    else
                        linha()
                        print "Insira o código do usuário que alugou o livro: "
                        nomeCod = gets.to_i
                        puts "[#{Time.now}]#{nome[nomeCod]} >> #{livro[numCod]}"
                        # nome[nomeCod].aluga(nomeCod, numCod)
                        livro[numCod] = "(Alugado) " + livro[numCod]
                        linha()
                    end
                when 5 # Realizar o mesmo método utilizado pra alugar
                    print "Insira o numero de codificação: "
                    numCod = gets.to_i
                    if livro[numCod].index(/Alugado/) == nil
                        linha()
                        puts "Desculpe, mas o livro inserido não está alugado ^.^"
                        linha()
                    else
                        linha()
                        livro[numCod] = livro[numCod].sub("(Alugado) ", "")
                        puts "Devolvido: #{livro[numCod]}"
                        linha()
                    end
            end
        when 0
            linha()
            puts "Deseja mesmo encerrar? Você perderá os dados inseridos."
            linha()
            puts "[1] Não encerrar"
            puts "[0] Encerrar agora"
            linha()
            op1 = gets.to_i
    end
end