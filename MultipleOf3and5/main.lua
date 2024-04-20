local function isDivisibleByThreeOrFive(number)
    return number % 3 == 0 or number % 5 == 0
end

local sum = 0
local function generateData()
    local data = {}
    for i = 1, 999 do
        if isDivisibleByThreeOrFive(i) then
            table.insert(data, i)
        end
    end
    return data
end

local function printData(data)
    for _, number in ipairs(data) do
        sum  = number + sum        
        print(number)
    end
end

local data = generateData()
printData(data)
print("here is the total sum: ", sum)