local num = 0

while num ~= 50 do -- Enquanto num for diferente de 50, ele vai executar, o math.random gera um numero aleatorio de 0 a 100 quando ele gerar 50 o while vai quebrar...
    num = math.random(0,100)
    print(num)
end