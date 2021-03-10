vRP = Proxy.getInterface("vRP")  

RegisterNetEvent("magnus:visSkilt")
AddEventHandler("magnus:visSkilt", function()
  local swag={"paper_1_rcm_alt1-9","player_one_dual-9","prop_fib_badge"}
  ClearPedTasks(PlayerPedId())
  RequestAnimDict(swag[1])
  while not HasAnimDictLoaded(swag[1])do
    Wait(100)
  end
  RequestModel(swag[3])
  while not HasModelLoaded(swag[3])do
    Wait(100)
  end
  local x,y,z=table.unpack(GetEntityCoords(PlayerPedId(),true))
  skilt=CreateObject(GetHashKey(swag[3]),x,y,z-5,true,true)
  AttachEntityToEntity(skilt,PlayerPedId(),GetPedBoneIndex(PlayerPedId(),64017),0.025,-0.025,-0.01,85.0,0.0,80.0,false,false,false,false,false,true)
  TaskPlayAnim(PlayerPedId(),swag[1],swag[2],8.0,8.0,-1,49,1.0,false,false,false)
  Wait(2500)
  DeleteEntity(skilt)
  ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("magnus:fjernSkilt")
AddEventHandler("magnus:fjernSkilt", function()
  DeleteEntity(skilt)
  ClearPedTasks(PlayerPedId())
end)
