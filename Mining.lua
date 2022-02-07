local args = {...}

local torchPlaceFrequency = 12
local torchSlot = 1
local distanceFromLastTorch = 0
local torchName = "minecraft:torch"
local distance = args[1]

function doStuff()
    for i=1,16 do
        turtle.select(i)
        local data = 
        if turtle.getItemDetail(i).name == torchName and i == not torchSlot then
            print(turtle.getItemDetail(i).name)
            torchSlot = i
            return
        end
    end
end

doStuff()
for i=1,distance do
end
