
local cfg = {}

-- PCs positions
cfg.pcs = {
  {442.04299926758, -977.76538085938, 30.689607620239}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 90, -- min time in seconds
  max_time = 300, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
cfg.seizable_items = {
"weed",
"folhadecoca",
"cocaina",
"crystalmelamine",
"metanfetamina",
"cannabis",
"pedacocorpohumano",
"carnehumana",
"ossohumano",
"bank_money",
"cartaoclonado",
"peçadecarru",
"pineudecarru"
 }

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
 ["Atropelamento"] = 0,
 ["Alta Velocidade"] = 500,
 ["Direção Perigosa"] = 600,
 ["Ultrapassar Sinal Vermelho"] = 100,
 ["Andar sem capacete"] = 100,
 ["Dirigir sem habilitação"] = 5000,
 ["Andar com veículo danificado"] = 500,
 ["Estacionar em local proibido"] = 150,
 ["Dirigir embriagado"] = 8000,
 ["Traje balístico"] = 0,
 ["Colete balístico"] = 0,
 ["Máscara"] = 400,
 ["Capacete balístico"] = 800,
 ["Formação de Quadrilha"] = 0,
 ["Sequestro"] = 0,
 ["Porte Ilegal de Armas"] = 0,
 ["Tentativa de Roubo ao Banco"] = 0,
 ["Resistência a prisão"] = 0,
 ["Omissão de socorro"] = 500,
 ["Dano ao patrimônio"] = 3000,
 ["Difamação"] = 8000,
 ["Furto"] = 500,
 ["Fraude"] = 500,
 ["Desacato a autoridade"] = 300,
 ["Extorsão"] = 0,
 ["Falsidade Ideológica"] = 0,
 ["Calúnia"] = 0,
 ["Suborno"] = 0,
 ["Atentado ao pudor"] = 5000,
 ["Poluição Sonora"] = 1000,
 ["Furto de viatura"] = 0,
 ["Furto de veículo"] = 0,
 ["Homicídio doloso"] = 0,
 ["Homicídio culposo"] = 0,
 ["Tentativa de homicídio"] = 0,
 ["Latrocínio"] = 0,
 ["Estupro"] = 0,
 ["Genocídio"] = 0,
 ["Corrupção"] = 0,
 ["Tráfico de armas"] = 0,
 ["Tráfico de drogas"] = 500,
 ["Porte de dinheiro sujo"] = 0
}

return cfg
