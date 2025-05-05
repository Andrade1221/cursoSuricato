--[[
### 🔰 Etapa 1 – Fundamentos Básicos

#### **Desafio 1: Variáveis e Tipos**
Crie um script que:
- Defina seu nome, idade e se você é programador (booleano).
- Imprima uma frase usando essas variáveis, como:  
  `Olá, meu nome é Totolí, tenho 23 anos e sou programador.`

💡 *Dica: use `..` para concatenar strings.*
]]

local name = 'Gabriel'

local lastName = 'Andrade'

local age = '19'

local dev = false

if dev then
    print('Resultado: Ola, meu nome e ' .. name .. ' ' .. lastName .. ', tenho ' .. age .. ' anos e sou progamador.')
else
    print('Resultado: Ola, meu nome e ' .. name .. ' ' .. lastName .. ', tenho ' .. age .. ' anos e nao sou progamador.')
end

--[[
Muito bom, Totolí! 👏  
Seu código está **limpo, funcional e bem estruturado**. Aqui vão alguns elogios e sugestões simples:

---

### ✅ Pontos positivos:
- Variáveis bem nomeadas.
- Uso correto de `if` e concatenação com `..`.
- Cuidado com acentos (opcional no Lua puro, mas bom se quiser internacionalizar depois).
- Separou `nome` e `sobrenome`, o que dá flexibilidade. Muito bem!

---

### ✨ Sugestão pequena (opcional):
Se quiser manter o `age` como número (em vez de string), você pode fazer:

```lua
local age = 19
```

E ainda funcionaria no `print`, porque o Lua vai converter número para string automaticamente na concatenação.

---

### ✅ Resultado final: Aprovado!
]]