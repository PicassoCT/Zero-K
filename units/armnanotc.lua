unitDef = {
  unitname                      = [[armnanotc]],
  name                          = [[Caretaker]],
  description                   = [[Nanoturret, Builds at 12 m/s]],
  acceleration                  = 0,
  brakeRate                     = 1.5,
  buildCostEnergy               = 220,
  buildCostMetal                = 220,
  buildDistance                 = 500,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[armnanotc_aoplane.dds]],

  buildoptions                  = {
  },

  buildPic                      = [[armnanotc.png]],
  buildTime                     = 220,
  canGuard                      = true,
  canMove                       = false,
  canPatrol                     = true,
  canreclamate                  = [[1]],
  canstop                       = [[1]],
  cantBeTransported             = true,
  category                      = [[FLOAT UNARMED]],
  corpse                        = [[DEAD]],
  defaultmissiontype            = [[Standby]],
  energyMake                    = 0.3,
  explodeAs                     = [[NANOBOOM2]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[staticbuilder]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  maneuverleashlength           = [[380]],
  mass                          = 100000,
  maxDamage                     = 500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0.3,
  minCloakDistance              = 150,
  movementClass                 = [[KBOT1]],
  noAutoFire                    = false,
  objectName                    = [[armsenan.s3o]],
  script                        = [[nanotower.lua]],
  seismicSignature              = 4,
  selfDestructAs                = [[NANOBOOM2]],
  showNanoSpray                 = false,
  side                          = [[ARM]],
  sightDistance                 = 380,
  smoothAnim                    = true,
  steeringmode                  = [[1]],
  TEDClass                      = [[CNSTR]],
  terraformSpeed                = 600,
  turnRate                      = 1,
  upright                       = true,
  useBuildingGroundDecal        = true,
  workerTime                    = 12,

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Caretaker]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 500,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 88,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 88,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Caretaker]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 500,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 44,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 44,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armnanotc = unitDef })
