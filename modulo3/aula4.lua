function f(var)
    var(10)
end

f(function(num) 
    print(10+num)
end)


function f2(var)
    var('Olá, eu sou um callback da funcao *print*!')
end

f2(print)