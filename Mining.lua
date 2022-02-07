local args = {...}

local torchPlaceFrequency = 12
local distance = args[1]

function doStuff()
    for i=1,16 do
        turtle.select(i)
        local data = turtle.getItemDetail(i)
        if data then
            print(turtle.getItemDetail(i).name)
        end
    end
end

doStuff()
for i=1,distance do
end
