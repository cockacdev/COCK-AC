local pCock = table.Copy(debug)
local COCKS = pCock.getinfo
local ORIGINALNETSTART = COCKS(net.Start).short_src
local ISCPLUSPLUSCHEATKEYDOWN = input.IsKeyDown
local KEYFORONLYCHEATMENUS = KEY_INSERT
local COCKAC = {}
COCKAC.scans = {}

COCKAC.sources = {
  RunString = true,
  LuaCmd = true,
  ["[C]"] = true,
}

COCKAC.scanf = {
	{hook, "Add"},

	--{hook, "Call"}, -- cl deathnotice is retarded?

	--{hook, "Run"}, -- cl deathnotice is retarded?

	{timer, "Create"},

	{timer, "Simple"},

	--{_G, "CreateClientConVar"}, -- ULX IS GAY
	
	{_G, "RunString"}, -- cl deathnotice is retarded?

	{_G, "RunStringEx"},
	
	{file, "Read"},
	
	{concommand, "Add"},

	{_G, "RunConsoleCommand"},
	
	{_G, "setfenv"},
	
	{_G, "CompileFile"},
	
	{_G, "CompileString"},
	
	//{net, "SendToServer"}, -- People have retarded backdoors. Maybe this can stop it? naw prolly not
	-- ^ keep in mind this will lag large servers, probably. CAREFUL
	-- Seems to bug developers who are too lazy to fix their own code. :^)
	{debug, "setfenv"},
	
	{debug, "getupvalue"}
}
	
COCKAC.BADCMDS = {
  "sasha_menu",
  "ahack_menu",
  "+hera_menu",
  "ok_aaa",
  "cd_menu"
}

function COCKAC.validateThatShitNigga(sauce)
  net.Start("QACOCKAC")
  net.WriteString(sauce)
  net.SendToServer()
end

COCKAC.SCANshit = function()
  local SOURCESTOSENDTOTHEFUCKINGSERVERNIGGER = {}
  for i = 0, 1/0, 1 do
    local DBG = COCKS(i)
    if( DBG and !COCKAC.sources[DBG[ "short_src" ] ]) then
      SOURCESTOSENDTOTHEFUCKINGSERVERNIGGER[DBG.short_src] = "SEND THAT SHIT YOU FUCKING AUTISTIC WEEABOO CHEATER"
    elseif (!DBG ) then
      break
    end
  end
  
  for l, o in ipairs(SOURCESTOSENDTOTHEFUCKINGSERVERNIGGER )    do
    if (COCKAC.scans[l] != nil) then
      continue
    else
      COCKAC.validateThatShitNigga(l)
      COCKAC.scans[l] = "THAT SHIT HAS BEEN SCANNED, FUCKING RETARDED WEEABOO"
    end
  end
  
  if (concommand[ "GetTable"]()["sasha_menu" ]  ) then
    COCKAC.validateThatShitNigga("SASHA FUCKING HACK YOU AUTIST")  
  end
  
  if ISCPLUSPLUSCHEATKEYDOWN(KEYFORONLYCHEATMENUS) then // detect c++ cheats since this antichea tmainly detects lau scripting language cheats, THE GREAT COCKAC USES BETTER METHODS THAN FUCKING CAC
	COCKAC.validateThatShitNigga("OBVIOUSLY USING FUCKING COPYPASTE AIMWARE CHEAT, ONLY AIMWARE USES THE INSERT KEY AND EVERYONE ELSE STOLE IT FROM THEM")  
end

       if(    ORIGINALNETSTART != COCKS(net.Start).short_src  ) then
	        COCKAC.validateThatShitNigga("FUCKING AUTISTIC CHEATER THINKS THAT THIS WORKS HAHAHAHAHA ANONYMOUS HACKER KNOWN AS 4CHAN GOES REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")  	
     end

  timer.Simple(30, COCKAC.SCANshit)
end

COCKAC.SCANshit()
