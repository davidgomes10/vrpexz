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


local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: gtype, vtype, blipid, blipcolor, ghome, permissions (optional, only users with the permissions will have access to the shop)
-- vtype: identifies the "type" of vehicle for the personal garages and vehicles (you can create new ones)
-- gtype: there are 5 gtypes> personal, showroom, shop, store and rental (you cant create new ones, one garage can have many gtypes)
   -- personal: allow you to get any personal vehicle of the same vtype of the garage
   -- showroom: allows you to see the vehicle model before purchasing it
   -- shop: allows you to modify your vehicle
   -- store: allows you to purchase and sell vehicles
   -- rental: allows you to rent vehicles for that session for a part of the price
-- ghome: links the garage with an address, only owners of that address will have see the garage
-- gpay: bank or wallet
-- Car/Mod: [id/model] = {"Display Name", price/amount, "", (optional) item}, -- when charging items, price becomes amount

cfg.lang = "en" -- lenguage file

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.40 -- sell for 75% of the original price

cfg.price = {
  repair = 1000, -- value to repair the vehicle
  colour = 100, -- value will be charged 3 times for RGB
  extra = 100, -- value will be charged 3 times for RGB
  neon = 100 -- value will be charged 3 times for RGB
}

-- declare any item used on purchase that doesnt exist yet (name,description,choices,weight}
cfg.items = { -- example
}

-- configure garage types
cfg.adv_garages = {
  ["Loja de Carros"]  = {
    _config = {gpay="bank",gtype={"showroom","store","rental"},vtype="car",blipid=50,blipcolor=4},
	["teste"] = {"Carro Adicionar Aqui", 198000, ""},
  },
  ["Garagem de Carros"]  = {
    _config = {gpay="bank",gtype={"personal"},vtype="car"},
	["teste"] = {"Carro Adicionar Aqui", 198000, ""},
  },
  ["Transporte de Valores"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="transporte", blipid=67, blipcolor=4, permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"Carro Forte",0, ""}
  },
  ["PM"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="pm",permissions={"cor.garagem"}},
    ["teste"] = {"Carro Adicionar Aqui",0, ""},
  },
  ["GRPAe"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="grpae",permissions={"grpae.garagem"}},
    ["teste"] = {"Carro Adicionar Aqui",0, ""}
  },
  ["Hospital"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="samu",permissions={"hospital.garagem"}},
    ["ambulance"] = {"Ambulância CBM",0, ""},
	["fbi"] = {"Hilux SW4 SAMU",0, ""}
  },
  ["Heliponto Hospital"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="samuheli",permissions={"helihospital.garagem"}},
    ["polmav"] = {"Helicóptero SAMU",0, ""}
  },
  ["Mecânico"] = {
  _config = {gpay="bank", gtype={"rental"}, vtype="mecanico",permissions={"repair.garagem"}},
	["towtruck"] = {"Reboque",0, ""}
  },
  ["LS Customs"]  = {
    _config = {gpay="wallet",gtype={"shop"},vtype="car",blipid=72,blipcolor=7},
	_shop = {
	  -- You can make different shops with different modifications for each garage of gtype shop
	  [0] = {"Spoilers",500,""},
	  [1] = {"Front Bumper",500,""},
      [2] = {"Rear Bumper",500,""}, 
      [3] = {"Side Skirt",500,""},  
      [4] = {"Exhaust",500,""},     
      [5] = {"Frame",500,""},       
      [6] = {"Grille",500,""},      
      [7] = {"Hood",500,""},        
      [8] = {"Fender",500,""},      
      [9] = {"Right Fender",500,""},
      [10] = {"Roof",500,""},        
      [11] = {"Engine",500,""},      
      [12] = {"Brakes",500,""},      
      [13] = {"Transmission",500,""},
      [14] = {"Horns",500,""},       
      [15] = {"Suspension",500,""},  
      [16] = {"Armor",500,""},      
      [18] = {"Turbo",500,""},
      [20] = {"Tire Smoke",500,""},
      [22] = {"Xenon Headlights",500,""},
      [23] = {"Wheels",500,"Press enter to change wheel type"},
      [24] = {"Back Wheels (Bike)",500,""}, 
      [25] = {"Plateholders",500,""},
      [27] = {"Trims",500,""},       
      [28] = {"Ornaments",500,""},   
      [29] = {"Dashboards",500,""},  
      [30] = {"Dials",500,""},       
      [31] = {"Door Speakers",500,""},
      [32] = {"Seats",500,""},       
      [33] = {"Steering Wheel",500,""},
      [34] = {"H Shift",500,""},     
      [35] = {"Plates",500,""},      
      [36] = {"Speakers",500,""},    
      [37] = {"Trunks",500,""},      
      [38] = {"Hydraulics",500,""},  
      [39] = {"Engine Block",500,""},
      [40] = {"Air Filter",500,""},  
      [41] = {"Struts",500,""},      
      [42] = {"Arch Covers",500,""}, 
      [43] = {"Arials",500,""},      
      [44] = {"Extra Trims",500,""}, 
      [45] = {"Tanks",500,""},       
      [46] = {"Windows",500,""},     
      [48] = {"Livery",500,""}   
	}
  }
}
--a
-- position garages on the map {garage_type,x,y,z}
cfg.garages = {
  {"GRPAe",449.17532348633,-981.03942871094,43.691680908203},
  {"PMESP",431.25729370118,-996.421875,25.773290634156},
  {"Hospital",1121.8719482422,-1517.0825195313,34.692562103271},
  {"Heliponto Hospital",1203.1829833984,-1549.1232910156,39.401947021484},
  {"Loja de Carros",-44.517482757568,-1097.6505126954,26.422332763672},
  {"Garagem de Carros",-45.500843048096,-1112.3262939454,26.435791015625}, -- Conce
  {"Garagem de Carros",128.9056854248,6626.4150390625,31.752891540528}, -- Interior
  {"Garagem de Carros",-810.18676757812,370.66796875,87.87614440918}, -- Eclipse
  {"Mecanico",401.42602539063,-1631.7053222656,29.291942596436},
  {"Transporte de Valores",232.78034973145,117.23257446289,102.60144042969},
  {"LS Customs",-337.3863,-136.9247,39.0737},
  {"LS Customs",-1155.536,-2007.183,13.244},
  {"LS Customs",731.8163,-1088.822,22.233},
  {"LS Customs",1175.04,2640.216,37.82177},
  {"LS Customs",110.8406,6626.568,32.287}
}

return cfg
