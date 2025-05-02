print('Iniciando Exemplo 1 (Adicionando +1)')
for i = 1, 5, 1 do
    print(i)
end
print('Finalizando Exemplo 1')

print('Iniciando Exemplo 1.1 (Adicionando +1)')
for i = 1, 5 do
    print(i)
end
print('Finalizando Exemplo 1.1')

print('Iniciando Exemplo 2 (Subtraindo -1)')
for i = 5, 0, -1 do
    print(i)
end
print('Finalizando Exemplo 2')

print('Iniciando Exemplo 3 (Adicionando +1 & parando na condicao 3)')
for i = 1, 5, 1 do
    print(i)
    if i == 3 then
        print('Cheguei a 3')
        break
    end
end
print('Finalizando Exemplo 3')


print('Iniciando Exemplo 4 (Subtraindo -1 & parando na condicao 3)')
for i = 5, 0, -1 do
    print(i)
    if i == 3 then
        print('Cheguei a 3')
        break
    end
end
print('Finalizando Exemplo 4')