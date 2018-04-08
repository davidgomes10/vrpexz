--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]


local lang = {
	blips = {
		button = "@Blips",
		perm = "admin.blips",
		desc = "Toggle blips.",
		on = "~g~Blips enabled.",
		off = "~r~Blips disabled.",
	},
	bodyarmor = {
		id = "body_armor",
		name = "Body Armor",
		desc = "Intact body armor.",
		equip = "Equipar",
		damaged = "That body armor is damaged.",
		store = {
			button = "♣ Guardar Colete",
			perm = "store.bodyarmor",
			desc = "Guardar Colete.",
		},
	},
	crun = {
		button = "@Crun",
		perm = "admin.crun",
		desc = "Execute a function locally.",
		prompt = "Local Function:",
	},
	cuff = {
		button = "Algemar",
		perm = "police.bmcuff",
		desc = "DA/AG Jogador Próximo .",
		file = "cuff.log",
		log = "{1} cuffed {2}",		
	},
	deleteveh = {
		button = "@Delete Vehicle",
		perm = "admin.deleteveh",
		desc = "Delete a vehicle.",
		success = "~g~Vehicle deleted.",
		toofar = "~r~Too far away from vehicle.",
	},
	drag = {
		button = "Drag",
		perm = "police.drag",
		desc = "Drags nearby cuffed player.",
	},
	emergenc_heal = {
		first = "Take",
	},
	emergenc_medkit = {
		first = "Take",
	},
	fine = {
		button = "Multar",
		perm = "police.bmfine",
		desc = "Multa um jogador nas proximidades.",
		prompt = {
			amount = "Valor da Multa:",
			reason = "Motivo da Multa:",
		},
		file = "fine.log",
		log = "{1} fined {2} for ${3} - {4}",
		sent = {
			bad = "~r~You were sent to jail!",
			good = "~g~Player sent to jail.",
		},
	},
	fixhaircut = {
		button = "Fix Haircut",
		perm = "player.fixhaircut",
		desc = "Fix the barbershop bug.",
	},
	freeze = {
		button = "Freeze",
		perm = "police.freeze",
		desc ="Freezes nearby player.",
		admin = "freeze.admin",
		prompt = "User ID:",
		notify = "~g~Player un/frozen.",
		frozen = "~r~You've been frozen.",
		unfrozen = "~g~You've been unfrozen.",
	},
	godmode = {
		button = "@Godmode",
		perm = "admin.godmode",
		desc = "Toggle godmode.",
		on = "~g~Godmode activated!",
		off = "~r~Godmode deactivated!",
	},
	hacker = {
		button = "Hack",
		perm = "hacker.hack",
		desc = "Attempt to hack a nearby player.",
		hacked = "~r~Someone hacked ${1} of your bank!",
		failed = {
			good = "~g~Hacking attempt failed!",
			bad = "~r~Hacking attempt failed!",
		},
	},
	inspect = {
		button = "Inspect",
		perm = "player.inspect",
		desc = "Inspect neaby player inventory.",
	},
	jail = {
		button = "Prender",
		perm = "police.bmjail",
		desc = "Prende um jogador algemado.",
		free = "~b~Você foi liberado.",
		resent = "~r~Terminou sua sentença.",
		rejailer = "Efetuou login/sair",
		timer = "Tempo Faltando: {1} minuto(s).",
		prompt = "Tempo de sentença:",
		file = "jail.log",
		log = "{1} enviou {2} para prisão por {3}",
		sent = {
			bad = "~r~Você foi enviado para a prisão!",
			good = "~g~Jogador foi enviado para a prisão.",
		},
	},
	lockpick = {
		id = "lockpicking_kit",
		name = "Lockpicking Kit",
		button = "Lockpick",
		perm = "carjacker.lockpick",
		desc = "Lockpick nearby vehicle.",
		success = "~g~Vehicle unlocked.",
		toofar = "~r~Too far away from vehicle.",
		unlocked = "~g~Vehicle already unlocked.",
	},
	loot = {
		button = "💰 Saquear",
		perm = "player.loot",
		desc = "Saquear jogador Proximo.",
	},
	mcharge = {
		button = "Mobile Charge",
		perm = "mobile.charge",
		desc = "Charge payments with your phone.",
		charger = "~g~You charged ~y~${2}~g~ of ~b~{1}.",
		charged = "~g~You've been charged ~r~${2} of ~b~{1}.",
		log = "{1} charged {2} => banks: {1}:{3} | {2}:{4}",
		file = "mCharge.log",
		prompt = "Value to charge {1}:",
		request = "Accept payment of {2} to {1}?",
		refused = "~b~{1} ~r~refused the charge.",
		not_enough = "~b~{1} ~r~doesn't have enough money!",
		type = {
			desc = "Type phone manually.",
			button = ">Type number",
			prompt = "Phone Number:",
		},
	},
	money = {
		store = {
			button = "Guardar Dinheiro",
			perm = "store.money",
			desc = "Guardar Dinheiro.",
		},
	},
	mpay = {
		button = "Mobile Pay",
		perm = "mobile.pay",
		desc = "Make payments with your phone.",
		transferred = "~g~You transfered ~r~${1}~g~ to ~b~{2}.",
		received = "~g~You've received ~y~${2} from ~b~{1}.",
		log = "{1} transferred to {2} => banks: {1}:{3} | {2}:{4}",
		file = "mPay.log",
		prompt = "Value to pay {1}:",
		not_enough = "~b~{1} ~r~doesn't have enough money!",
		type = {
			desc = "Type phone manually.",
			button = ">Type number",
			prompt = "Phone Number:",
		},
	},
	mugger = {
		button = "Mug",
		perm = "mugger.mug",
		desc = "Attempt to mug a nearby player.",
		mugged = "~r~Someone mugged ${1} of your wallet!",
		failed = {
			good = "~g~Mugging attempt failed!",
			bad = "~r~Mugging attempt failed!",
		},
	},
    player = {
        button = "🤴 Jogador",
        perm = "player.menu",
        desc = "Menu do Jogador.",
    },
	police_weapons = {
		first = "Equipar",
	},
	service = {
		button = "Serviços",
		perm = "mission.service",
		desc = "Toggle random missions.",
		group = "onservice",
		on = "~g~Hab. Serviços",
		off = "~r~Des. Serviços",
	},
	spawnveh = {
		button = "@Spawn Vehicle",
		perm = "admin.spawnveh",
		desc = "Spawn a vehicle.",
		prompt = "Vehicle Model:",
		load = "~b~Loading vehicle model.",
		success = "~g~Vehicle spawned.",
		invalid = "~r~Vehicle model invalid.",
	},
	spikes = { 
		button = "Espinhos",
		perm = "police.spikes",
		desc = "Deploy/carry spikes.",
		admin = "spikes.admin",
		nocarry = "~r~You can't carry any more spike traps!",
		nodeploy = "~r~You can't deploy any more spike traps!",
	},
	sprites = {
		button = "@Sprites",
		perm = "admin.sprites",
		desc = "Toggle sprites.",
		on = "~g~Sprites enabled.",
		off = "~r~Sprites disabled.",
	},
	srun = {
		button = "@Srun",
		perm = "admin.srun",
		desc = "Execute a function remotelly.",
		prompt = "Remote Function:",
	},
	tptowaypoint = {
		button = "@TpToWaypoint",
		perm = "admin.tptowaypoint",
		desc = "Teleport to the purple waypoint.",
		notfound = "~r~Map marker not found!",
		success = "~g~Teleported to waypoint.",
	},
	unjail = {
		button = "Soltar Vagabundo",
		perm = "police.bmunjail",
		desc = "Soltar vagabundo da cadeia.",
		admin = "unjail.admin",
		prompt = "ID do Marginal:",
		released = "~g~Você liberou um jogador de sua sentença.",
		lowered = "~g~Sua sentença foi reduzida.",
		file = "jail.log",
		log = "{1} soltou {2} com {3} minutos faltando",
	},
	userlist = {
		button = "Lista de Usuarios",
		perm = "player.userlist",
		desc = "Toggle User List",
		format = "[{1}]{2}  |  ",
		nearby = "Nearby Players: {1}",
	},
	weapons = {
		store = {
			button = "🔫 Guardar Armamento",
			perm = "store.weapons",
			desc = "Guardar Armamento.",
		},
	},
}

return lang