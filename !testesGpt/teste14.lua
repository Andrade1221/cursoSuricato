--[[
### 🧠 Desafio 14 — Gerenciamento avançado de usuários

**Objetivo:**
Você deve expandir o sistema de usuários adicionando três novas funcionalidades:

1. **Remover um usuário** pelo nome.
2. **Filtrar usuários** por idade mínima (mostrar apenas os que têm a idade igual ou maior que a informada).
3. **Ordenar os usuários** em ordem alfabética pelo nome.

**Regras:**

* Se o usuário a ser removido não existir, exiba uma mensagem informando isso.
* O filtro deve mostrar apenas os nomes e idades que atendem ao critério.
* A ordenação deve atualizar a tabela original.
* Mantenha o sistema de exibição (`showUsers`) para poder visualizar as mudanças.

**Exemplo de uso esperado:**

```lua
removeUser('Lucca')
filterByMinAge(21)
sortUsersByName()
```
]]

local users = {
    { name = 'Gabriel', age = 19 },
    { name = 'Lucca', age = 22 },
    { name = 'Mario', age = 35 },
    { name = 'Amanda', age = 7 },
    { name = 'Bruna', age = 64 }
}

function showUsers(users)
    for i, user in ipairs(users) do
        print('Usuario [' .. i .. ']: ' .. user.name .. ', ' .. user.age .. ' anos')
    end
end

function removeUser(name)
    for i, user in ipairs(users) do
        if user.name == name then
            table.remove(users, i)
            return
        end
    end
    print('Usuario: ' .. name .. ' nao encontrado.')
end

function filterByMinAge(age)
    local names = 'Lista:\n'
    for i, user in ipairs(users) do
        if user.age >= age then
            names = names .. 'Usuario [' .. i .. ']: ' .. user.name .. ', ' .. user.age .. ' anos\n'
        end
    end
    
    if names == 'Lista:\n' then
        print('Nenhum usuario com essa idade.')
    else
        print(names)
    end
end

function sortUsersByName()
    table.sort(users, function(a, b)
        return a.name < b.name
    end)
end

showUsers(users)

sortUsersByName()

filterByMinAge(10)
filterByMinAge(100)

removeUser('Lucca')
removeUser('Luca')

showUsers(users)