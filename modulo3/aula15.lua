local num = 0

repeat -- Ele não precisa do "do" ele mesmo cria o bloco, e ele repete ate o numero ser igual a definição 50
    num = math.random(0,100)
    print(num)
until num == 50

print('==========')
--- Exemplo que nem entra While...
print('1')
local num2 = 50

while num2 ~= 50 do
    print('2')
end
print('3')

--- Exemplo que entra repet...
print('4')
local num3 = 50

repeat
    print('5')
until num3 == 50
print('6')