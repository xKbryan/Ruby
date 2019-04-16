puts "Digite o nome do restaurante"
nome = gets
print "Nome do restaurante: #{nome}" #Usa-se #{var} para exibir uma variavel num print, chamando de Interpolação, mas não funciona para aspas simples
print "Nome do restaurante: " + nome + ". Bem vindo!" #Tem o método por concatenação " " + var + " "