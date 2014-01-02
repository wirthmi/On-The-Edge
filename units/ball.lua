local defName  		=  "Ball"

local unitDef  =  {
--Internal settings
    BuildPic 		= "filename.bmp",
    Category 		= "TANK SMALL NOTAIR NOTSUB",
    ObjectName 		= "ball.s3o",
    name 			= defName,
    Side 			= "REP",
    TEDClass 		= "TANK",
    UnitName 		= defName,
    script 			= "ball.lua",
    
--Unit limitations and properties
    BuildTime 		= 1000,
    Description 	= "Dumball",
    MaxDamage 		= 800,
    RadarDistance 	= 0,
    SightDistance 	= 400,
    SoundCategory 	= "",
    Upright 		= 0,
    
--Energy and metal related
    BuildCostEnergy = 100,
    BuildCostMetal 	= 0,
    
--Pathfinding and related
    Acceleration 	= 0.15,
    BrakeRate 		= 0.1,
    FootprintX 		= 4,
    FootprintZ 		= 4,
    MaxSlope 		= 15,
    MaxVelocity 	= 4.0,
    MaxWaterDepth 	= 20,
    MovementClass 	= "HeroNormal",
    TurnRate		= 900,
    
--Abilities
    Builder 		= 0,
    CanAttack 		= 1,
    CanGuard 		= 1,
    CanMove 		= 1,
    CanPatrol 		= 1,
    CanStop 		= 1,
    LeaveTracks 	= 0,
    Reclaimable 	= 0,
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related
	weapons = {
		[1] = {
			def                	= "orangeblob",
			BadTargetCategory 	= "NOTAIR",
			ExplodeAs 			= "TANKDEATH",
			NoChaseCategory 	= "AIR",
		},
	},
	weaponDefs = {
		orangeblob = {
			name = "Orange Plasma Cannon",
			weapontype = "Cannon",
			accuracy = 10,
			areaofeffect = 100,
			avoidfeature = false,
			avoidfriendly = true,
			canattackground = true,
			collidefriendly = true,
			collisionsize = 8,
			commandfire = false,
			craterboost = 0,
			cratermult = 0,
			edgeeffectiveness = 0.1,
			explosionspeed = 128,
			firestarter = 100,
			gravityaffected = true,
			impulseboost = 0,
			impulsefactor = 0,
			intensity = 1,
			noselfdamage = true,
			size = 4,
			soundstart = "orangeblob_explo",
			soundhit = "orangeblob_explo",
			range = 400,
			reloadtime = 1.5,
			rgbcolor = "1.0 1.0 1.0",
			turret = true,
			texture1 = "flame",
			weaponvelocity = 800,
			explosiongenerator = "custom:TANKGUN_FX",
			damage = {
				default = 55,
			},
		},
	}
}

return lowerkeys({ [defName]  =  unitDef })
