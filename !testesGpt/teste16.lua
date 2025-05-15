--[[
### 🧠 Desafio 16 — Sistema de permissões por cargo

**Objetivo:**
Você vai adicionar um sistema simples de permissões baseado no cargo de cada usuário.

---

**Requisitos:**

1. Adicione um novo campo `role` para cada usuário (ex: `'admin'`, `'user'`, `'moderator'`, etc.).
2. Crie a função `hasPermission(name, permission)` que:

   * Recebe o nome do usuário e a permissão necessária (ex: `"delete_user"`);
   * Retorna `true` se o cargo do usuário tiver essa permissão, ou `false` com mensagem.
3. Defina uma tabela com permissões por cargo, exemplo:

   ```lua
    local roles = {
    admin = { 'delete_user', 'edit_user', 'view_logs' },
    moderator = { 'edit_user' },
    user = {}
    }
   ```

---

**Exemplos:**

```lua
hasPermission('Gabriel', 'edit_user') --> true
hasPermission('Lucca', 'delete_user') --> false
```

---
]]

local users = {
    { name = 'Gabriel', age = 19, password = 'passwordtest', role = 'view_logs' },
    { name = 'Lucca', age = 22, password = 'passwordtest', role = 'user' },
    { name = 'Mario', age = 35, password = 'passwordtest', role = 'user' },
    { name = 'Amanda', age = 7, password = 'passwordtest', role = 'user' },
    { name = 'Bruna', age = 64, password = 'passwordtest', role = 'user' }
}

local roles = {
    admin = { 'delete_user', 'edit_user', 'view_logs' },
    moderator = { 'edit_user' },
    user = {}
}

function hasPermission(name, permission)
    for i, user in ipairs(users) do
        if user.name == name then
            for k, perm in pairs(AQUI TEM QUE SER O ROLE) do
                print(perm)
                print(k)
                print(permission)
                if perm == permission then
                    print('true')
                    return true
                else
                    print('false')
                    return false
                end
            end
        end
    end
    print('Usuario nao encontrado.')
end

hasPermission('Gabriel', 'view_logs')