local a = 10
print(a)
if true then
    local b = 20
    print(a,b)
    if true then
        local c = 30
        print(a,b,c)
    end
end

print(a,b,c)


function naochama()
    d = 40
end

print(d)

function simchama()
    e = 50
end

simchama()
print(e)