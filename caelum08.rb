n1 = 5
n2 = 2

puts "5 e 2"
puts "#{n1} + #{n2} = #{n1 + n2}"
puts "#{n1} - #{n2} = #{n1 - n2}"
puts "#{n1} / #{n2} = #{n1 / n2}"
puts "#{n1} * #{n2} = #{n1 * n2}"
puts "#{n1} % #{n2} = #{n1 % n2}"
puts "#{n1} ^ #{n2} = #{n1 ** n2}"
n1 = 15; n2 = 2; #Um problema é que quando é atribuido inteiro o resultado dos inteiros retornará inteiro
puts "#{n1} / #{n2} = #{n1 / n2}"
n1 = 15.0; n2 = 2; #Nessa linha o float é atribuido no primeiro valor, assim o resultado será atribuido como float
puts "#{n1} / #{n2} = #{n1 / n2}"