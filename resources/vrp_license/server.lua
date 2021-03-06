Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
htmlEntities = module("vrp", "lib/htmlEntities")

vRPgun = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
GUNclient = Tunnel.getInterface("vrp_license")
Tunnel.bindInterface("vrp_license",vRPgun)
Proxy.addInterface("vrp_license",vRPgun)
cfg = module("vrp_license", "cfg/dmv")
-- load global and local languages
Luang = module("vrp", "lib/Luang")
Lang = Luang()
Lang:loadLocale(cfg.lang, module("vrp", "cfg/lang/"..cfg.lang) or {})
Lang:loadLocale(cfg.lang, module("vrp_license", "cfg/lang/"..cfg.lang) or {})
lang = Lang.lang[cfg.lang]

function vRPgun.setLicense()
	local user_id = vRP.getUserId(source)
	vRP.setUData(user_id,"vRP:gun:license",json.encode(os.date("%x")))
end

function vRPgun.payFirearmsLicense()
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.tryPayment(user_id,cfg.dmv.price.practical) then
        GUNclient.payFirearmsLicense(player)
	else
		vRPclient.notify(player,lang.money.not_enough())
	end
end

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local data = vRP.getUData(user_id,"vRP:gun:license")
	if data then
	  local license = json.decode(data)
	  if license and license ~= 0 then
        GUNclient.setLicense(player, true)
	  end
	end
end)

local choice_asklc = {function(player,choice)
  local nplayer = vRPclient.getNearestPlayer(player,10)
  local nuser_id = vRP.getUserId(nplayer)
  if nuser_id then
    vRPclient.notify(player,lang.dmv.police.ask())
    if vRP.request(nplayer,lang.dmv.police.request(),15) then
	  local data = vRP.getUData(nuser_id,"vRP:gun:license")
      if data then
	    local license = json.decode(data)
		if license and license ~= 0 then
          local identity = vRP.getUserIdentity(nuser_id)
          if identity then
            -- display identity and business
            local name = identity.name
            local firstname = identity.firstname
            local age = identity.age
            local phone = identity.phone
            local registration = identity.registration
          
            local content = lang.dmv.police.license({name,firstname,age,registration,phone,license})
            vRPclient.setDiv(player,"police_identity",".div_police_identity{ background-color: rgba(0,0,0,0.75); color: white; font-weight: bold; width: 500px; padding: 10px; margin: auto; margin-top: 150px; }",content)
            -- request to hide div
            vRP.request(player, lang.dmv.police.request_hide(), 1000)
            vRPclient.removeDiv(player,"police_identity")
          end
	    else
	      vRPclient.notify(player,lang.dmv.police.no_license())
        end
	  else
	    vRPclient.notify(player,lang.dmv.police.no_license())
      end
    else
      vRPclient.notify(player,lang.common.request_refused())
    end
  else
    vRPclient.notify(player,lang.common.no_player_near())
  end
end, lang.dmv.police.check_desc()}

local choice_takelc = {function(player,choice)
  local nplayer = vRPclient.getNearestPlayer(player,10)
  local nuser_id = vRP.getUserId(nplayer)
  if nuser_id then
    if vRP.request(player,lang.dmv.police.confirm(),15) then
	  local data = vRP.getUData(nuser_id,"vRP:gun:license")
      if data then
	    local license = json.decode(data)
		if license and license ~= 0 then
          GUNclient.setLicense(nplayer, false)
	      vRP.setUData(nuser_id,"vRP:gun:license",json.encode())
	      vRPclient.notify(nplayer,lang.dmv.police.license_taken())
	      vRPclient.notify(player,lang.dmv.police.took_license())
	    else
	      vRPclient.notify(player,lang.dmv.police.no_license())
        end
	  else
	    vRPclient.notify(player,lang.dmv.police.no_license())
      end
    else
      vRPclient.notify(player,lang.common.request_refused())
    end
  else
    vRPclient.notify(player,lang.common.no_player_near())
  end
end, lang.dmv.police.take_desc()}

Citizen.CreateThread(function()
  vRP.registerMenuBuilder("police", function(add, data)
    local player = data.player
  
    local user_id = vRP.getUserId(player)
    if user_id ~= nil then
      local choices = {}
	  
      if vRP.hasPermission(user_id,lang.dmv.police.perm_ask()) then
         choices[lang.dmv.police.check()] = choice_asklc
      end
	  
      if vRP.hasPermission(user_id,lang.dmv.police.perm_take()) then
         choices[lang.dmv.police.take()] = choice_takelc
      end
  	
      add(choices)
    end
  end)
end)