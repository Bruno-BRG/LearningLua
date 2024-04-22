-- Function to check if a number is prime
local function isPrime(num)
    if num <= 1 then
        return false
    elseif num <= 3 then
        return true
    elseif num % 2 == 0 or num % 3 == 0 then
        return false
    end

    local i = 5
    while i * i <= num do
        if num % i == 0 or num % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end

    return true
end

-- Function to find the nth prime number
local function findNthPrime(n)
    local count = 0
    local num = 1

    while count < n do
        num = num + 1
        if isPrime(num) then
            count = count + 1
        end
    end

    return num
end

-- Find the 10001st prime number
local prime10001 = findNthPrime(10001)
print("The 10001st prime number is:", prime10001)
