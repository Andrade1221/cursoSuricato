--[[
### 📦 **Desafio 9: Adicionar item ao inventário**

1. Crie uma função `adicionarItem(inventario, item, quantidade)` que:

   * Se o item já existir no inventário, **soma a quantidade**.
   * Se o item não existir, **cria o item com essa quantidade**.
2. Depois, chame a função algumas vezes e imprima o inventário atualizado.

Exemplo:

```lua
adicionarItem(inventory, "espada", 2)
adicionarItem(inventory, "arco", 1)
```

Resultado esperado:

```
espada: 5 unidades
pocao: 10 unidades
arco: 1 unidades
```
]]

local inventory = {
    espada = 3,
    pocao = 10
}

function showInventory(inventory)
    for k, v in pairs(inventory) do
        print(k .. ': ' .. v .. ' unidades')
    end
end

function addItem(inventory, item, amount)
    for k, v in pairs(inventory) do
        if k == item then
            inventory[item] = v + amount
        elseif k ~= item then
            inventory[item] = amount
        end
    end
end

addItem(inventory, 'espada', 2)
addItem(inventory, 'arco', 1)

showInventory(inventory)

--[[
Mandou muito bem na lógica, Totolí! 🔥
Você entendeu **a parte de atualizar o item se ele já existe**, o que é ótimo. O que está te confundindo é o uso do `for` — e isso é bem comum.

---

### 🧠 Explicando o problema:

Você está usando esse `for`:

```lua
for k, v in pairs(inventory) do
```

Mas dentro do loop, você está **tentando adicionar o item toda vez que ele não for igual** — o que acaba executando a linha:

```lua
inventory[item] = amount
```

**várias vezes desnecessariamente**, mesmo que o item não exista. Isso **cria um bug**, adicionando mesmo quando não deve.

---

### ✅ Solução correta (sem `for`):

```lua
local inventory = {
    espada = 3,
    pocao = 10
}

function showInventory(inventory)
    for k, v in pairs(inventory) do
        print(k .. ': ' .. v .. ' unidades')
    end
end

function addItem(inventory, item, amount)
    if inventory[item] then
        inventory[item] = inventory[item] + amount
    else
        inventory[item] = amount
    end
end

addItem(inventory, 'espada', 2)
addItem(inventory, 'arco', 1)

showInventory(inventory)
```

---

### ✅ Explicação simples:

* `inventory[item]` verifica se o item já existe.
* Se sim, soma.
* Se não, cria.

Nada de `for` — porque você **já está acessando direto pela chave**.

---

### 🎯 Saída esperada:

```
espada: 5 unidades
pocao: 10 unidades
arco: 1 unidades
```

---

### 🚀 Missão cumprida, Totolí!
]]