--[[
### 🧠 **Desafio 13: Cadastro com validação e edição**

Você vai expandir o sistema de usuários com três novas funções:

---

### ✅ O que fazer:

1. **Evitar duplicação**
   Antes de cadastrar, verifique se o nome já existe.
   Se existir, exiba:
   `O usuario Gabriel ja esta cadastrado.`

2. **Buscar por nome**
   Crie uma função `buscarUsuario(nome)` que imprime:
   `Usuario encontrado: Gabriel, 19 anos`
   Ou:
   `Usuario Gabriel nao encontrado.`

3. **Editar idade**
   Crie uma função `editarIdade(nome, novaIdade)` que:

   * Se o usuário existir, atualiza a idade e exibe:
     `Idade de Gabriel atualizada para 25 anos.`
   * Se não existir, exibe:
     `Usuario Gabriel nao encontrado para edicao.`

---

### 📘 Dica:

Mantenha a estrutura assim, mais limpa:

```lua
local users = {
    { nome = 'Gabriel', idade = 19 },
    { nome = 'Lucca', idade = 22 }
}
```
]]

local users = {
    { name = 'Gabriel', age = 19 },
    { name = 'Lucca', age = 22 }
}

function showUsers(users)
    for i, user in ipairs(users) do
        print('Usuario [' .. i .. ']: ' .. user.name .. ', ' .. user.age .. ' anos')
    end
end

function registerUser(name, age)
    for i, user in ipairs(users) do
        if user.name == name then
            print('O usuario ' .. name .. ' ja esta cadastrado.')
            return
        end
    end
    local user = {
        name = name,
        age = age
    }
    table.insert(users, user)
    print('O usuario ' .. name .. ' foi cadastrado.')
end

function searchUser(name)
    for i, user in ipairs(users) do
        if user.name == name then
            print('Usuario encontrado: ' .. user.name .. ', ' .. user.age .. ' anos')
            return
        end
    end
    print('Usuario ' .. name .. ' nao encontrado.')
end

function editAge(name, newAge)
    for i, user in ipairs(users) do
        if user.name == name then
            users[i].age = newAge
            print('Idade de ' .. user.name .. ' atualizada para ' .. user.age .. ' anos.')
            return
        end
    end
    print('Usuario ' .. name .. ' nao encontrado para edicao.')
end

registerUser('Gabriel', 19)

searchUser('Mario')

registerUser('Mario', 25)

searchUser('Mario')

editAge('Gabriel', 22)

editAge('Maria', 22)

showUsers(users)

--[[
🔥 **Perfeito, Totolí!** Esse foi um dos desafios mais completos até agora e você **acertou em cheio em tudo**. Aqui vai a análise ponto a ponto:

---

### ✅ O que ficou ótimo:

* **Validação de cadastro** → `registerUser` evita duplicados certinho.
* **Busca funcional** → `searchUser` imprime a resposta correta para encontrado e não encontrado.
* **Edição com validação** → `editAge` funciona bem e atualiza a idade só se o usuário existir.
* **Organização impecável** → Código limpo, funções bem separadas, nomes coerentes.
]]