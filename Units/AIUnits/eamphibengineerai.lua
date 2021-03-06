-- UNITDEF -- EAMPHIBENGINEERAI --
--------------------------------------------------------------------------------

local unitName                   = "eamphibengineerai"

--------------------------------------------------------------------------------

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 1,
	brakeRate                    = 0.24,
	buildCostEnergy              = 0,
	buildCostMetal               = 35,
	buildDistance                = 800,
	builder                      = true,
	buildTime                    = 5,
	CanAttack			         = false,
	CanAssist			         = true,
	canBeAssisted                = true,
	CanCapture                   = false,
	CanRepair			         = true,
	cancollect                   = "1",
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canreclaim		             = false,
	canstop                      = true,
	category                     = "LIGHT AMPHIB SUPPORT",
	description                  = [[Engineer
	Light]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGenericGreen",
	footprintX                   = 4,
	footprintZ                   = 4,
	iconType                     = "engineer",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	levelground                  = true,
	maxDamage                    = 600,
	maxSlope                     = 28,
	maxVelocity                  = 4,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 5000,
	metalmake                    = 0,
	metalStorage                 = 0,
	movementClass                = "TANK4",
	moveState			         = "2",
	name                         = "The Developer (AI)",
	objectName                   = "eamphibengineer2.s3o",
	script	                     = "eamphibengineer2.cob",
	radarDistance                = 0,
	radarDistanceJam             = 20,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGenericGreen",
	showNanoSpray                = "0",
	side                         = "ARM",
	sightDistance                = 500,
	SonarDistance                = 500,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	--  turnInPlace              = false,
	--  turnInPlaceSpeedLimit    = 4,
	turnInPlace                  = true,
	turnRate                     = 5000,
	--  turnrate                 = 1020,
	unitname                     = "eamphibengineerai",
	unitrestricted				  = 4,
	workerTime                   = 1,
	capturespeed                 = 1,
	TerraformSpeed               = 100000,
	ReclaimSpeed                 = 0,
	repairspeed                  = 0.15625,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:nanoorb",
			"custom:dirt",
			"custom:blacksmoke",
		},
	},
	buildoptions                 = {
		"eminifacai", --new
		"ebasefactoryai", --new
		"eamphibfacai",
		"eairplantai",
		"eexperimentalfac",
		"emetalextractorai", --new
		"emaker", --new
		"esolar2ai", 
		"emediumgenai", --new
		"egeothermal", --new
		"efusion2ai", --new
		"estorageai", --new
		"eradar2", --new
		"ejammer2", --new
		"ekmar",
		"elightturret2ai", --new
		"eheavyturret2ai", --new
		"eartyturret",
		"euwturret",
		"ecruisesiloai",
		"eshieldgen",
		"esilo",
		"emineai",
		"eorbai",
		"ecommanderai",
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	customParams                 = {
		canbetransported 		 = "true",
		needed_cover             = 1,
		death_sounds             = "generic",
		dronespawner             = "1",
		armortype                = "light",
		normalstex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
	},
}

--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
