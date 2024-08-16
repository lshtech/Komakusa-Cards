--- SANNYO MOD JOKERS ---

-- Atlas Setup

SMODS.Atlas {
	key = "sannyoatlas",
	path = "sannyojokers.png", 
	px = 71, 
	py = 95,
}

-- Jokers
SMODS.Joker {  -- Donation Box
    key = 'donation',
    loc_txt = {
        name = 'Donation Box',
        text = {'{C:green}#1# in 2{} chance to gain',
        '{C:money}$#2#{} when round ends'}
    },
    config = {extra = {money = 6}},
    rarity = 2,
    pos = {x = 0,y = 0},
    atlas = 'sannyoatlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {G.GAME.probabilities.normal, card.ability.extra.money}}
    end,
	calc_dollar_bonus = function(self)
		if pseudorandom('donation') < G.GAME.probabilities.normal/2
			then
				local bonus = self.config.extra.money
				return bonus
		end
	end
}




