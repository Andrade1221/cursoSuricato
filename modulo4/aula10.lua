local mensagem = 'Ola eu sou legal'

local novaMensagem = string.gsub(mensagem, 'legal', 'chato')

print('Antiga: ' .. mensagem)

print('Nova: ' .. novaMensagem)