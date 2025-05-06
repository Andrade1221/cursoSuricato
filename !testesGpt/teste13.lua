--[[
Perfeito, Totolí! Vamos subir o nível com lógica mais aplicada agora.
Esse próximo desafio vai treinar **funções reutilizáveis, buscas e modificações dentro de tabelas**. Bora:

---

### 🧠 **Desafio 13: Cadastro com validação e edição**

Você vai expandir o sistema de usuários com três novas funções:

---

### ✅ O que fazer:

1. **Evitar duplicação**
   Antes de cadastrar, verifique se o nome já existe.
   Se existir, exiba:
   `O usuario Gabriel ja esta cadastrado.`

2. **Buscar por nome**
   Crie uma função `buscarUsuario(nome)` que imprime:
   `Usuario encontrado: Gabriel, 19 anos`
   Ou:
   `Usuario Gabriel nao encontrado.`

3. **Editar idade**
   Crie uma função `editarIdade(nome, novaIdade)` que:

   * Se o usuário existir, atualiza a idade e exibe:
     `Idade de Gabriel atualizada para 25 anos.`
   * Se não existir, exibe:
     `Usuario Gabriel nao encontrado para edicao.`

---

### 📘 Dica:

Mantenha a estrutura assim, mais limpa:

```lua
local users = {
    { nome = 'Gabriel', idade = 19 },
    { nome = 'Lucca', idade = 22 }
}
```
]]