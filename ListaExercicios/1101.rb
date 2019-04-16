def repetir(w, x)
    vetor = Array.new
    vetor[w] = x.times.map do
        gets.to_i
    end
end
repetir(1,3)
repetir(2,4)
vetor[3] = vetor[1] + vetor[2]
print vetor[3]