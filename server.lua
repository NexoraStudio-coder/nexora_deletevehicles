-- =========================================================================
--  💜 Nexora Studio | Nexora Delete Vehicles (Free Version)
--  🛒 Store: https://tienda.nexorastudio.me/
--  📢 Discord: https://discord.gg/VqxFZdztUp
-- =========================================================================

ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    print('^5[Nexora Studio]^7 Script nexora_deletevehicles cargado correctamente. Visita ^5tienda.nexorastudio.me^7.')
end)

RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer and xPlayer.getGroup() == Config.GroupRequired then
        TriggerClientEvent('nexora_deletevehicles:startCountdown', -1, Config.CountdownTime)
    else
        TriggerClientEvent('esx:showNotification', source, '~r~No tienes permisos para usar este comando.')
    end
end, false)

Citizen.CreateThread(function()
    while Config.AutoClean do
        local waitTime = (Config.AutoCleanInterval * 60 * 1000) - (Config.CountdownTime * 1000)     
        if waitTime > 0 then
            Citizen.Wait(waitTime)
        end
        TriggerClientEvent('nexora_deletevehicles:startCountdown', -1, Config.CountdownTime)
        Citizen.Wait((Config.CountdownTime * 1000) + 5000)
    end
end)

RegisterServerEvent('nexora_deletevehicles:deleteVehicles')
AddEventHandler('nexora_deletevehicles:deleteVehicles', function()
    TriggerClientEvent('nexora_deletevehicles:cleanClientVehicles', -1)
end)
