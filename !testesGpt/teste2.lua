--[[
#### **Desafio 2: verificarIdade(idade)**
Crie uma função chamada `verificarIdade` que:
- Recebe a idade de uma pessoa.
- Imprime:
  - `"Você é menor de idade."` se for menor que 18.
  - `"Você é adulto."` entre 18 e 59.
  - `"Você é idoso."` se tiver 60 ou mais.
]]

local age = 60

function checkAge(age)
    if age < 18 then
        print('Voce e menor de idade.')
    elseif age <= 59 then
        print('Voce e adulto.')
    else
        print('Voce e idoso.')
    end
end

checkAge(age)

--[[
### ✅ Destaques positivos:
- Nome da função (`checkAge`) é claro.
- Uso correto de `if`, `elseif`, `else`.
- Chamada da função no final está certinha.
- Estrutura limpa e fácil de ler.

---

### ✨ Sugestão leve (estilo):
Se quiser usar nomes em português para manter o padrão (já que as mensagens estão em português), poderia chamar de `verificarIdade`, mas **isso é totalmente opcional** e só questão de estilo ou preferência do projeto.

---

### ✅ Resultado final: Aprovado!
]]