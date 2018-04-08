-- this module make paycheck and bill to pay for users who have group permission

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local cfg = module("vrp_paycheck", "cfg/paycheck")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

function paycheck_giver()
  for k,v in pairs(cfg.paycheck) do
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
	  local paycheck = v
      local player = vRP.getUserSource(user_id)
	  if cfg.bank then
		vRP.giveBankMoney(user_id,paycheck)
	  else
		vRP.giveMoney(user_id,paycheck)
	  end	
	  TriggerClientEvent("pNotify:SendNotification",player,{text = "Você recebeu seu salário: <span color='red'>" ..paycheck.. "$</span>", type = "success", timeout = (3000),layout = "centerLeft"})
	end	
  end
  SetTimeout(1000*60*cfg.minutes_paycheck, function()
	paycheck_giver()
  end)
end

Citizen.CreateThread(function()
  paycheck_giver()
end)

function paycheck_taker()
  for k,v in pairs(cfg.bill) do
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
	  local bill = v
      local player = vRP.getUserSource(user_id)
	  local money = vRP.getBankMoney(user_id)
	  if cfg.bank then
		vRP.setBankMoney(user_id,money-bill)
	  else
		vRP.tryPayment(user_id,bill)
	  end	
	  TriggerClientEvent("pNotify:SendNotification",player,{text = "Pagamento de contas: <span color='red'>" ..bill.. "$</span>", type = "info", timeout = (3000),layout = "centerLeft"})
	  TriggerClientEvent("pNotify:SendNotification",player,{text = "Saldo Atual: <span color='red'>" ..money.. "$</span>", type = "info", timeout = (3000),layout = "centerLeft"})
	end	
  end
  SetTimeout(1000*60*cfg.minutes_bill, function()
	paycheck_taker()
  end)
end

Citizen.CreateThread(function()
  paycheck_taker()
end)