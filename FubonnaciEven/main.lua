function fibonacci()
    local a, b = 0, 1
    local sum = 0
    while true do
        if a > 4000000 then
            break
        end
        if a % 2 == 0 then
            print(a)
            sum = sum + a
        end
        a, b = b, a + b
    end
    return sum 
end

local even_sum = fibonacci()
print("Sum of even Fibonacci numbers:", even_sum)
