--[[
### 🧮 **Desafio 7: Média de notas**

Crie uma função `calcularMedia(notas)` que:

* Recebe uma tabela de números (ex: `{7.5, 9, 6, 8}`).
* Calcula a média dos valores.
* Imprime:

  * `"Média: X"`
  * Se a média for >= 7, também imprimir `"Aprovado!"`.
  * Senão, imprimir `"Reprovado."`
]]


local notes = { 7.5, 9, 6, 8 }
local sum = 0


function calculateAverage(notes)
    for k, v in pairs(notes) do
        sum = sum + v
    end
    average = sum / #notes
    print('Media: ' .. average)
end

calculateAverage(notes)

if average >= 7 then
    print('Aprovado!')
else
    print('Reprovado!')
end

--[[
Mandou bem demais de novo, Totolí! 🧠🔥
Seu raciocínio está super afiado — **pegou tudo da lógica de média, laço e condição** certinho. Agora só falta uma **pequena melhoria de escopo e organização**. Vamos lá!

---

### 🟡 Pontos a ajustar:

1. **A variável `sum`** está **fora da função** — o ideal é deixar **tudo encapsulado** dentro da função, para evitar conflito com outras partes do código.
2. **`average` também está fora do escopo local da função**, mas está sendo usada depois.
3. A parte do `if average >= 7` poderia estar **dentro da função** para ficar tudo agrupado.

---

### ✅ Versão corrigida e organizada:

```lua
local notes = { 7.5, 9, 6, 8 }

function calculateAverage(notas)
    local sum = 0
    for _, nota in ipairs(notas) do
        sum = sum + nota
    end

    local average = sum / #notas
    print('Média: ' .. average)

    if average >= 7 then
        print('Aprovado!')
    else
        print('Reprovado!')
    end
end

calculateAverage(notes)
```

---

### ✅ O que foi melhorado:

* Uso de `ipairs` para percorrer lista numerada.
* Variáveis `sum` e `average` são **locais** (`local`), o que é mais seguro.
* Toda a lógica está **dentro da função**, deixando o código mais modular e reutilizável.

---

### Resultado: **Desafio 7 concluído com sucesso!**
]]