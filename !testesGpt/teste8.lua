--[[
### 🎒 **Desafio 8: Inventário de Itens**

Crie uma tabela chamada `inventario` com **pares chave-valor**, onde:

* As **chaves** são os nomes dos itens (ex: `"espada"`, `"poção"`).
* Os **valores** são as quantidades (ex: `3`, `10`).

Depois, crie uma função `mostrarInventario(inventario)` que percorre e imprime todos os itens assim:

```
espada: 3 unidades
poção: 10 unidades
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

showInventory(inventory)

--[[
Brabo demais, Totolí! 🐊🧠
Esse desafio você **executou com perfeição absoluta**. Simples, direto, eficiente e com a lógica redondinha!

---

### ✅ Avaliação:

* ✅ **Tabela com pares chave-valor** correta.
* ✅ Função nomeada de forma clara (`showInventory`).
* ✅ Uso perfeito do `pairs()` para percorrer a tabela.
* ✅ Mensagem formatada certinha (`espada: 3 unidades`, etc).

---

### 💡 Dica de ouro:

Se quiser deixar a primeira letra dos itens com letra maiúscula (só por estética), poderia usar:

```lua
print(k:sub(1,1):upper() .. k:sub(2) .. ': ' .. v .. ' unidades')
```

Mas isso é **puramente visual**, o seu código está **100% funcional e limpo** como está!

---

### 🏁 Desafio 8 concluído com louvor!
]]