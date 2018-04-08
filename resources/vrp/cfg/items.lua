-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["weed"] = {"Planta de maconha", "Planta de maconha.", nil, 1.00}, -- no choices
  ["folhadecoca"] = {"Folha de Coca", "Folha de Coca.", nil, 1.00}, -- no choices
  ["cocaina"] = {"Cocaina", "Cocaina em po.", nil, 1.00}, -- no choices
  ["crystalmelamine"] = {"Cristal de Fósforo", "Cristal usado para fazer metanfetamina.", nil, 1.00}, -- no choices
  ["metanfetamina"] = {"Metanfetamina", "Cristal de Metanfetamina.", nil, 1.00}, -- no choices  
  ["Pedra"] = {"Pedra", "Pedra bruta.", nil, 0.01}, -- no choices
  ["Minerio"] = {"Minerio", "Minerio refinado.", nil, 0.01}, -- no choices
  ["portedearma"] = {"Porte de Arma", "licença para arma.", nil, 0.01}, -- no choices
  ["oab"] = {"OAB", "Carteira de Advogado. (Se não for advogado = BAN)", nil, 0.01}, -- no choices
  ["juizadobilu"] = {"Carteira do TJ", "Carteira de Juiz Arbitral, Biluzera Assis.", nil, 0.01}, -- no choices
  ["juizadoveronesi"] = {"Carteira do TJ", "Carteira de Juiz Arbitral, Felipe Veronesi.", nil, 0.01},
  ["cannabis"] = {"Maconha", "Processada.", nil, 1.00}, -- no choices
  ["pedacocorpohumano"] = {"Pedaço de corpo humano", "Um pedaço de um cadáver em decomposição.", nil, 3}, -- no choices
  ["carnehumana"] = {"Carne Humana", "Um pedaço de carne humana.", nil, 1.00},
  ["ossohumano"] = {"Osso Humano", "Osso humano.", nil, 0.75}, -- no choices
  ["bank_money"] = {"Dinheiro do Banco", "$.", nil, 0}, -- no choices
  ["cartaoclonado"] = {"Cartão Clonado", "$.", nil, 0.5},
  ["peçadecarru"] = {"Peça de carro", "Peça de carro roubada", nil, 0.5},
  ["pineudecarru"] = {"Pneu de carro", "Peça de carro roubada", nil, 2},
  ["madeirabruta"] = {"Tronco de madeira bruta", "Pedaço pequeno de madeira bruta", nil, 1.5},
  ["madeiraprocessada"] = {"Tronco de madeira refinada", "Pedaço pequeno de madeira refinada", nil, 1},
  ["machado"] = {"Machado de Ferro", "Um machado de ferro, sabe?", nil, 1},
  ["esmeraldabruta"] = {"Minério de esmeralda", "Minério de esmeralda", nil, 2},
  ["esmeraldaprocessada"] = {"Cristal de esmeralda", "Cristal de esmeralda", nil, 1},
  ["picareta"] = {"Picareta de Ferro", "Uma picareta de ferro, sabe?", nil, 1},
  ["fiosdecobre"] = {"Fios de cobre", "Fios de cobre.", nil, 0.1},
  ["chipseletronicos"] = {"Chips Eletrônicos", "Chips Eletrônicos.", nil, 0.1},
  ["dispositivo"] = {"Dispositivo", "Um dispositivo eletrônico qualquer.", nil, 0.5},
  ["partesdemetal"] = {"Partes de Metal", "Partes de Metal.", nil,1.6},
  ["madeiras"] = {"Madeiras", "Madeiras.", nil, 1.0},
  ["estojobala"] = {"Estojo de Projétil", "Estojo de Projétil", nil, 0.15}
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[Brasil RP] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
