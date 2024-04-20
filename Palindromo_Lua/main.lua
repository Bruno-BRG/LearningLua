local file = io.open("input.txt", "r")

if not file then
    print("failed to open file")
    return
end

local totalScore = 0

local points = {
    ["A X"] = 4,
    ["A Y"] = 8,
    ["A Z"] = 3,
    ["B X"] = 1,
    ["B Y"] = 5,
    ["B Z"] = 9,
    ["C X"] = 7,
    ["C Y"] = 2,
    ["C Z"] = 6
}


for line in file:lines() do
    if points[line] then
        totalScore = totalScore + points[line]
    end
end

file:close()  -- It's important to close the file after you're done with it.

print("Here is the total score:", totalScore)