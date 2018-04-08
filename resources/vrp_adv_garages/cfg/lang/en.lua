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
  garage = {
    buy = {
	  item = "{2} {1}<br /><br />{3}",
	  request = "Você tem certeza que quer comprar este veículo?",
	},
    keys = {
	  title = "Chaves",
	  key = "Chave ({1})",
	  description = "Verifique suas chaves",
	  sell = {
	    title = "Vender",
		prompt = "Valor da oferta:",
	    owned = "Veículo já possuído.",
		request = "Você aceita a oferta de comprar um {1} por {2}?",
		description = "Cria uma oferta de venda para o jogador mais próximo."
	  }
	},
    personal = {
	  client = {
	    locked = "Veículo trancado",
		unlocked = "Veículo destrancado"
	  },
	  out = "Já há um veículo deste do lado de fora.",
	  bought = "Veículo retirado",
	  sold = "Veículo vendido",
	  stored = "Veículo guardado",
	  toofar = "Veículo muito distante"	  
	},
	showroom = {
	  title = "Galeria",
	  description = "Pressione DIREITA para ver o carro e ENTER para comprá-lo."
	},
    shop = {
	  title = "Loja",
	  description = "Explore as modificações do veículo.",
	  client = {
	    nomods = "~r~Não há nenhuma modificação para este veículo",
		maximum = "Você atingiu o máximo desta modificação, ~y~maximum~w~.",
		minimum = "Você atingiu o mínimo desta modificação, ~y~minimum~w~.",
	    toggle = {
		  applied = "~g~Modificação adicionada.",
		  removed = "~r~Modificação removida."
		}
	  },
	  mods = {
	    title = "Modificações",
		info = "Scroll through modifications",
	  },
	  repair = {
	    title = "Consertar veículo",
		info = "Arrume os danos em seu veículos",
	  },
	  colour = {
	    title = "Coloração",
		info = "Explore as colorações do veículo",
		primary = "Cor primária",
		secondary = "Cor secundária",
	    extra = {
		  title = "Cor extra",
		  info = "Explore as colorações extra",
	      pearlescent = "Cor perolada",
	      wheel = "Cor da roda",
	      smoke = "Cor da fumaça",
		},
		custom = {
		  primary = "Cor primária personalizada",
		  secondary = "Cor secundária personalizada",
		},
	  },
	  neon = {
	    title = "Neon",
		info = "Disposições do neon",
	    front = "Neon dianteiro",
	    back = "Neon traseiro",
	    left = "Neon esquerdo",
	    right = "Neon direito",
	    colour = "Cor do neon"
	  }
	}
  }
}

return lang
