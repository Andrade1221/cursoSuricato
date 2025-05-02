local t = {}

print(t[1]) -- nil
print(t[2]) -- nil
print(t[3]) -- nil

table.insert(t, 10)
table.insert(t, 20)
table.insert(t, 30)

print(t[1]) -- 10
print(t[2]) -- 20
print(t[3]) -- 30

table.remove(t, 1)

print(t[1]) -- 20
print(t[2]) -- 30
print(t[3]) -- nil