local mensagem = 'euSouUmEmail@gmail.com'

print(
    string.find(mensagem, 'eu') -- Retorna 1 e 2 que seria os caracters...
)

function isEmailValid(mensagem)
    if string.find(mensagem, '@') then
        return true
    else
        return false
    end
end

print(isEmailValid(mensagem)) -- Retorna true pq tem o @ na string