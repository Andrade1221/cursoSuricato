local mensagem = 'Gabriel Andrade'

local trecho = string.sub(mensagem, 1)

print(trecho) -- Vai printar do argumento 1(G) até o fim... (Gabriel Andrade)

local mensagem2 = 'Gabriel Andrade'

local trecho2 = string.sub(mensagem2, 1, 7)

print(trecho2) -- Vai printar do argumento 1(G) até o 7(l)... (Gabriel)

local mensagem3 = 'Gabriel Andrade'

local trecho3 = string.sub(mensagem3, 9)

print(trecho3) -- Vai printar do argumento 9(A) até o fim... (Andrade)

local mensagem4 = 'Gabriel Andrade'

local trecho4 = string.sub(mensagem4, 9, 11)

print(trecho4) -- Vai printar do argumento 9(A) até o 11(d).. (And)

local mensagem5 = 'Gabriel Andrade'

local trecho5 = string.sub(mensagem5, -5)

print(trecho5) -- Vai printar do argumento 5(d) da direita para esquerda até o fim... (drade)