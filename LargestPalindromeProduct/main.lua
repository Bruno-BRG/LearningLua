function isPalindrome(num)
    local reversedNum = 0
    local originalNum = num

    while num > 0 do
        local digit = num % 10
        reversedNum = reversedNum * 10 + digit
        num = math.floor(num / 10)
    end

    return reversedNum == originalNum
end

function findHighestPalindrome()
    local maxPalindrome = 0
    local maxA, maxB = 0, 0

    for a = 100, 999 do
        for b = 100, 999 do
            local product = a * b
            if isPalindrome(product) and product > maxPalindrome then
                maxPalindrome = product
                maxA, maxB = a, b
            end
        end
    end

    return maxPalindrome, maxA, maxB
end

local maxPalindrome, a, b = findHighestPalindrome()
print("Highest palindrome:",maxPalindrome)
print("Product of:", a, "and", b)