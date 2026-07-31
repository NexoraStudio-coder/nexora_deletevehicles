-- [[ 
--      Nexora Delete Vehicles v1.0.0 
--      Desarrollado de forma oficial por Nexora Studio.
--      Todos los derechos reservados (c) 2026.
--      Prohibida la venta de este producto gratuito.
-- ]]

local isCounting = false
local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

RegisterNetEvent('nexora_deletevehicles:startCountdown')
AddEventHandler('nexora_deletevehicles:startCountdown', function(seconds)
    if isCounting then return end
    isCounting = true

    local timeLeft = seconds

    while timeLeft > 0 do
        SendNUIMessage({
            action = "show",
            title = "NEXORA CLEANER",
            text = "Se borrarán los vehículos abandonados en ",
            time = timeLeft
        })
        Citizen.Wait(1000)
        timeLeft = timeLeft - 1
    end

    SendNUIMessage({ action = "hide" })
    isCounting = false

    TriggerServerEvent('nexora_deletevehicles:deleteVehicles')
end)

RegisterNetEvent('nexora_deletevehicles:cleanClientVehicles')
AddEventHandler('nexora_deletevehicles:cleanClientVehicles', function()
    local vehicles = GetGamePool('CVehicle')
    local count = 0

    for _, vehicle in ipairs(vehicles) do
        if DoesEntityExist(vehicle) and IsVehicleSeatFree(vehicle, -1) then
            if not IsVehicleSirenOn(vehicle) then
                SetEntityAsMissionEntity(vehicle, true, true)
                DeleteVehicle(vehicle)
                count = count + 1
            end
        end
    end
    
    SendNUIMessage({
        action = "show_success",
        title = "NEXORA CLEANER",
        text = "Se han limpiado " .. count .. " vehículos del mapa."
    })

    Citizen.SetTimeout(5000, function()
        SendNUIMessage({ action = "hide" })
    end)
end)