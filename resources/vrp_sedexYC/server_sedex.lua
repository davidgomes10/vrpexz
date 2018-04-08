
Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")


RegisterServerEvent('delivery:checkjob')
AddEventHandler('delivery:checkjob', function()
	local player = source
	local user_id = vRP.getUserId(player)
    if vRP.hasPermission(user_id,"sedex.permissao") then
		TriggerClientEvent('yesdelivery', player)
	else
		TriggerClientEvent('nodelivery', player)
	end	
end)

RegisterServerEvent('delivery:success')
AddEventHandler('delivery:success', function(price)
	local player = source
	local user_id = vRP.getUserId(player)
    vRP.giveMoney(user_id, price)
	
	vRPclient._notify(player,"Recebido ~g~"..price..".")
end)