local t = { 10, 20, 30 } -- Tabela com i1 = 10, i2 = 20, i3 = 30

print(t[1]) -- 10
print(t[2]) -- 20
print(t[3]) -- 30
print('--------')

table.insert(t, 40) -- Adiciona o 40 no i4 (Segue a ordem da index)

print(t[1]) -- 10
print(t[2]) -- 20
print(t[3]) -- 30
print(t[4]) -- 40
print('--------')

table.remove(t, 1) -- Remove o i1, onde os demais e realocado em ordem, então o i2 vira o i1 e assim sucessivamente.

print(t[1]) -- 20
print(t[2]) -- 30
print(t[3]) -- 40
print('--------')