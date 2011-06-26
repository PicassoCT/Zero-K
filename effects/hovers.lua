-- hovers_on_ground
-- heavyhovers_on_ground
-- transport_hovers_on_ground

return {
  ["hovers_on_ground"] = {
    clouds0 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 0,
      water              = false,
      properties = {
        airdrag            = 0.99,
        colormap           = [[0 0 0 0.001 0.04 0.04 0.04 0.18    0 0 0 0.001]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 3,
        particlelife       = 20,
        particlelifespread = 20,
        particlesize       = 8,
        particlesizespread = 4,
        particlespeed      = 0.45,
        particlespeedspread = 0.9,
        pos                = [[0, 1.75, 0]],
        sizegrowth         = -0.005,
        sizemod            = 1.0,
        texture            = [[kfoam]],
        useAirLos		   = false,
      },
    },
  },

  ["heavyhovers_on_ground"] = {
    clouds0 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 0,
      water              = false,
      properties = {
        airdrag            = 0.99,
        colormap           = [[0 0 0 0.001 0.04 0.04 0.04 0.18    0 0 0 0.001]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 5,
        particlelife       = 20,
        particlelifespread = 20,
        particlesize       = 8,
        particlesizespread = 4,
        particlespeed      = 0.7,
        particlespeedspread = 1.1,
        pos                = [[0, 1.75, 0]],
        sizegrowth         = -0.005,
        sizemod            = 1.0,
        texture            = [[kfoam]],
		useAirLos		   = false,
      },
    },
  },

  ["transport_hovers_on_ground"] = {
    clouds0 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
	  useAirLos			 = false,	  
      underwater         = 0,
      water              = false,
      properties = {
        airdrag            = 0.95,
        colormap           = [[0 0 0 0.001 0.04 0.04 0.04 0.18    0 0 0 0.001]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 10,
        particlelife       = 40,
        particlelifespread = 40,
        particlesize       = 8,
        particlesizespread = 4,
        particlespeed      = 1,
        particlespeedspread = 2,
        pos                = [[0, 3, 0]],
        sizegrowth         = 0.05,
        sizemod            = 1.0,
        texture            = [[kfoam]],
		useAirLos		   = false,
      },
    },
  },

}

