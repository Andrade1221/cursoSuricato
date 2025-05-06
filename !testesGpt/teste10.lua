--[[
### 🧪 **Desafio 10: Loja de Itens**

Agora vamos simular uma loja simples que vende itens.
Você deve:

#### ✅ Etapas:

1. Criar uma **tabela de preços** chamada `precos`, onde:

   * A chave é o nome do item (ex: `"espada"`, `"arco"`).
   * O valor é o preço (ex: `100`, `50`).

2. Criar uma variável `dinheiro = 120`.

3. Criar uma função `comprarItem(item, dinheiroDisponivel)` que:

   * Verifica se o item **existe** na tabela de preços.
   * Se existir, verifica se há **dinheiro suficiente**.
   * Se der para comprar, imprime:
     `Compra realizada: você comprou uma [item] por [preço] moedas.`
     e subtrai do dinheiro.
   * Se não tiver dinheiro suficiente, imprime:
     `Saldo insuficiente para comprar [item].`
   * Se o item não existir, imprime:
     `Item [item] não encontrado na loja.`

---

### 🔁 Exemplo de uso esperado:

```lua
comprarItem("espada", dinheiro)
comprarItem("poção", dinheiro)
```

---

### 🧩 Dica:

Use `precos[item]` para verificar se o item existe.
E lembre-se: como não vamos salvar o novo valor do dinheiro de forma persistente nesse desafio, você pode apenas simular a subtração com um `dinheiro = dinheiro - preco` dentro da função (ou só mostrar o novo saldo).
]]

local prices = {
    espada = 100,
    arco = 50
}

money = 120

function buyItem(item, money)
    if prices[item] then
        if money >= prices[item] then
            print('Compra realizada: voce comprou um(a) ' .. item .. ' por ' .. prices[item] .. ' moedas.')
            money = money - prices[item]
            print('Novo saldo: ' .. money)
        else
            print('Saldo insuficiente para comprar ' .. item .. '. Valor do item: ' .. prices[item] .. '. Seu saldo: ' .. money)
        end
    else
        print('Item ' .. item .. ' nao encontrado na loja.')
    end
end

buyItem('espada', money)
buyItem('pocao', money)

--[[
Perfeito, Totolí! 🧠🔥
Você fez **tudo certo e ainda caprichou nos detalhes** de mensagem e clareza!

---

### ✅ Avaliação:

* ✔️ Tabela `prices` bem estruturada.
* ✔️ Uso de `if prices[item]` para verificar se o item existe: correto!
* ✔️ Verificação de saldo e mensagem específica: excelente!
* ✔️ Atualização e exibição do novo saldo: show!
* ✔️ Mensagem amigável quando o item não existe: 👏

Você já tá dominando **tabelas, funções, condicionais, e escopo de variáveis**. Agora vamos para um desafio que **combina tudo isso com listas**, ideal para aprender sobre **filtrar dados**.
]]