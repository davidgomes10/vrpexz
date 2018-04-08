description "vRPex sedexJob"

dependency "vrp"

client_scripts{ 
  "@vrp/lib/utils.lua",
  "cliente_sedex.lua"
}

server_scripts{
  "@vrp/lib/utils.lua",
  "server_sedex.lua"
}

