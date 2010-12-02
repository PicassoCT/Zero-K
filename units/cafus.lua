unitDef = {
  unitname                      = [[cafus]],
  name                          = [[Singularity Reactor]],
  description                   = [[Produces Energy (225) - HAZARDOUS]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildAngle                    = 4096,
  buildCostEnergy               = 4000,
  buildCostMetal                = 4000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 9,
  buildingGroundDecalSizeY      = 9,
  buildingGroundDecalType       = [[cafus_aoplane.dds]],
  buildPic                      = [[CAFUS.png]],
  buildTime                     = 4000,
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
    helptext   = [[The Singularity Reactor employs graviton power-generation theory beyond safety specifications. With such immense generating capacity in one structure comes great consequence. All mobile units within the enormous death blast radius are sent careening to ground zero. An entire continent on which this is built should be considered unsafe ground.]],
    pylonrange = 800,
  },

  damageModifier                = 0.95,
  energyMake                    = 225,
  energyUse                     = 0,
  explodeAs                     = [[GRAV_BLAST]],
  footprintX                    = 6,
  footprintZ                    = 6,
  iconType                      = [[energy3]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  mass                          = 651,
  maxDamage                     = 4000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[fus.s3o]],
  onoffable                     = false,
  script                        = [[cafus.lua]],
  seismicSignature              = 4,
  selfDestructAs                = [[GRAV_BLAST]],
  side                          = [[CORE]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooooooooooooooooooooooooooooooooooo]],

  featureDefs                   = {
    DEAD  = {
      description      = [[Wreckage - Singularity Reactor]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 4000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 4,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 1600,
      object           = [[wreck6x6a.s3o]],
      reclaimable      = true,
      reclaimTime      = 1600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Singularity Reactor]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 4000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 800,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 800,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ cafus = unitDef })
