local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "vrp_hackatms") 
vRP = Proxy.getInterface("vRP") 

-- Besked i command prompt --


RegisterCommand("skilt", function(source, args, rawCommand)
  local source = source
  local user_id = vRP.getUserId({source})
  local svar = args[1]
  if svar == "vis" then
    if vRP.hasGroup({user_id,cfg.rank}) then
      TriggerClientEvent("magnus:visSkilt", source)
    end
  elseif svar == "fix" then
    if vRP.hasGroup({user_id,cfg.rank}) then
      TriggerClientEvent("magnus:fjernSkilt", source)
    end
  end
end, false)
