local numeros = { 1, 10, 2, 9, 3, 8, 4, 7, 5, 6 }
local alimentos = { 'cebola', 'abacate', 'banana' }

for k, v in pairs(numeros) do
    print('['.. k .. ']' .. ' = ' .. v)
end

print('- - - - -')

for k, v in pairs(alimentos) do
    print('['.. k .. ']' .. ' = ' .. v)
end

print('- - - - -')

table.sort(numeros, function(a,b)
    return a < b
end)

table.sort(alimentos, function(a,b)
    return a > b
end)

for k, v in pairs(numeros) do
    print('['.. k .. ']' .. ' = ' .. v)
end

print('- - - - -')

for k, v in pairs(alimentos) do
    print('['.. k .. ']' .. ' = ' .. v)
end

print('- - - - -')