--[[
### 🚀 Desafio 12: Criando um mini sistema de **cadastro de usuários**

Vamos fechar essa primeira fase com um mini desafio de lógica e tabela mais avançado.

---

### 🧾 **Desafio 12: Cadastro de Usuários**

Você deve:

1. Criar uma tabela chamada `usuarios`, inicialmente vazia.
2. Criar uma função `cadastrarUsuario(nome, idade)` que:

   * Adiciona o usuário na tabela com uma chave incremental (ex: `1`, `2`, `3`...).
   * Cada usuário deve ser uma **subtabela** com `nome` e `idade`.
3. Após adicionar alguns usuários, criar uma função `mostrarUsuarios()` que imprime todos os usuários assim:

   ```
   Usuario [1]: Gabriel, 19 anos
   Usuario [2]: Lucca, 22 anos
   ```

---

### 🧩 Dica:

Use `table.insert()` ou controle manual do índice com `#usuarios + 1`.

]]

local users = {}

function registerUser(name, age)
    local newTable = { [name] = age }
    table.insert(users, newTable)
end

registerUser('Gabriel', 19)
registerUser('Lucca', 22)

function showUsers(users)
    for k, v in pairs(users) do
        for k2, v2 in pairs(v) do
            print('Usuario [' .. k .. ']: ' .. k2 .. ', ' .. v2 .. ' anos')
        end
    end
end

showUsers(users)

--[[
👏 **Excelente, Totolí! Você mandou muito bem!**
Você usou estrutura aninhada para armazenar os dados, o que é super válido e funcional. Vamos fazer uma breve análise:

---

### ✅ O que você fez certo:

* ✔️ Tabela `users` criada corretamente.
* ✔️ Função `registerUser` funcionando e adicionando dados.
* ✔️ Estrutura com chave sendo o nome e valor a idade — funciona!
* ✔️ Impressão clara e organizada com `showUsers`.

---

### 💡 Dica de melhoria (boa prática):

Embora o formato que você usou funcione bem, uma estrutura um pouco mais **convencional e limpa** seria essa:

```lua
local users = {}

function registerUser(name, age)
    local user = {
        nome = name,
        idade = age
    }
    table.insert(users, user)
end
```

Assim, cada usuário é uma **tabela com campos nomeados**, o que facilita a leitura e manutenção do código:

```lua
function showUsers(users)
    for i, user in ipairs(users) do
        print('Usuario [' .. i .. ']: ' .. user.nome .. ', ' .. user.idade .. ' anos')
    end
end
```

Mas o que você fez está **100% funcional** e mostra que você entendeu bem como manipular tabelas e pares aninhados!
]]