print(false or false or false or true) -- true

print(true and true and true and false) -- false



print(true and false or true) -- true

print((true and false) or true) -- true



var = nil

if var == nil then -- 10
    var = '10'
    print(var)
end

var = nil

if not var then -- 10
    var = '10'
    print(var)
end

var = nil

var = var or 10 -- 10
print(var)