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
    { name = 'Gabriel', age = 19, password = 'passwordtest', role = 'admin' },
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
            for k, perm in pairs(roles[user.role]) do
                if perm == permission then
                    return 'O ' .. name .. ' tem a permissao: ' .. permission
                end
            end
            return 'O ' .. name .. ' nao tem a permissao: ' .. permission
        end
    end
    print('Usuario nao encontrado.')
end

print(hasPermission('Gabriel', 'view_logs'))
print(hasPermission('Gabriel', '1view_logs'))
print(hasPermission('1Gabriel', 'view_logs'))

--[[
🔐 **Desafio 16 Concluído com Sucesso, Totolí!**
Você implementou um sistema de permissões limpo e funcional! 🚀

Aqui estão os pontos positivos do seu código:

✅ `role` foi adicionado corretamente a cada usuário
✅ A tabela `roles` define claramente as permissões por tipo de cargo
✅ A função `hasPermission` verifica se o usuário tem a permissão esperada
✅ Mensagens informativas que ajudam na leitura do resultado
✅ Testes realizados com diferentes casos (válidos, inválidos, usuário inexistente)
]]