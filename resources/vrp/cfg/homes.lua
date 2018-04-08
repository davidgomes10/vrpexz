
local cfg = {}

-- example of study transformer
local itemtr_study = {
  name="Estante de Livros", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Livros de Produtos Quimicos"] = { -- action name
      description="Leia um livro de produtos Quimicos", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["Livros de Matemática"] = { -- action name
      description="Leia um Livro de Matemática", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    }
  }
}

----------------------------------------------------------------------------------------- laboratory
local itemtr_laboratory = {
  name="Mesa de Processamento", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=20,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Cocaina"] = { -- action name
      description="Processar Cocaina", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["folhadecoca"] = 1
	  
	  },
      products={ -- items given per unit
	  ["cocaina"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
    ["Cocaina (x5)"] = { -- action name
      description="Processar Cocaina (x5)", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["folhadecoca"] = 5
	  
	  },
      products={ -- items given per unit
	  ["cocaina"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
    ["Metanfetamina"] = { -- action name
      description="Processar Metanfetamina", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["crystalmelamine"] = 1
	  
	  },
      products={ -- items given per unit
	  ["metanfetamina"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
    ["Metanfetamina (x5)"] = { -- action name
      description="Processar Metanfetamina (x5)", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["crystalmelamine"] = 5
	  
	  },
      products={ -- items given per unit
	  ["metanfetamina"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },	
	["Maconha"] = { -- action name
      description="Processar Maconha", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["weed"] = 1
	  },
      products={ -- items given per unit
	  ["cannabis"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
	["Maconha (x5)"] = { -- action name
      description="Processar Maconha (x5)", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["weed"] = 5
	  },
      products={ -- items given per unit
	  ["cannabis"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
  }
}

-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=200}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"gametable",-755.40185546875,318.263214111328,221.875823974609},
	  {"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
      {"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=200}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"gametable",-800.763427734375,338.574951171875,206.239105224609},
	  {"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
      {"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543}
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=200}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"gametable",-801.228942871094,339.106231689453,158.619750976563},
	  {"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
      {"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805}
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=200}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"gametable",-623.078796386719,63.688045501709,106.645317077637},
	  {"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
      {"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254}
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=200}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"gametable",-1476.12658691406,-534.873474121094,68.1748962402344},
	  {"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
      {"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586}
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=200}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"gametable",-1476.12670898438,-534.895751953125,55.547306060791},
	  {"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
      {"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672}
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=200}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"gametable",-934.216979980469,-378.082336425781,108.05859375},
	  {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
      {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293}
    },
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=200}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"gametable",-895.890075683594,-373.167846679688,84.0987701416016},
	  {"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
      {"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
    },
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=200}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"gametable",-459.870513916016,-682.054565429688,75.7051773071289},
	  {"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
      {"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
    },
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=200}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"gametable",-475.543884277344,-716.226867675781,52.0241050720215},
	  {"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
      {"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=500}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"gametable",-781.973083496094,338.788482666016,211.231979370117},
	  {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
      {"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898}
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=500}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"gametable",-606.140441894531,43.8849754333496,97.4350128173828},
	  {"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
      {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859}
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=500}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"gametable",-1466.37182617188,-546.663757324219,73.279052734375},
	  {"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
      {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453}
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=500}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"gametable",-908.407165527344,-379.825714111328,113.509590148926},
	  {"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
      {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395}
    }
  },
  ["fazenda_flat"] = {
    {
      {"entry",1396.9913330078,1141.8450927734,114.33367919922},
      {"chest",1398.0871582031,1164.1635742188,114.33367919922, _config = {weight=500}},
      {"wardrobe",1400.2038574219,1159.5600585938,114.33355712891},
      {"gametable",1397.1551513672,1132.1381835938,114.33355712891},
      {"itemtr", _config = itemtr_laboratory, 1393.8511962891,1145.1695556641,114.33367919922}
    }
  },
  ["casa1_flat"] = {
    {
      {"entry",-174.10354614258,497.32022094727,137.66696166992},
      {"chest",-174.37693786621,493.63809204102,130.04371643066, _config = {weight=800}},
      {"wardrobe",-167.42747497559,487.7958984375,133.84381103516},
      {"gametable",-165.07147216797,483.78701782227,137.26531982422},
      {"itemtr", _config = itemtr_laboratory, -175.00372314453,489.96774291992,130.04371643066}
    }
  },
  ["casa2_flat"] = {
    {
      {"entry",341.64733886719,437.40972900391,149.39405822754},
      {"chest",338.08242797852,436.81604003906,141.77076721191, _config = {weight=800}},
      {"wardrobe",334.31918334961,428.46383666992,145.57081604004},
      {"gametable",330.9817199707,425.03125,148.99258422852},
      {"itemtr", _config = itemtr_laboratory, 334.33459472656,436.2243347168,141.77076721191}
    }
  },
  ["casa3_flat"] = {
    {
      {"entry",373.74584960938,423.25018310547,145.90786743164},
      {"chest",376.92370605469,429.30517578125,138.30017089844, _config = {weight=800}},
      {"wardrobe",374.54263305664,411.5041809082,142.10012817383},
      {"gametable",373.52014160156,404.83322143555,145.52745056152},
      {"itemtr", _config = itemtr_laboratory, 379.07656860352,432.37295532227,138.30017089844}
    }
  },
  ["casa4_flat"] = {
    {
      {"entry",-682.23968505859,592.53051757813,145.39295959473},
      {"chest",-680.38427734375,588.95416259766,137.76976013184, _config = {weight=800}},
      {"wardrobe",-671.38696289063,587.29095458984,141.56988525391},
      {"gametable",-667.27911376953,585.09533691406,144.99156188965},
      {"itemtr", _config = itemtr_laboratory, -679.20172119141,585.43780517578,137.76976013184}
    }
  },
  ["casa5_flat"] = {
    {
      {"entry",-1289.6420898438,449.28283691406,97.902503967285},
      {"chest",-1287.9265136719,455.72882080078,90.294708251953, _config = {weight=800}},
      {"wardrobe",-1285.9825439453,438.18774414063,94.094734191895},
      {"gametable",-1285.4017333984,431.41772460938,97.522132873535},
      {"itemtr", _config = itemtr_laboratory, -1286.7156982422,459.36468505859,90.294708251953}
    }
	},
  ["casa_favela1"] = {
    {
      {"entry",730.16687011719,-240.80615234375,70.0458984375},
      {"chest",734.43762207031,-241.39289855957,70.04598236084, _config = {weight=100}},
      {"wardrobe",732.19384765625,-244.86827087402,70.046089172363}
    }
	},
  ["casa_favela2"] = {
    {
      {"entry",783.56341552734,-268.67071533203,76.405319213867},
      {"chest",788.20062255859,-267.95086669922,76.410667419434, _config = {weight=100}}
    }
	},
  ["casa_favela3"] = {
    {
      {"entry",796.06091308594,-265.61087036133,69.939666748047},
      {"chest",797.05480957031,-262.68240356445,69.939651489258, _config = {weight=100}},
      {"wardrobe",801.20544433594,-263.99609375,69.93985748291}
    }
	},
  ["casa_favela4"] = {
    {
      {"entry",714.32666015625,-275.23764038086,65.628868103027},
      {"chest",711.82745361328,-277.63824462891,65.628868103027, _config = {weight=100}}
    }
	},
  ["casa_favela5"] = {
    {
      {"entry",769.88421630859,-185.77947998047,77.947402954102},
      {"chest",767.18634033203,-184.23306274414,77.947402954102, _config = {weight=100}},
      {"wardrobe",768.77703857422,-180.63946533203,77.945411682129}
    }
	},
  ["casa_favela6"] = {
    {
      {"entry",806.04846191406,-204.13485717773,76.656517028809},
      {"chest",802.73358154297,-202.27416992188,76.656517028809, _config = {weight=100}},
      {"wardrobe",805.16101074219,-199.12562561035,76.665313720703}
    }
	},
  ["casa_favela7"] = {
    {
      {"entry",813.37969970703,-206.34288024902,82.924659729004},
      {"chest",816.48663330078,-204.58351135254,82.925506591797, _config = {weight=100}}
    }
	},
  ["casa_favela8"] = {
    {
      {"entry",849.32177734375,-281.3703918457,69.457382202148},
      {"chest",849.40051269531,-277.73428344727,69.461647033691, _config = {weight=100}},
      {"wardrobe",854.05554199219,-278.21252441406,69.461944580078}
    }
	},
  ["casa_favela9"] = {
    {
      {"entry",801.14086914063,-295.93371582031,69.901077270508},
      {"chest",804.81506347656,-294.98358154297,69.903472900391, _config = {weight=100}}
    }
	},
  ["casa_favela10"] = {
    {
      {"entry",866.23394775391,-316.84243774414,65.657264709473},
      {"chest",870.05773925781,-316.58926391602,65.657257080078, _config = {weight=100}},
      {"wardrobe",870.44464111328,-321.45776367188,65.657470703125}
    }
	},
  ["casa_favela11"] = {
    {
      {"entry",888.90496826172,-314.52749633789,68.110618591309},
      {"chest",892.44445800781,-313.81286621094,68.110626220703, _config = {weight=100}},
      {"wardrobe",892.98065185547,-318.02276611328,68.110778808594}
    }
	},
  ["casa_favela12"] = {
    {
      {"entry",1344.7584228516,-503.62609863281,77.458053588867},
      {"chest",1341.8326416016,-501.66662597656,77.458038330078, _config = {weight=100}},
      {"wardrobe",1345.0712890625,-497.89086914063,77.45825958252}
    }
	},
  ["casa_favela13"] = {
    {
      {"entry",1379.1744384766,-502.91259765625,84.847351074219},
      {"chest",1383.0070800781,-502.27111816406,84.851470947266, _config = {weight=100}}
    }
	},
  ["casa_favela14"] = {
    {
      {"entry",1375.2176513672,-601.06658935547,78.387405395508},
      {"chest",1371.2564697266,-602.35430908203,78.387321472168, _config = {weight=100}},
      {"wardrobe",1370.3393554688,-597.80352783203,78.387519836426}
    }
	},
  ["casa_favela15"] = {
    {
      {"entry",1378.0747070313,-557.36242675781,84.853569030762},
      {"chest",1381.1691894531,-555.83380126953,84.855804443359, _config = {weight=100}}
    }
	},
  ["casa_favela16"] = {
    {
      {"entry",1324.0279541016,-536.9052734375,86.223701477051},
      {"chest",1322.6193847656,-541.23590087891,86.223747253418, _config = {weight=100}}
    }
	},
  ["casa_favela17"] = {
    {
      {"entry",1314.3848876953,-573.75274658203,75.97770690918},
      {"chest",1310.2215576172,-572.31616210938,75.978790283203, _config = {weight=100}},
      {"wardrobe",1312.9901123047,-568.34851074219,75.977928161621}
    }
	},
  ["casa_favela18"] = {
    {
      {"entry",1305.9488525391,-534.41510009766,74.98454284668},
      {"chest",1309.5733642578,-534.91241455078,75.249572753906, _config = {weight=100}},
      {"wardrobe",1308.4875488281,-539.2421875,74.98509979248}
    }
	},
  ["casa_favela19"] = {
    {
      {"entry",1255.2525634766,-499.43618774414,79.695739746094},
      {"chest",1252.7946777344,-496.33651733398,79.698417663574, _config = {weight=100}}
    }
	},
  ["casa_favela20"] = {
		{
      {"entry",1377.1219482422,-763.3828125,70.919158935547},
      {"chest",1374.1007080078,-763.39166259766,70.919136047363, _config = {weight=100}},
      {"wardrobe",1372.9178466797,-759.54046630859,70.919319152832}
		}
	},
  ["casa_favela21"] = {
    {
      {"entry",1343.8121337891,-714.35888671875,70.641502380371},
      {"chest",1346.2926025391,-715.76123046875,70.641502380371, _config = {weight=100}},
      {"wardrobe",1345.6361083984,-719.61871337891,70.641639709473}
    } 
	},
	["casa_favela22"] = {
		{
      {"entry",1276.4575195313,-660.47137451172,70.972755432129},
      {"chest",1275.4948730469,-657.57604980469,70.972755432129, _config = {weight=100}},
      {"wardrobe",1279.2586669922,-656.02514648438,70.97290802002}
		}
	},
  ["casa_chefedomorro"] = {
    {
      {"entry",760.43298339844,-199.13386535645,70.342926025391},
      {"chest",765.18493652344,-200.56939697266,70.342918395996, _config = {weight=200}},
      {"wardrobe",762.22106933594,-204.54112243652,70.343139648438}
    },
  }
}


-- define home clusters
cfg.homes = {
  ["Apartamento Simples 1"] = {
    slot = "basic_flat",
    entry_point = {-618.73333740234,37.5940284729,43.591003417969},
    buy_price = 150000,
    sell_price = 80000,
    max = 99,
    blipid=476,
    blipcolor=4
  },
  ["Apartamento Simples 2"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 150000,
    sell_price = 80000,
    max = 99,
    blipid=476,
    blipcolor=4
  },
  ["Fazenda"] = {
    slot = "fazenda_flat",
    entry_point = {1394.7622070313,1141.7633056641,114.61884307861},
    buy_price = 350000,
    sell_price = 150000,
    max = 1,
    blipid=40,
    blipcolor=4
  },
  ["Casa do chefe do morro"] = {
    slot = "casa_chefedomorro",
    entry_point = {762.08746337891,-206.27938842773,66.114463806152},
    buy_price = 350000,
    sell_price = 100000,
    max = 1
  },
  ["Casa no morro 1"] = {
    slot = "casa_favela1",
    entry_point = {731.99176025391,-247.33169555664,66.286079406738},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 2"] = {
    slot = "casa_favela2",
    entry_point = {787.63195800781,-272.32501220703,66.496147155762},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 3"] = {
    slot = "casa_favela3",
    entry_point = {803.5810546875,-264.19393920898,66.124687194824},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 4"] = {
    slot = "casa_favela4",
    entry_point = {771.94763183594,-179.77696228027,74.735076904297},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 5"] = {
    slot = "casa_favela5",
    entry_point = {805.08184814453,-196.47471618652,72.920845031738},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 6"] = {
    slot = "casa_favela6",
    entry_point = {816.83502197266,-209.60583496094,73.012939453125},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 7"] = {
    slot = "casa_favela7",
    entry_point = {855.90020751953,-277.02435302734,65.71240234375},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 8"] = {
    slot = "casa_favela8",
    entry_point = {899.85015869141,-279.56262207031,66.380584716797},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 9"] = {
    slot = "casa_favela9",
    entry_point = {805.17797851563,-293.73675537109,66.593696594238},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 10"] = {
    slot = "casa_favela10",
    entry_point = {871.71392822266,-323.45837402344,62.230930328369},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 11"] = {
    slot = "casa_favela11",
    entry_point = {894.69390869141,-320.4850769043,64.62287902832},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 12"] = {
    slot = "casa_favela12",
    entry_point = {1344.5198974609,-496.37661743164,72.714897155762},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 13"] = {
    slot = "casa_favela13",
    entry_point = {1377.4584960938,-507.91470336914,74.04963684082},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 14"] = {
    slot = "casa_favela14",
    entry_point = {1368.9270019531,-596.21752929688,74.337799072266},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 15"] = {
    slot = "casa_favela15",
    entry_point = {1377.5279541016,-562.90863037109,74.470932006836},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 16"] = {
    slot = "casa_favela16",
    entry_point = {1324.0112304688,-544.73577880859,72.331512451172},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 17"] = {
    slot = "casa_favela17",
    entry_point = {1312.4696044922,-565.69635009766,72.049278259277},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 18"] = {
    slot = "casa_favela18",
    entry_point = {1309.0194091797,-541.44525146484,71.249801635742},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
   ["Casa no morro 19"] = {
    slot = "casa_favela19",
    entry_point = {1258.2731933594,-494.10958862305,69.428352355957},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 20"] = {
    slot = "casa_favela20",
    entry_point = {1371.8668212891,-757.61181640625,67.190299987793},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 21"] = {
    slot = "casa_favela21",
    entry_point = {1346.8022460938,-721.81420898438,66.984977722168},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Casa no morro 22"] = {
    slot = "casa_favela22",
    entry_point = {1281.0942382813,-653.83093261719,67.450500488281},
    buy_price = 80000,
    sell_price = 30000,
    max = 1
  },
  ["Apartamento de luxo"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 250000,
    sell_price = 150000,
    max = 10,
    blipid=475,
    blipcolor=5
  }
}

return cfg
