function meuNome()
    return 'Gabriel'
end

meuNome() -- Printa nada.

print(meuNome()) -- Printa o dado do retorno da função.

local calc = 'soma' -- soma/subt

function calcular(num1, num2)
    if calc == 'soma' then
        return num1 + num2
    elseif calc == 'subt' then
        return num1 - num2
    end
end

calcular(10, 20)

print(calcular(10, 20))

print('O resultado e: ' .. calcular(10, 20))