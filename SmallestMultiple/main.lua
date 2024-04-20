function isDivisibleByAll(number, maxDivisor)
    for divisor = 2, maxDivisor do
        if number % divisor ~= 0 then
            return false
        end
    end
    return true
end

function findSmallestDivisibleNumber(maxDivisor)
    local number = maxDivisor
    while true do
        if isDivisibleByAll(number, maxDivisor) then
            return number
        end
        number = number + maxDivisor -- Increment by maxDivisor as the number should be divisible by it
    end
end

local smallestNumber = findSmallestDivisibleNumber(20)
print("Smallest positive number divisible by all numbers from 1 to 20:", smallestNumber)
