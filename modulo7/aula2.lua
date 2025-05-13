function f()
    print('F - 4')
    coroutine.yield()
    print('F - 6')
end

local c2 = coroutine.create(function()
    print('C2 - 3')
    f()
    print('C2 - 7')
end)

local c1 = coroutine.create(function()
    print('C1 - 2')
    coroutine.resume(c2)
    print('C1 - 5')
    coroutine.resume(c2)
    print('C1 - 8')
    coroutine.yield()
    print('C1 - 10') -- Não vai ser executado pois não e chamado dnv após o yield
end)

print('M - 1')
coroutine.resume(c1)
print('M - 9')