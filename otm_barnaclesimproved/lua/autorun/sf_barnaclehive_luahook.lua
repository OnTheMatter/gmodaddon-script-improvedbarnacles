AddCSLuaFile();

if !ConVarExists("sfad_barnaclehive_minspreaddistance") then
    CreateConVar("sfad_barnaclehive_minspreaddistance", "48", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_maxspreaddistance") then
    CreateConVar("sfad_barnaclehive_maxspreaddistance", "96", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_maxzoffset") then
    CreateConVar("sfad_barnaclehive_maxzoffset", "64", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_randomly_ignored_chance") then
    CreateConVar("sfad_barnaclehive_randomly_ignored_chance", "0.5", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_spread_chance") then
    CreateConVar("sfad_barnaclehive_spread_chance", "0.2", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_social_distance") then
    CreateConVar("sfad_barnaclehive_social_distance", "48", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_spreadtimerlength") then
    CreateConVar("sfad_barnaclehive_spreadtimerlength", "5", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_barnaclelimit") then
    CreateConVar("sfad_barnaclehive_barnaclelimit", "300", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_barnaclespreadenabled") then
    CreateConVar("sfad_barnaclehive_barnaclespreadenabled", "1", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_disablegibs") then
    CreateConVar("sfad_barnaclehive_disablegibs", "0", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end

if !ConVarExists("sfad_barnaclehive_killcorpsetimer") then
    CreateConVar("sfad_barnaclehive_killcorpsetimer", "15", {FCVAR_ARCHIVE, FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY})
end


if (CLIENT) then return end

net.Receive("sfad_barnaclehive_minspreaddistance", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_minspreaddistance", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_maxspreaddistance", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_maxspreaddistance", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_maxzoffset", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_maxzoffset", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_randomly_ignored_chance", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_randomly_ignored_chance", net.ReadFloat())
	end
end)

net.Receive("sfad_barnaclehive_spread_chance", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_spread_chance", net.ReadFloat())
	end
end)

net.Receive("sfad_barnaclehive_social_distance", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_social_distance", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_spreadtimerlength", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_spreadtimerlength", net.ReadFloat())
	end
end)

net.Receive("sfad_barnaclehive_barnaclelimit", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_barnaclelimit", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_barnaclespreadenabled", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_barnaclespreadenabled", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_disablegibs", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_disablegibs", net.ReadInt())
	end
end)

net.Receive("sfad_barnaclehive_killcorpsetimer", function(len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_killcorpsetimer", net.ReadFloat())
	end
end)

	net.Receive("SFAD_BARNACLEHIVE_RESET_BUTTON", function(Len,ply)
	if ply:IsValid() and ply:IsPlayer() and ply:IsSuperAdmin() then
		RunConsoleCommand("sfad_barnaclehive_minspreaddistance", "48")
		RunConsoleCommand("sfad_barnaclehive_maxspreaddistance", "96")
		RunConsoleCommand("sfad_barnaclehive_maxzoffset", "64")
		RunConsoleCommand("sfad_barnaclehive_randomly_ignored_chance", "0.5")
		RunConsoleCommand("sfad_barnaclehive_spread_chance", "0.2")
		RunConsoleCommand("sfad_barnaclehive_social_distance", "48")
		RunConsoleCommand("sfad_barnaclehive_spreadtimerlength", "5")
		RunConsoleCommand("sfad_barnaclehive_barnaclelimit", "300")
		RunConsoleCommand("sfad_barnaclehive_disablegibs", "1")
		RunConsoleCommand("sfad_barnaclehive_killcorpsetimer", "15")
	end
end)

util.AddNetworkString("sfad_barnaclehive_minspreaddistance");
util.AddNetworkString("sfad_barnaclehive_maxspreaddistance");
util.AddNetworkString("sfad_barnaclehive_maxzoffset");
util.AddNetworkString("sfad_barnaclehive_randomly_ignored_chance");
util.AddNetworkString("sfad_barnaclehive_spread_chance");
util.AddNetworkString("sfad_barnaclehive_social_distance");
util.AddNetworkString("sfad_barnaclehive_spreadtimerlength");
util.AddNetworkString("sfad_barnaclehive_barnaclelimit")
util.AddNetworkString("sfad_barnaclehive_barnaclespreadenabled")
util.AddNetworkString("sfad_barnaclehive_disablegibs")
util.AddNetworkString("sfad_barnaclehive_killcorpsetimer")
util.AddNetworkString("SFAD_BARNACLEHIVE_RESET_BUTTON")

local function sf_barnaclehive_rectanglecollisioncheck(p1,sl)
	local sf_barnaclehive_c = {p1 + Vector(0,sl,0),
	p1 + Vector(0,-sl,0),
	p1 + Vector(sl,0,0),
	p1 + Vector(-sl,0,0)};
	local sf_barnaclehive_stuckinwall = false;
	for _, sf_barnaclehive_ahgod in ipairs(sf_barnaclehive_c) do
		if (!util.IsInWorld(sf_barnaclehive_ahgod)) then sf_barnaclehive_stuckinwall = true end
	end

	if (!util.IsInWorld(p1)) then sf_barnaclehive_stuckinwall = true end

	table.Empty(sf_barnaclehive_c); //Cargo Cult
	return sf_barnaclehive_stuckinwall;

end

local function sf_barnaclehive_main_spread(ent)
	//Determine where the child barnacle's spawn tracer is going to be started. 
	local sf_barnaclehivedaddy_pos = ent:GetPos();
	local sf_barnaclehivedaddy_minspreaddis = GetConVar("sfad_barnaclehive_minspreaddistance"):GetInt();
	local sf_barnaclehivedaddy_maxspreaddis = GetConVar("sfad_barnaclehive_maxspreaddistance"):GetInt();
	local sf_barnaclehivedaddy_maxzoffset = GetConVar("sfad_barnaclehive_maxzoffset"):GetInt();
	local sf_barnaclehive_linetracelowereddistance = math.random(-math.abs(sf_barnaclehivedaddy_maxzoffset),-16)
	local sf_barnaclehive_yawrandom = math.random(0,360);
	local sf_barnaclehive_posdisplacementdistance = math.random(sf_barnaclehivedaddy_minspreaddis,sf_barnaclehivedaddy_maxspreaddis);
	local sf_barnaclehivedaddy_posdisplacement = Vector(math.cos(sf_barnaclehive_yawrandom)*sf_barnaclehive_posdisplacementdistance,math.sin(sf_barnaclehive_yawrandom)*sf_barnaclehive_posdisplacementdistance,sf_barnaclehive_linetracelowereddistance)
	local sf_barnaclehive_babypoint = sf_barnaclehivedaddy_pos + sf_barnaclehivedaddy_posdisplacement;

	//Make sure the baby point and a rectangular area around it isn't in the void. If it's not then we continue, otherwise the spread attempt is null.
	if (!sf_barnaclehive_rectanglecollisioncheck(sf_barnaclehive_babypoint,16)) then
		//We're going to perform the upwards line trace now to see where the baby will end up. 
		local sf_barnaclehive_babyorphanageaddress = {
		start = sf_barnaclehive_babypoint,
		endpos = sf_barnaclehive_babypoint + Vector(0,0,sf_barnaclehive_linetracelowereddistance + sf_barnaclehivedaddy_maxzoffset*10),
		collisiongroup = COLLISION_GROUP_DEBRIS};
		local sf_barnaclehivedaddy_protection = util.TraceLine(sf_barnaclehive_babyorphanageaddress);
		local sf_barnaclehive_babydropoffdestination = sf_barnaclehivedaddy_protection.HitPos;
		table.Empty(sf_barnaclehive_babyorphanageaddress); //Cargo Cult
		table.Empty(sf_barnaclehivedaddy_protection); //Cargo Cult
		//Make sure the baby destination's z pos isn't too far from its daddy. 
		if (math.abs(sf_barnaclehivedaddy_pos.z - sf_barnaclehive_babydropoffdestination.z) < math.abs(sf_barnaclehivedaddy_maxzoffset)) and (!sf_barnaclehivedaddy_protection.HitSky) then
			//Almost there, the last step is to do a sphere check to make sure no other barnacles are too close to the destination,
			//if there are then it's another null spawn scenario. It's better to limit spawns as opposed to promote them, screw lag, 
			//that and exponential growth.
			local sf_barnaclehivedaddy_unclecheck = ents.FindInSphere(sf_barnaclehive_babydropoffdestination,GetConVar("sfad_barnaclehive_social_distance"):GetInt());
			local sf_barnaclehivedaddy_uhoh = false;
			local sf_barnaclehivedaddy_ancestrycheck = {npc_barnacle = true};
			for _, sf_tongueytumors in ipairs(sf_barnaclehivedaddy_unclecheck) do
				if (sf_barnaclehivedaddy_ancestrycheck[sf_tongueytumors:GetClass()]) then sf_barnaclehivedaddy_uhoh = true end
			end
			//If a barnacle isn't spotted, and the position passes the final collision-test (The game crashes I've gotten make me worried) then let's make that baby!
			if (!sf_barnaclehivedaddy_uhoh) and (!sf_barnaclehive_rectanglecollisioncheck(sf_barnaclehive_babypoint + Vector(0,0,-1.5),16) and !sf_barnaclehive_rectanglecollisioncheck(sf_barnaclehive_babypoint + Vector(0,0,-1.5),8) and !sf_barnaclehive_rectanglecollisioncheck(sf_barnaclehive_babypoint + Vector(0,0,-1.5),4)) then
				local sf_barnaclehivedaddy_babyincoming = ents.Create("npc_barnacle");
				if (IsValid(sf_barnaclehivedaddy_babyincoming)) then
					sf_barnaclehivedaddy_babyincoming:SetPos(sf_barnaclehive_babydropoffdestination + Vector(0,0,-1.5));
					sf_barnaclehivedaddy_babyincoming:Spawn();
					sf_barnaclehivedaddy_babyincoming:Activate();
				end
			end
			table.Empty(sf_barnaclehivedaddy_unclecheck); //Cargo Cult
		end
	end
	return true;
end

local function sf_barnaclehive_main()
	//Check if barnacle spreading is enabled. 
	if (GetConVar("sfad_barnaclehive_barnaclespreadenabled"):GetInt()) then
		local sf_barnaclehive_barnaclelist = ents.FindByClass("npc_barnacle");
		//Make sure there is more than 0 and less than the max allowed of barnacles spawned in. 
		if (#sf_barnaclehive_barnaclelist > 0) and ((GetConVar("sfad_barnaclehive_barnaclelimit"):GetInt() < 0) or (#sf_barnaclehive_barnaclelist <= GetConVar("sfad_barnaclehive_barnaclelimit"):GetInt())) then
			local sf_barnaclehive_revisedbarnaclelist = {};
			//Retrieve our list of spreading-barnacles, through a lottery dictated by the 
			//sfad_barnaclehive_randomly_ignored_chance convar, and the spreading chance for these lucky few eligible barnacles.
			for _,b1 in ipairs(sf_barnaclehive_barnaclelist) do
				if (IsValid(b1) and (b1:GetActivity() != ACT_DIESIMPLE)) then
					//Has the barnacle won the chance to be eligible for the chance to spread?
					if (math.random() > GetConVar("sfad_barnaclehive_randomly_ignored_chance"):GetFloat()) then
						//Has the eligible barnacle passed the chance to spread?
						if (math.random() < GetConVar("sfad_barnaclehive_spread_chance"):GetFloat()) then
							//If both criteria are passed, the spreading barnacle is added to a list of its peers.
							table.insert(sf_barnaclehive_revisedbarnaclelist,b1);
						end
					end
				end
			end
			//Empty the full barnacle list as it's unneeded and just in case it could help with memory; cargo cult programming perhaps, but oh well. 
			table.Empty(sf_barnaclehive_barnaclelist);
			//Go through each of the spreading barnacles and run the spread function, if there are any lucky barnacles. 
			if (#sf_barnaclehive_revisedbarnaclelist > 0) then
				for _,b2 in ipairs(sf_barnaclehive_revisedbarnaclelist) do
					if (IsValid(b2)) then sf_barnaclehive_main_spread(b2) end
				end
			end
			table.Empty(sf_barnaclehive_revisedbarnaclelist);
		end
	end


	//Finally, update the timer length in case an admin changed that convar at some point. 
	timer.Adjust("sf_barnaclehive_updatetimer",GetConVar("sfad_barnaclehive_spreadtimerlength"):GetFloat());
	//print("Timer Called")
	return true;
end

//This creates the timer which periodically runs the barnacle spread functionality. 
timer.Create("sf_barnaclehive_updatetimer",GetConVar("sfad_barnaclehive_spreadtimerlength"):GetFloat(),0,sf_barnaclehive_main);

local function sf_barnaclebodyremoval_hookfunc(npc,attacker,inflictor)
	if (npc:GetClass() == "npc_barnacle") then
		//print("Does this get called?");
		local sf_barnaclehive_bodytimer = GetConVar("sfad_barnaclehive_killcorpsetimer"):GetFloat();
		if (sf_barnaclehive_bodytimer >= 0) then
			SafeRemoveEntityDelayed(npc,sf_barnaclehive_bodytimer);
		end
	end
end

hook.Add("OnNPCKilled","sf_annihilatedeadbarnaclebodies_prettyplease_hook",sf_barnaclebodyremoval_hookfunc);


//sadly you can't disable gibs completely (without some ridiculous checks), but they're halved at least. 
local function sf_barnaclecreated_gibremovalfunc(ent)
	if (ent:GetClass()=="npc_barnacle") and (GetConVar("sfad_barnaclehive_disablegibs"):GetInt())then
		local sf_barnaclehive_ogspawnflags = ent:GetInternalVariable("spawnflags");
		if (bit.band(sf_barnaclehive_ogspawnflags) != 65536) then
			//ent:SetKeyValue("spawnflags",sf_barnaclehive_ogspawnflags + 65536);
			timer.Simple(0,function() ent:SetKeyValue("spawnflags",sf_barnaclehive_ogspawnflags + 65536) end)
		end
	end
end

hook.Add("OnEntityCreated","sf_barnaclecreated_gibremoval_prettyplease_hook",sf_barnaclecreated_gibremovalfunc);