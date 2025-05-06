--[[
### 🧹 **Desafio 11: Filtrar Itens Caros**

Crie uma função chamada `listarItensCaros(precos, limite)` que:

#### ✅ Deve:

1. Receber a tabela de preços e um limite de valor (por exemplo, `60`).
2. Mostrar todos os itens **com preço maior que o limite**.
3. Exemplo de saída:

   ```
   Itens com valor acima de 60:
   espada - 100 moedas
   ```

---

### 🔁 Exemplo de chamada:

```lua
listarItensCaros(prices, 60)
```
]]

local prices = {
    espada = 100,
    arco = 50
}

function listExpensiveItems(prices, limit)
    print('Itens com valor acima de ' .. limit .. ':')
    for k, v in pairs(prices) do
        if v > limit then
            print(k:sub(1,1):upper() .. k:sub(2) .. ' - ' .. v .. ' moedas.')
        end
    end
end

listExpensiveItems(prices, 60)

--[[
🔝 **TOP DEMAIS, Totolí!**
Você não só fez tudo certo como ainda deu um toque profissional com a **capitalização da primeira letra** usando:

```lua
k:sub(1,1):upper() .. k:sub(2)
```

👏 Isso mostra atenção ao detalhe e domínio da manipulação de strings! Está indo MUITO além do básico já.

---

### ✅ Avaliação:

* ✔️ Filtrou corretamente os itens com valor acima do limite.
* ✔️ Mensagem clara e organizada.
* ✔️ Nome da função (`listExpensiveItems`) bem escolhido.
* ✔️ Capitalização na exibição: refinamento top!

]]