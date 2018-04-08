local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPgf = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_golf")
Tunnel.bindInterface("vrp_golf",vRPgf)

function vRPgf.payGolf()
  local source = source
  local user_id = vRP.getUserId(source)
  local player = vRP.getUserSource(user_id)
  if vRP.tryPayment(user_id, 100) then
	  TriggerClientEvent('chatMessage', source, "SERVER", {255, 0, 0}, "Você pagou: ^2" .. tostring(100) .. "$.")
	  return true
  else
      TriggerClientEvent('chatMessage', source, "SERVER", {255, 0, 0}, "Você não tem dinheiro suficiente.")
	  return false
  end
end