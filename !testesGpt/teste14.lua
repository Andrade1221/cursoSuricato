--[[
### 🧠 Desafio 14 — Gerenciamento avançado de usuários

**Objetivo:**
Você deve expandir o sistema de usuários adicionando três novas funcionalidades:

1. **Remover um usuário** pelo nome.
2. **Filtrar usuários** por idade mínima (mostrar apenas os que têm a idade igual ou maior que a informada).
3. **Ordenar os usuários** em ordem alfabética pelo nome.

**Regras:**

* Se o usuário a ser removido não existir, exiba uma mensagem informando isso.
* O filtro deve mostrar apenas os nomes e idades que atendem ao critério.
* A ordenação deve atualizar a tabela original.
* Mantenha o sistema de exibição (`showUsers`) para poder visualizar as mudanças.

**Exemplo de uso esperado:**

```lua
removeUser('Lucca')
filterByMinAge(21)
sortUsersByName()
```
]]