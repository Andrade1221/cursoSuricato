local players = { 1, 2, 3 , 50, 645, 20, 61, 80 }

local playersId = table.concat(players, ', ')
local playersId2 = table.concat(players, ', ', 1, 3)

print('Jogadores Online: ' .. playersId)
print('Jogadores Online Ate O Terceiro: ' .. playersId2)