local file = io.open("input.txt", "r")

if not file then
    print("Failed to read File")
    return
end

local countWord = 0 

local data = {}
for line in file:lines()do
    table.insert(data, line)
end
file:close()

for _, line in ipairs(data) do
    for word in string.gmatch(line, "[Zz]") do
        print(line)
        countWord = countWord + 1
    end
end

print(countWord)
