
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=200,
    units_per_minute=5,
    x=2208.777,y=5578.235,z=53.735, -- pos
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA    
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=5,
    x=79.686859130859,y=3705.6840820313,z=41.077156066895, -- Localização
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher cristal de fósforo.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },  
  -- PROCESSADOR DE METANFETAMINA
  {
    name="Processador de Metanfetamina", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1314.4907226563,y=-450.43096923828,z=69.717422485352, -- pos
    radius=5.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["crystalmelamine"] = 1
	    },
        products={ -- items given per unit
          ["metanfetamina"] = 2
        }
      }
    }
  },  
  -- CAMPO DE COCAINA    
  {
    name="Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=5,
    x=-41.372623443604,y=3033.3776855469,z=41.020195007324, -- Localização
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher folha de Coca.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["folhadecoca"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE COCAINA
  {
    name="Processador de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=471.25631713867,y=-1685.3825683594,z=29.381580352783, -- pos
    radius=5.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["folhadecoca"] = 1
	    },
        products={ -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  -- CAMPO DE MINERIO
  {
    name="Campo de Minerio", -- Nome do menu
    permissions = {"campodeminerio"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=2,
    x=1534.5666503906,y=6327.1376953125,z=24.215845108032, -- Localização    
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher pedras para lavagem.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["Pedra"] = 1
        }
      }
    }
  },
-- Carro Forte
  {
    name="Cofre", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=253.90089416504,y=225.21408081055,z=101.87578582764,
    radius=2, height=1.0, -- area
    recipes = {
      ["Dinheiro do Banco"] = { -- action name
       description="Pegar dinheiro do banco.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  -- PROCESSADOR DE MINERIO
  {
    name="Lavagem de Minerio", -- menu name
    permissions = {"lavagemdeminerio"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=2, -- unidades que o transformador ganha de volta por minuto
    x=-554.48089599609,y=5324.0986328125,z=73.599700927734, -- pos
    radius=7.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Lavagem de Pedra"] = { -- action name
        description="Produzir minerio...", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Pedra"] = 1
        },
        products={ -- items given per unit
          ["Minerio"] = 1
        }
      }
    }
  },
  {
    name="Porte de Arma", -- menu name
	permissions = {"comprar.portedearma"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=437.178802490234,y=-994.613525390625,z=30.6895904541016,
    radius=2, height=1.0, -- area
    recipes = {
      ["Porte de Arma"] = { -- action name
       description="comprar porte de arma.", -- action description
        in_money=25000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["portedearma"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  -- CAMPO DE COLETA DE ORGAO    
  {
    name="Cemitério", -- Nome do menu
    permissions = {"harvest.orgao"}, -- Você pode adicionar permissões
    r=80,g=80,b=80, -- cor
    max_units=200,
    units_per_minute=5,
    x=-1763.0335693359,y=-262.72265625,z=48.2092628479, -- Localização
    radius=7.5, height=1.0, -- area
    recipes = {
      ["Cavar"] = { -- Nome da ação
        description="Cavar em busca de pedaços de corpo humano.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["pedacocorpohumano"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE ORGAO
  {
    name="Processador de Órgãos", -- menu name
    permissions = {"process.orgao"}, -- you can add permissions
    r=80,g=80,b=80, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=985.84222412109,y=-2123.5788574219,z=30.475454330444, -- pos
    radius=5.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Separar pedaços"] = { -- action name
        description="Separar os ossos da carne humana.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["pedacocorpohumano"] = 1
	    },
        products={ -- items given per unit
          ["carnehumana"] = 1,
		  ["ossohumano"] = 2
        }
      }
    }
  },
  -- PROCESSADOR DE ORGAO
  {
    name="Venda de Órgãos", -- menu name
    permissions = {"sell.orgao"}, -- you can add permissions
    r=80,g=80,b=80, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-605.45281982422,y=-1677.7512207031,z=19.645030975342, -- pos
    radius=5.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Separar pedaços"] = { -- action name
        description="Separar os ossos da carne humana.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["carnehumana"] = 1,
		  ["ossohumano"] = 1
	    },
        products={ -- items given per unit
          ["dirty_money"] = 165
        }
      }
    }
  },
  {
    name="Computador Especializado", -- Nome do menu
    permissions = {"harvest.cartaoclonado"}, -- Você pode adicionar permissões
    r=35,g=255,b=176, -- cor
    max_units=200,
    units_per_minute=10,
    x=1275.5678710938,y=-1710.49609375,z=54.771457672119, -- Localização
    radius=2.0, height=1.0, -- area
    recipes = {
      ["Hackear cartões"] = { -- Nome da ação
        description="Hackear cartões de pessoas ao longo do mundo.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["cartaoclonado"] = 1
        }
      }
    }
  },
  {
    name="Prateleira de Peças", -- Nome do menu
    permissions = {"harvest.pecasdecarro"}, -- Você pode adicionar permissões
    r=255,g=35,b=176, -- cor
    max_units=200,
    units_per_minute=10,
    x=1202.3380126953,y=-3121.2717285156,z=5.5403203964233, -- Localização
    radius=2.0, height=1.0, -- area
    recipes = {
      ["Pegar objetos"] = { -- Nome da ação
        description="Pegar objetos roubados.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["peçadecarru"] = 2,
		  ["pineudecarru"] = 1
        }
      }
    }
  },
  {
    name="OAB", -- menu name
	permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-1555.489868164,y=-575.13092041016,z=108.53787994384,
    radius=2, height=1.0, -- area
    recipes = {
      ["OAB"] = { -- action name
       description="Carteira de Advogado.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["oab"] = 1
		}
	  }
    }
  },  
  {
    name="Processar Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-781.90240478516,y=578.94976806641,z=126.74822235107, -- pos
    radius=5.5, height=1.0, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["weed"] = 1
		},
        products={ -- items given per unit
		  ["cannabis"] = 2
		}
      }
	}
  }
}



-- define multiple static transformers with postions list
local weedplants = {
  {1873.36901855469,3658.46215820313,33.8029747009277},
  {1856.33776855469,3635.12109375,34.1897926330566},
  {1830.75390625,3621.44140625,33.8487205505371},
  {1784.70251464844,3579.93798828125,34.7956123352051},
  {182.644317626953,3315.75537109375,41.4806938171387},
  {1764.65661621094,3642.916015625,34.5866050720215},
  {1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.0, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
