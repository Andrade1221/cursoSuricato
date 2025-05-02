t = {
    10,
    20,
    terceiro = 30,
    ['quarto'] = 40,
    'quinto',
    sexto = 'sexto',
    [1000] = 'Eu seria o 1000 forçado'
}

print(t[1]) -- Index 1
print(t[2]) -- Index 2
print(t.terceiro) -- Key terceiro
print(t['quarto']) -- Key quarto
print(t[3]) -- Index 3 ( Segue a ordem mesmo tendo uma key no meio )
print(t.sexto) -- Key sexto
print(t[1000]) -- Index 1000 ( Forçando o mesmo )