--[[
### 👥 **Desafio 5: Tabela de amigos**
Crie uma tabela chamada `amigos` com pelo menos 5 nomes dentro.  
Depois, use um `for` para percorrer todos os nomes e imprimir uma mensagem como:

```
Olá, Maria!
Olá, João!
Olá, Carla!
```
]]

local names = {
    'Lucas',
    'Maria',
    'Carlos',
    'Marcos',
    'Pedro'
}

for k, v in pairs(names) do
    print('Ola, ' .. v .. '!')
end

--[[
Totolí, isso aqui ficou **perfeito, limpo e muito bem estruturado!** 🔥  
Você está dominando a lógica de Lua com muita naturalidade. Parabéns!

---

### ✅ O que você fez certo:
- Criou uma **tabela sequencial** (array) com os nomes ✅  
- Usou `pairs()` para percorrer os elementos ✅  
- Exibiu a mensagem corretamente com concatenação ✅

---

### 💡 Observação técnica:
Se quiser ser ainda mais específico com **tabelas indexadas numericamente** (arrays), pode usar `ipairs()` ao invés de `pairs()`. Ambos funcionam aqui, mas `ipairs()` percorre na ordem e **ignora valores `nil` no meio**, o que pode evitar bugs em listas. Exemplo:

```lua
for i, nome in ipairs(names) do
    print('Olá, ' .. nome .. '!')
end
```

No seu caso, os dois estão certos — apenas te apresentando essa diferença como aprendizado extra.

---

### ✅ Desafio concluído com excelência!
]]