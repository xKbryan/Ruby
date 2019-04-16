#Exibindo métodos de instâncias de uma classe
class Arroz
    def fazer()
        puts "Arroz feito"
    end
   
    def comer()
        puts "Arroz comido"
    end
end

print Arroz.instance_methods , "\n"
print Arroz.instance_methods(false)