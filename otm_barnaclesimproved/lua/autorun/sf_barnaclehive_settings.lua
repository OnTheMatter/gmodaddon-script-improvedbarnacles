AddCSLuaFile()

if SERVER then return end

hook.Add("PopulateToolMenu", "sf_barnaclehive_settingstoolmenu_prettypleasedontconflictplease", function()
	spawnmenu.AddToolMenuOption("Utilities", "Admin", "Barnacle Settings", "Barnacle Settings", "", "", SF_BARNACLEHIVE_SETTINGS_PANEL_INIT)
end)

function SF_BARNACLEHIVE_SETTINGS_PANEL_INIT(panel)

	panel:ControlHelp("---- Barnacle Corpse Cleanup Settings ----")

	panel:NumSlider("Corpse Cleanup Time","sfad_barnaclehive_killcorpsetimer",-1,120,1);

	panel:Help("How long barnacle corpses will last before being deleted, in seconds.-1 to disable.")

	panel:CheckBox("Less Gibs?","sfad_barnaclehive_disablegibs");

	panel:CheckBox("Fancy Death?","sfad_barnaclehive_fancydeath");

	panel:ControlHelp("---- Barnacle Stats Settings ----")

	panel:NumSlider("Damage Multiplier","sfad_barnaclehive_damagemultiplier",0.1,10,1);

	panel:NumSlider("Health Multiplier","sfad_barnaclehive_healthmultiplier",0.1,10,1);

	//panel:NumSlider("Min Size Scale","sfad_barnaclehive_minsizemultiplier",0,2,2);

	//panel:NumSlider("Max Size Scale","sfad_barnaclehive_maxsizemultiplier",0,2,2);

	//panel:Help("Each Barnacle will have their size scaled by a random value between the Min and Max Size Scale.");

	//panel:CheckBox("Multiply Damage by size?","sfad_barnaclehive_sizemultipliesdmghp");

	panel:CheckBox("Eat Players","sfad_barnaclehive_eatplayer");

	panel:CheckBox("Melee Weapons Won't Instakill","sfad_barnaclehive_disablemeleeinstakill");

	panel:ControlHelp("---- Barnacle Spreading Settings ----");

	panel:CheckBox("Spreading Enabled?", "sfad_barnaclehive_barnaclespreadenabled");

	panel:NumSlider("Barnacle Pop. Cap","sfad_barnaclehive_barnaclelimit",-1,600,0);

	panel:Help("Barnacle Population Cap - How many barnacles can there be at once before spreading stops? Set to -1 to have no limit.")

	panel:NumSlider("Update Timer Length","sfad_barnaclehive_spreadtimerlength",0.5,60,2);

	panel:Help("Update Timer Length - The time-between barnacle-spreading spawn attempts.Lower=Faster spawns but worse performance.")

	panel:NumSlider("Ineligibility Chance","sfad_barnaclehive_randomly_ignored_chance",0,1,2);

	panel:Help("Ineligibility Chance - This is the chance for each individual barnacle that it 100% won't be able to spread for the current spawn-attempt, helping to mitigate unnecessary spawn attempts/exponential growth.")

	panel:NumSlider("Spread Chance","sfad_barnaclehive_spread_chance",0,1,2);

	panel:Help("Spreading Chance - Out of the barnacles which pass the eligibility chance, this is the chance for each individual to attempt to create a child barnacle.")

	panel:NumSlider("Min Spread Dist.","sfad_barnaclehive_minspreaddistance",32,512,0);

	panel:Help("Minimum Individual Spread Distance - The least possible distance from its parent a barnacle can spawn from.")

	panel:NumSlider("Max Spread Dist.","sfad_barnaclehive_maxspreaddistance",32,512,0);

	panel:Help("Maximum Individual Spread Distance - The maximum possible distance from its parent a barnacle can spawn from.")
	
	panel:NumSlider("Max Height Diff.","sfad_barnaclehive_maxzoffset",4,512,0);

	panel:Help("Maximum Height Difference - The maximum possible difference in distance vertically between a spawning child and its parent barnacle.")

	panel:NumSlider("Spawn Padding","sfad_barnaclehive_social_distance",32,256,0);

	panel:Help("Spawn Padding - How much distance there needs to be between a newly-spawning barnacle and pre-existing ones.")

	local sf_barnaclehive_p = panel:Button("Reset to Default", nil, nil)
	function sf_barnaclehive_p:DoClick()
		if (LocalPlayer():IsValid() and LocalPlayer():IsSuperAdmin()) then
			net.Start("SFAD_BARNACLEHIVE_RESET_BUTTON")
			net.SendToServer()
		end
	end

end