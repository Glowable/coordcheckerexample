Citizen.CreateThread(function()
    local ped = PlayerPedId()
    local inArea = false
    local toggledArea = false
    local coords
    local dist
    while true do
        Wait(0)
        coords = GetEntityCoords(ped)
        dist = #(coords - vector3(-1256.48, -3025.69, -49.5)) --Coordinates to check
        if dist < 4 then --Radius of the area
           if not toggledArea then
              toggledArea = true
              inArea = true
              print("Player is in the area!") -- Triggered when the player is in the area
              
           end
        else
           if toggledArea then
              inArea = false
              toggledArea = false
              print("Played is no longer in the area!")

          end
        end
    end
end)