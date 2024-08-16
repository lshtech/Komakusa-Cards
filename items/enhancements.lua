--- SANNYO MOD ENHANCEMENTS ---

-- Atlas Setup

SMODS.Atlas {
	key = "sannyoatlas",
	path = "sannyoenhancements.png", 
	px = 71, 
	py = 95,
}

-- 

SMODS.Enhancement { -- Ofuda Card
	key = "ofuda",
	atlas = "sannyoenhancements",
	pos = {x=0, y=0},
	config = { x_mult = 1.25, mult = 4},
	loc_text = {
		name = 'Ofuda Card',
		text = {
			'{X:mult,C:white} X#1# {} Mult when scored,',
			'+#1# Mult when held in hand,',
			'Does not count for rank or suit,'
			},
		},
		loc_vars = function(self, info_queue)
			return { vars = {self.config.x_mult, self.config.mult,}
		end
	}
}


