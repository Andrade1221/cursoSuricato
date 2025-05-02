print(
    math.min(1,5,5,6,1,1,5115154,51517441821,725)
)

print(
    math.max(1,5,5,6,1,1,5115154,51517441821,725)
)

-- Exemplo de como usar o max, em um calculo, onde não pode ser negativo, mas pode ocorrer de vir negativo ai temos que retornar 0


local num = 5

local resultado = 1 - num

print(
    'Resultado: ' .. math.max(resultado, 0) -- O resultado seria -4 e ele retorna o maior que e o 0
)

-- Exemplo de como usar o min, em uma nota, onde o valor não pode passar de 10. Mas pode ter algum motivo que passa ai temos que retornar 10

local num2 = 5

local resultado2 = 10 + num2

print(
    'Resultado: ' .. math.min(resultado2, 10) -- O resultado seria 15 e ele retorna o menor que e o 10
)