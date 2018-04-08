
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local rota1 = { model = "s_m_y_ranger_01" }
local rota2 = { model = "s_m_y_sheriff_01" }
local rota3 = { model = "s_m_y_swat_01" }
local rota4 = { model = "s_m_y_blackops_01" }
local uniforme_samu = { model = "s_m_m_paramedic_01"}


-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["rota"] = {
    _config = { permissions = {"policia.cloakroom"} },
	["Uniforme Policia 1"] = rota1,
	["Uniforme Policia 2"] = rota2,
	["Uniforme Policia 3"] = rota3,
	["Uniforme Policia 4"] = rota4
  },
  ["emergency"] = {
    _config = { permissions = {"samu.cloakroom"} },
    ["Uniforme SAMU"] = uniforme_samu
  },
  ["Advogado"] = {
    _config = { permissions = {"advogado.cloakroom"} },
    ["Terno M."] = {
	  [3] = {1,0},
	  [4] = {10,0},
	  [6] = {10,0},
	  [8] = {4,0},
	  [11] = {10,0},
	  ["p2"] = {-1,0}       
    },
    ["Terno F."] = {
	  [3] = {0,0},
	  [4] = {37,0},
	  [6] = {13,0},
	  [8] = {21,1},
	  [11] = {24,3},
	  ["p2"] = {-1,0}
    }
},  
  ["Escolher Sexo"] = {
    _config = { not_uniform = true },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  }
}

cfg.cloakrooms = {
  {"rota",457.53500366211,-991.83148193359,30.689584732056},
  {"Advogado",105.48087310791,-1088.82177734375,29.3024787902832},  
  {"Escolher Sexo",230.81727600098,-405.87521362305,47.924365997314},
  {"emergency",269.77987670898,-1363.4407958984,24.537780761719}
}

return cfg

