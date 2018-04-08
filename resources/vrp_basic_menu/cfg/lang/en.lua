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
		off = "~r~Blips disabled."
	},
	bodyarmor = {
		id = "body_armor",
		name = "Body Armor",
		desc = "Intact body armor.",
		equip = "Equip",
		damaged = "That body armor is damaged.",
		store = {
			button = "Guardar Colete",
			perm = "store.bodyarmor",
			desc = "Guardar Colete."
		}
	},
	crun = {
		button = "@Crun",
		perm = "admin.crun",
		desc = "Execute a function locally.",
		prompt = "Local Function:"
	},
	cuff = {
		button = "Algemar",
		perm = "police.bmcuff",
		desc = "Des/Algema um cidadão próximo.",
		file = "cuff.log",
		log = "{1} cuffed {2}",	
	},
	deleteveh = {
		button = "@Delete Vehicle",
		perm = "admin.deleteveh",
		desc = "Delete a vehicle.",
		success = "~g~Vehicle deleted.",
		toofar = "~r~Too far away from vehicle."
	},
	drag = {
		button = "Arrastar",
		perm = "police.drag",
		desc = "Drags nearby cuffed player."
	},
	emergenc_heal = {
		first = "Pegar"
	},
	emergenc_medkit = {
		first = "Pegar"
	},
	fine = {
		button = "Multar",
		perm = "police.bmfine",
		desc = "Multar jogador próximo.",
		prompt = {
			amount = "Valor:",
			reason = "Razão:"
		},
		file = "fine.log",
		log = "{1} multou {2} por ${3} - {4}",
		sent = {
			bad = "~r~Vocêê foi preso!",
			good = "~g~Vocêê prendeu um cidadão."
		}
	},
	fixhaircut = {
		button = "Desbugar Cabelo",
		perm = "player.fixhaircut",
		desc = "Fix the barbershop bug."
	},
	freeze = {
		button = "Freeze",
		perm = "police.freeze",
		desc ="Freezes nearby player.",
		admin = "freeze.admin",
		prompt = "User ID:",
		notify = "~g~Player un/frozen.",
		frozen = "~r~You've been frozen.",
		unfrozen = "~g~You've been unfrozen."
	},
	godmode = {
		button = "@Godmode",
		perm = "admin.godmode",
		desc = "Toggle godmode.",
		on = "~g~Godmode activated!",
		off = "~r~Godmode deactivated!"
	},
	hacker = {
		button = "Hackear",
		perm = "hacker.hack",
		desc = "Attempt to hack a nearby player.",
		hacked = "~r~Someone hacked ${1} of your bank!",
		failed = {
			good = "~g~Hacking attempt failed!",
			bad = "~r~Hacking attempt failed!"
		}
	},
	inspect = {
		button = "Inspecionar Jogador",
		perm = "player.inspect",
		desc = "Inspecionar Jogador."
	},
	jail = {
		button = "Prender Presidio",
		perm = "police.bmjail",
		desc = "Enviar um jogador .",
		free = "~b~Você agora está livre.",
		resent = "~r~Finalziar sua sentença.",
		rejailer = "Relogando",
		timer = "Tempo restante: {1} minuto(s).",
		prompt = "Tempo de sentença:",
		file = "jail.log",
		log = "{1} enviou {2} para a cadeia por {3}",
		sent = {
			bad = "~r~Você foi preso!",
			good = "~g~Cidadão enviado para a prisão."
		}
	},
	lockpick = {
		id = "lockpicking_kit",
		name = "Lockpicking Kit",
		button = "Lockpick",
		perm = "carjacker.lockpick",
		desc = "Lockpick nearby vehicle.",
		success = "~g~Vehicle unlocked.",
		toofar = "~r~Too far away from vehicle.",
		unlocked = "~g~Vehicle already unlocked."
	},
	loot = {
		button = "💰 Saquear",
		perm = "player.loot",
		desc = "Saquear um jogador próximo."
	},
	mcharge = {
		button = "Cobrança",
		perm = "mobile.charge",
		desc = "Cobre pagamentos via celular.",
		charger = "~g~Você cobrou ~y~${2}~g~ em ~b~{1}.",
		charged = "~g~Você foi cobrado ~r~${2} por ~b~{1}.",
		log = "{1} cobrou {2} => bancos: {1}:{3} | {2}:{4}",
		file = "mCharge.log",
		prompt = "Valor a cobrar {1}:",
		request = "Aceitar paagamento {2} de {1}?",
		refused = "~b~{1} ~r~recusou o pagamento.",
		not_enough = "~b~{1} ~r~não possui dinheiro!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Escreva o número",
			prompt = "Número:"
		}
	},
	money = {
		store = {
			button = "Guardar Dinheiro",
			perm = "store.money",
			desc = "Guardar Dinheiro."
		}
	},
	mpay = {
		button = "Pagamento",
		perm = "mobile.pay",
		desc = "Faça pagamentos via celular.",
		transferred = "~g~Você transferiu ~r~${1}~g~ para ~b~{2}.",
		received = "~g~Você recebeu ~y~${2} de ~b~{1}.",
		log = "{1} transferiu para {2} => bancos: {1}:{3} | {2}:{4}",
		file = "mPay.log",
		prompt = "Valor a pagar {1}:",
		not_enough = "~b~{1} ~r~não possui dinheiro suficiente!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Escreva o número",
			prompt = "Número:"
		}
	},
	mugger = {
		button = "Mug",
		perm = "mugger.mug",
		desc = "Attempt to mug a nearby player.",
		mugged = "~r~Someone mugged ${1} of your wallet!",
		failed = {
			good = "~g~Mugging attempt failed!",
			bad = "~r~Mugging attempt failed!"
		}
	},
    player = {
        button = "🤴 Jogador",
        perm = "player.menu",
        desc = "Menu do Jogador."
    },
	police_weapons = {
		first = "Equipar"
	},
	service = {
		button = "Serviços",
		perm = "mission.service",
		desc = "Toggle random missions.",
		group = "onservice",
		on = "~g~On Service",
		off = "~r~Off Service"
	},
	spawnveh = {
		button = "@Spawn Vehicle",
		perm = "admin.spawnveh",
		desc = "Spawn a vehicle.",
		prompt = "Vehicle Model:",
		load = "~b~Loading vehicle model.",
		success = "~g~Vehicle spawned.",
		invalid = "~r~Vehicle model invalid."
	},
	spikes = { 
		button = "Espinhos",
		perm = "police.spikes",
		desc = "Colocar/tirar espinhos.",
		admin = "spikes.admin",
		nocarry = "~r~You can't carry any more spike traps!",
		nodeploy = "~r~You can't deploy any more spike traps!"
	},
	sprites = {
		button = "@Sprites",
		perm = "admin.sprites",
		desc = "Toggle sprites.",
		on = "~g~Sprites enabled.",
		off = "~r~Sprites disabled."
	},
	srun = {
		button = "@Srun",
		perm = "admin.srun",
		desc = "Execute a function remotelly.",
		prompt = "Remote Function:"
	},
	tptowaypoint = {
		button = "@TpToWaypoint",
		perm = "admin.tptowaypoint",
		desc = "Teleport to the purple waypoint.",
		notfound = "~r~Map marker not found!",
		success = "~g~Teleported to waypoint."
	},
	unjail = {
		button = "Soltar cidadao",
		perm = "police.bmunjail",
		desc = "Soltar jogador.",
		admin = "unjail.admin",
		prompt = "User ID:",
		released = "~g~You released a player from his sentence.",
		lowered = "~g~Your sentence has been lowered.",
		file = "jail.log",
		log = "{1} unjailed {2} from {3} minutes remaining"
	},
	userlist = {
		button = "User List",
		perm = "player.userlist",
		desc = "Toggle User List",
		format = "[{1}]{2}  |  ",
		nearby = "Nearby Players: {1}"
	},
	weapons = {
		store = {
			button = "Guardar Armas",
			perm = "store.weapons",
			desc = "Store weapons."
		}
	}
}

return lang