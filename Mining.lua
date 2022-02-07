local args = {...}

local torchPlaceFrequency = 12
local torchSlot = 1
local distanceFromLastTorch = 12
local torchName = "minecraft:torch"
local distance = args[1]

function TorchSlot()
    for i=1,16 do
        turtle.select(i)
        local data = turtle.getItemDetail(i)
        if data then
            if data.name == torchName then
                torchSlot = i
                return
            end
        end
    end
end

function DoMine()
    for i=1,distance do
        if distanceFromLastTorch == torchPlaceFrequency then
            turtle.select(torchSlot)
            turtle.dig()
            turtle.place()
            distanceFromLastTorch = 0
        else
            turtle.dig()
        end
        turtle.forward()
        turtle.digUp()
        distanceFromLastTorch = distanceFromLastTorch + 1
    end
end

function Main()
    TorchSlot()
    DoMine()
end

Main()