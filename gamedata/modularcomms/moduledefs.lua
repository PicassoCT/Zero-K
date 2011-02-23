--------------------------------------------------------------------------------
-- system functions
--------------------------------------------------------------------------------

VFS.Include("gamedata/modularcomms/functions.lua")

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

weapons = {}

local weaponsList = VFS.DirList("gamedata/modularcomms/weapons", "*.lua") or {}
for i=1,#weaponsList do
	local name, array = VFS.Include(weaponsList[i])
	weapons[name] = lowerkeys(array)
end

-- name and description don't actually matter ATM, only the keyname and function do
upgrades = {
	-- weapons
	-- it is important that they are prefixed with "commweapon_" in order to get the special handling!
	commweapon_autoflechette = {
		name = "Autoflechette",
		description = "For when a regular shotgun isn't enough",	
	},
	commweapon_beamlaser = {
		name = "Beam Laser",
		description = "An effective short-range cutting tool",
	},
	commweapon_disruptor = {
		name = "Disruptor Beam",
		description = "Damages and slows a target",	
	},
--	commweapon_flamethrower = {
--		name = "Flamethrower",
--		description = "Perfect for well-done barbecues",
--	},
	commweapon_heavymachinegun = {
		name = "Heavy Machine Gun",
		description = "Close-in weapon with AoE",
	},
	commweapon_heatray = {
		name = "Heat Ray",
		description = "Rapidly melts anything at short range; loses damage over distance",
	},
	commweapon_gaussrifle = {
		name = "Gauss Rifle",
		description = "Precise armor-piercing weapon",
	},
	commweapon_riotcannon = {
		name = "Riot Cannon",
		description = "The weapon of choice for crowd control",
	},
	commweapon_rocketlauncher = {
		name = "Rocket Launcher",
		description = "Medium-range low-velocity hitter",
	},
	commweapon_shockrifle = {
		name = "Shock Rifle",
		description = "A sniper weapon that inflicts heavy damage to a single target",
	},
	commweapon_shotgun = {
		name = "Shotgun",
		description = "Can hammer a single large target or shred many small ones",
	},
	commweapon_slowbeam = {
		name = "Slowing Beam",
		description = "Slows an enemy's movement and firing rate; non-lethal",
	},
	
	-- dguns
	commweapon_concussion = {
		name = "Concussion Shot",
		description = "Extended range weapon with AoE and impulse",
	},
	commweapon_clusterbomb = {
		name = "Cluster Bomb",
		description = "Hammers multiple units in a wide line",
	},
	commweapon_disintegrator = {
		name = "Disintegrator Gun",
		description = "Short-range weapon that vaporizes anything in its path",
	},
	commweapon_disruptorbomb = {
		name = "Disruptor Bomb",
		description = "Damages and slows units in a large area",
	},	
	
	-- modules
	module_ablative_armor = {
		name = "Ablative Armor Plates",
		description = "Adds 600 HP",
		func = function(unitDef)
				unitDef.maxdamage = unitDef.maxdamage + 600
			end,
	},
	module_adv_targeting = {
		name = "Advanced Targeting System",
		description = "Extends range of all weapons by 20%",
		func = function(unitDef)
				local weapons = unitDef.weapondefs or {}
				for i,v in pairs(weapons) do
					if v.range then v.range = v.range * 1.2 end
				end
			end,	
	},
	module_adv_nano = {
		name = "CarRepairer's Nanolathe",
		description = "Used by a mythical mechanic/coder, this improved nanolathe adds +3 metal/s build speed",
		func = function(unitDef)
				if unitDef.workertime then unitDef.workertime = unitDef.workertime + 3 end
			end,
	},
	module_autorepair = {
		name = "Autorepair System",
		description = "Self-repairs 10 HP/s",
		func = function(unitDef)
				unitDef.autoheal = (unitDef.autoheal or 0) + 10
			end,
	},
	module_energy_cell = {
		name = "Energy Cell",
		description = "Compact fuel cells that produce +4 energy",
		func = function(unitDef)
				unitDef.energymake = (unitDef.energymake or 0) + 4
			end,
	},
	module_fieldradar = {
		name = "Field Radar Module",
		description = "Basic radar system with 1800 range",
		func = function(unitDef)
				unitDef.radardistance = (unitDef.radardistance or 0)
				if unitDef.radardistance < 1800 then unitDef.radardistance = 1800 end
			end,
	},
	module_high_power_servos = {
		name = "High Power Servos",
		description = "More powerful leg servos increase speed by 15% (cumulative)",
		func = function(unitDef)
				unitDef.customparams = unitDef.customparams or {}
				unitDef.customparams.basespeed = unitDef.customparams.basespeed or tostring(unitDef.maxvelocity)
				unitDef.maxvelocity = (unitDef.maxvelocity or 0) + unitDef.customparams.basespeed*0.15
			end,
	},
	module_personal_cloak = {
		name = "Personal Cloak",
		description = "Cloaks the comm",
		func = function(unitDef)
				unitDef.cloakcost = unitDef.cloakcost or 10
				if unitDef.cloakcost > 10 then unitDef.cloakcost = 10 end
				unitDef.cloakcostmoving = unitDef.cloakcostmoving or 20
				if unitDef.cloakcostmoving > 20 then unitDef.cloakcostmoving = 20 end
			end,
	},
	
	module_cloak_field = {
		name = "Cloaking Field",
		description = "Cloaks all friendly units within 350 elmos",
		func = function(unitDef)
				unitDef.customparams = unitDef.customparams or {}
				unitDef.onoffable = true
				unitDef.radarDistanceJam = (unitDef.radarDistanceJam and unitDef.radarDistanceJam < 350 and 350 or unitDef.radarDistanceJam)
				unitDef.customparams.cloakshield_preset = "module_cloakfield"
			end,
	},
	module_repair_field = {
		name = "Repair Field",
		description = "Passively repairs all friendly units within 450 elmos",
		func = function(unitDef)
				unitDef.customparams = unitDef.customparams or {}
				unitDef.customparams.repairaura_preset = "module_repairfield"
			end,
	},
	module_jammer = {
		name = "Radar Jammer",
		description = "Masks radar signals of all units within 600 elmos",
		func = function(unitDef)
				unitDef.radardistancejam = 600
				unitDef.activatewhenbuilt = true
				unitDef.onoffable = true
			end,
	},
	module_areashield = {
		name = "Area Shield",
		description = "Bubble shield that protects surrounding units within 300 elmos",
		func = function(unitDef)
				ApplyWeapon(unitDef, "commweapon_areashield")
				unitDef.activatewhenbuilt = true
				unitDef.onoffable = true
			end,
	},
	
	-- some old stuff
	adv_composite_armor = {
		name = "Advanced Composite Armor",
		description = "Improved armor increases commander health by 20%",
		func = function(unitDef)
				unitDef.maxdamage = unitDef.maxdamage * 1.2
			end,
	},
}

