vRPani = {}
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
Tunnel.bindInterface("vrp_attitudes",vRPani)
Proxy.addInterface("vrp_attitudes",vRPani)



-- MOVEMENT CLIPSET
function vRPani.playMovement(clipset,blur,drunk,fade,clear)
  --request anim
  RequestAnimSet(clipset)
  while not HasAnimSetLoaded(clipset) do
    Citizen.Wait(0)
  end
  -- clear tasks
  if clear then
    ClearPedTasksImmediately(GetPlayerPed(-1))
  end
  -- set movement
  SetPedMovementClipset(GetPlayerPed(-1), clipset, true)
  
end

function vRPani.resetMovement(fade)
  -- reset all
  ClearTimecycleModifier()
  ResetScenarioTypesEnabled()
  ResetPedMovementClipset(GetPlayerPed(-1), 0)
  SetPedIsDrunk(GetPlayerPed(-1), false)
  SetPedMotionBlur(GetPlayerPed(-1), false)
end