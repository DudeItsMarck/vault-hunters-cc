local args = {...}

local torchPlaceFrequency = 12
local torchSlot = 1
local distanceFromLastTorch = 0
local torchName = "minecraft:torch"
local distance = args[1]

function torchSlot()
    for i=1,16 do
        turtle.select(i)
        local data = turtle.getItemDetail(i)
        if data then
            -- print(data.name)
            if data.name == torchName then
                torchSlot = i
                print(torchSlot)
                return
            end
        end
    end
end

function main()
    torchSlot()
end

main()