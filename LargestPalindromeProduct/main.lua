function isPalindrome(num)
    local str = tostring(num)
    local len = #str
    for i = 1, len // 2 do
        if str:sub(i, i) ~= str:sub(len - i + 1, len - i + 1) then
            return false
        end
    end
    return true
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
