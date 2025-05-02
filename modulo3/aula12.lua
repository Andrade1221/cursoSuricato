local t = {
    10,20,30,40,50, nome = 'Andrade'
}

for v, k in pairs(t) do
    print(v,k)
end

for v, k in ipairs(t) do
    print(v,k)
end