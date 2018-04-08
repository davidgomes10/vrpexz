
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["superadmin"] = {
	"player.list",
	"comuns.garagem",
	"player.whitelist",
	"player.unwhitelist",
	"player.group.add",
	"player.group.remove",
	"player.kick",
	"player.ban",
	"player.unban",
	"player.custom_emote",
	"player.custom_sound",
	"admin.tickets",
	"player.coords",
	"player.noclip",
	"player.tptome",
	"player.tpto",
	"player.givemoney",
	"player.giveitem",
	"player.calladmin",
	"player.display_custom",
	"admin.deleteveh",
	"admin.spawnveh",
    "admin.announce",
	"admin.tptowaypoint",
	"admin.spikes",
	"admin.godmode",
	"admin.weapons",
    "police.menu",
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "police.check",
    "player.calladmin",
	"emergency.heal",
    "police.seizable",
	"player.mascara",
	"player.menu",
	"player.JplayerJ"
	},
  ["admin"] = {
    "admin.tickets",
    "admin.announce",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
	"admin.deleteveh",
	"admin.spawnveh",
	"admin.godmode",
	"admin.tptowaypoint",
	"admin.spikes",
    "police.menu",
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "police.check",
    "player.calladmin",
	"emergency.heal",
    "police.seizable",
	"player.mascara",
	"player.menu",
	"player.JplayerJ"
  },
  ["moderador"] = {
    "player.group.add",
    "player.group.remove",
	"player.whitelist",
	"player.unwhitelist",
    "player.noclip",
    "player.tptome",
    "player.list",
    "player.kick",
    "player.tpto",
    "police.menu",
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "police.check",
    "player.calladmin",
	"emergency.heal",
    "police.seizable",
	"player.mascara",
	"player.menu",
	"player.JplayerJ"
  },  
  ["suporte"] = {
	"player.list",
	"player.kick",
	"admin.tickets",
	"player.coords",
	"player.noclip",
	"player.tptome",
	"player.tpto",
	"player.calladmin",
    "admin.announce",
	"admin.tptowaypoint",
	"admin.spikes",
    "police.menu",
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "police.check",
    "player.calladmin",
	"emergency.heal",
    "police.seizable",
	"player.mascara",
	"player.menu",
	"player.JplayerJ"
	},  
  -- the group user is auto added to all logged players
  ["user"] = {
	"player.phone",
    "player.calladmin",
    "police.askid",
    "police.menu",
    "player.menu",
    "store.money",
    "player.fixhaircut",
    "store.weapons",
    "store.bodyarmor",
    "player.inspect",
    "player.loot",
    "player.check",
    "emergency.heal",
    "police.seizable",
    "player.mascara",
    "player.JplayerJ"	-- can be seized
  }, 
  ["[SAMU] Paramédico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
	"emergency.heal",
    "emergency.service",
	"hospital.garagem",
	"helihospital.garagem",
	"emergency.medkit",
	"paramedico.paycheck",
	"mission.emergency.transfer",
	"samu.cloakroom"
  },
  ["Mecânico"] = {
    _config = { gtype = "job"},
    "vehicle.repair",
    "vehicle.replace",
	"repair.paycheck",
	"reparacao.mecanico",
	"mission.repair.wind_turbines",
    "repair.service",
	"repair.garagem"
  },
  ["Uber"] = {
    _config = { gtype = "job" },
    "taxi.service",
	"taxi.paycheck",
	"mission.taxi.passenger",
  },
  ["Entregador"] = {
    _config = { gtype = "job" },
	"delivery.paycheck",
	"delivery.service",
    "entregarcomida",
	"delivery.garagem"
  },
  ["Ladrão de Carros"] = {
    _config = { gtype = "job" },
    "mission.carjack.vehicle"
  },
  ["Traficante de Maconha"] = {
    _config = { gtype = "job" },
	"harvest.weed",
	"process.weed",
	"entregarmacnha",
	"mission.delivery.pot"
  },
  ["Traficante de Metanfetamina"] = {
    _config = { gtype = "job" },
	"harvest.metanfetamina",
	"process.metanfetamina",
	"entregarmeta",
	"mission.delivery.pot3"
  },  
  ["Traficante de Cocaina"] = {
    _config = { gtype = "job" },
	"process.cocaina",
	"harvest.cocaina",
	"entregarcoca",
	"mission.delivery.pot2"
  },  
  ["Assassino Profissional"] = {
    _config = { gtype = "job" },
	"hitman.takebounty",
    "-hitman.addbounty",
	"-player.blips",
	"mission.hitman"
  },
  ["Hacker"] = {
    _config = { gtype = "job" },
	"-player.blips",
	"hacker.hack",
	"harvest.cartaoclonado",
	"cartaoclocandoentraga"
  },
  ["Assaltante"] = {
    _config = { gtype = "job" },
	"-player.blips",
	"mugger.mug"
  },
  ["Advogado"] = {
    _config = { gtype = "job" },
	"advogado.oab",
  "advogado.cloakroom",  
	"advogado.paycheck"
  },  
  ["Transportador de Valores"] = {
    _config = { gtype = "job"
	},
	"mission.bankdriver.moneybank",
	"mission.bankdriver.moneybank2",
	"bankdriver.vehicle",
	"bankdriver.paycheck",
	"bankdriver.money"
  },  
  ["Policia Militar"] = {
    _config = { 
      gtype = "job"
    },
	"police.asklc",
	"police.takelc",
	"comprar.portedearma",
	"emergency.revive",
	"grpae.garagem",
	"cor.garagem",
	"police.easy_jail",
	"police.easy_fine",
	"police.easy_cuff",
	"police.drag",
    "police.menu",
    "police.cloakroom",
    "police.pc",
	"police.spikes",
	"police.menu_interaction",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    
    "police.announce",
	"police.askid",
	"police.paycheckcoronel",
	"police.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Traficante de Órgãos"] = {
    _config = { gtype = "job" },
	"harvest.orgao",
	"process.orgao",
	"sell.orgao"
  },
  ["Desempregado"] = {
    _config = { gtype = "job" },
	"player.paycheck"
  },
  ["Sedex"] = {
    _config = { gtype = "job" },
	"sedex.paycheck",
	"sedex.permissao"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  },
  [2] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  },
  [3] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  },
  [4] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Agencia de Empregos"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
	"Uber",
	"Transportador de Valores",
    "Mecânico",
	"Entregador",
	"Advogado",
    "Desempregado",
	"Sedex",
	"Sedex"
  }, 	
  ["Empregos Ilegais"] = {
    _config = {x = 707.324462890625, y = -966.986511230469, z = 30.4128551483154, blipid = 351, blipcolor = 49},
	"Ladrão de Carros",
	"Traficante de Metanfetamina",
	"Traficante de Maconha",
	"Traficante de Cocaina",	
	"Traficante de Órgãos",
	"Hacker",
  } 
}

return cfg

