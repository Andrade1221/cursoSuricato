local t = {
    10,20,30,40,50, nome = 'Andrade'
}

print(#t)

local nome = 'Andrade'

print(#nome)


local t2 = {
    20,30,40
}


-- Maneira correta
for k, v in ipairs(t2) do -- Usa o ipairs, como apredemos já... muito melhor e mais facil, e temos o index também se precisar...
    print(v)
end

-- Maneira "errada" mas usando o len

for i = 1, #t2 do -- Aqui ele cria um for numerico, onde o #t2 retorno a quantidade (comprimento) da tabela no caso 3 ai ele faz um print onde o i ele passa a ser 1 2 3 pois o for numerico ele acrecenta +1 no valor inicial que e 1 e vai até o limite que e 3... 1 2 3 iprimindo como se fosse t2[1] t2[2] t2[3] 
    print(t2[i])
end