function main()
    function SumOfTheSquares(upperLimit)
        local sum1 = 0
        local square = 0
        for number = 1, upperLimit do
            square = number * number
            sum1 = sum1 + square
        end
        return sum1
    end

    function SquareOfTheSum(upperLimit)
        local sum2 = 0
        for number = 1, upperLimit do
            sum2 = number + sum2 
        end
        return sum2 * sum2 
    end

    local upperLimit = 100
    local squareOfTheSums = SquareOfTheSum(upperLimit)
    local sumOfSquares = SumOfTheSquares(upperLimit)
    local answer = squareOfTheSums - sumOfSquares  

    return sumOfSquares, squareOfTheSums, answer
end

local sumOfSquares, squareOfTheSums, answer = main()

print("Here is the sum of the square from number 1 to 100: ", sumOfSquares)
print("Here is the square of the sum of the number from 1 to 100: ", squareOfTheSums)
print("Here is the difference between the two: ", answer)
main()