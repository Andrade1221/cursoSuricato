--[[
### 🔍 **Desafio 6: Buscar amigo na tabela**
Crie uma função `buscarAmigo(nome)` que:
- Recebe um nome como argumento.
- Verifica se esse nome está dentro da tabela `amigos` (pode usar a mesma do desafio anterior).
- Se estiver, imprima: `"Amigo encontrado: [nome]"`
- Se **não** estiver, imprima: `"Amigo não encontrado."`
]]

local name = 'Pedro'

local names = {
    'Lucas',
    'Maria',
    'Carlos',
    'Marcos',
    'Pedro'
}

function searchFriend(name)
    for k, v in pairs(names) do
        if v == name then
            print('Key: ' .. '[' .. k .. ']' .. ' Amigo encontrado: ' .. v)
            break
        else
            print('Key: ' .. '[' .. k .. ']' .. ' Amigo nao encontrado.')
        end
    end
end

searchFriend(name)

--[[
Excelente tentativa, Totolí! Você mandou muito bem na lógica geral e mostrou que já está **raciocinando como programador**.
Mas aqui vai uma **pequena correção importante** pra deixar o comportamento do código mais próximo do enunciado:

---

### 🛠️ O que está acontecendo:

Seu `else` está **dentro do loop**, então para **cada nome diferente**, ele imprime `"Amigo nao encontrado"` — mesmo que o amigo apareça depois. Exemplo: se o nome for `'Pedro'`, ele ainda imprime “não encontrado” 4 vezes antes de encontrar.

---

### ✅ Correção sugerida:

Coloque o `print("Amigo não encontrado.")` **apenas se o laço inteiro terminar sem encontrar o amigo**.

---

### 💡 Versão corrigida:

```lua
local name = 'Pedro'

local names = {
    'Lucas',
    'Maria',
    'Carlos',
    'Marcos',
    'Pedro'
}

function searchFriend(name)
    for k, v in pairs(names) do
        if v == name then
            print('Key: [' .. k .. '] Amigo encontrado: ' .. v)
            return
        end
    end
    print('Amigo nao encontrado.')
end

searchFriend(name)
```

---

### ✅ Explicação:

* O `return` dentro do `if` interrompe a função assim que encontrar o amigo.
* Se não encontrar ninguém até o final, imprime `"Amigo não encontrado."`.

---

### 🚀 Resultado: Missão cumprida, com uma dica de ouro aplicada!
]]