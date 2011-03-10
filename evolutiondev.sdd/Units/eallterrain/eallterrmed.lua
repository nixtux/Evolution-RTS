-- UNITDEF -- EALLTERRMED --
--------------------------------------------------------------------------------

local unitName = "eallterrmed"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.18,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 25,
  builder            = false,
  buildTime          = 7,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "NOTAIR SKIRMISHER",
  corpse             = "ammobox",
  
-- Cloaking

	cancloak		 = true,
	cloakCost		 = 2,
	decloakDistance	 = 400,
	decloakOnFire	 = true,
	decloakSpherical = true,
	startCloaked	 = false,
	
-- End Cloaking
  
  description        = "Light Skirmish Tank - Damagetype: Medium :: Armortype: Light",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "allterr",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 300,
  maxSlope           = 180,
  maxVelocity        = 4.0,
  maxReverseVelocity = 1,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  mobilestandorders  = "1",
  movementClass      = "ALLTERRTANK4",
  name               = "(B)asher",
  noChaseCategory    = "VTOL",
  objectName         = "eallterrmed2.s3o",
  radarDistance      = 0,
  selfDestructAs     = "MEDIUM_UNIT",
  sightDistance      = 500,
  smoothAnim         = true,
  turnInPlace        = true,
  turnRate           = 1000,
  unitname           = "eallterrmed",
  upright			 = false,
  workerTime         = 0,
  sfxtypes = {
    explosiongenerators = {
      "custom:gdmcannon",
      "custom:dirtsmall",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "mediumtankcannon",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
  },
   customParams = {
	twokhotkey = 'b',
    RequireTech = "4 Power",
	armortype   = "lightarmor",
	normaltex = "unittextures/lego2skin_explorernormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  mediumtankcannon = {
    areaOfEffect       = 32,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.5,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.1,
    energypershot      = 10,
    explosionGenerator = "custom:BulletImpactBlue",
    fallOffRate        = 1,
    fireStarter        = 50,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 500,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "1 0.5 0",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "medallterrweapon.wav",
    soundHit           = "mediumcannonhit.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 9,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 400,
	customparams = {
	  damagetype		= "medium",  
    }, 
    damage = {
      default           = 100,
    },
  },
  
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------