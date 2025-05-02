local t = {
    tabela2 = {
        {
            tabela4 = {
                'Hello World!'
            }
        }
    }
}

print(t.tabela2[1].tabela4[1])

local a = {
    function()
        print('Hello World2!')
    end,
    Darmot = function()
        print('Hello World3!')
    end
}

print(a[1]())
print(a.Darmot())