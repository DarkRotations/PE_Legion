-- SPEC ID 64
ProbablyEngine.rotation.register_custom(64, '|cff69ACC8Frost Squad|r', {
 
 --Single Target
 { "Rune of Power", {"modifier.cooldowns", "!player.buff(Rune of Power)"}},
 { "Icy Veins", "modifier.cooldowns"},
 { "Frozen Touch", "player.buff(Fingers of Frost).count = 0"},
 { "Frozen Orb"},
 { "Ray of Frost"},
 { "Ebonbolt", "player.buff(Fingers of Frost).count < 3"	},
 { "Ice Lance", "player.buff(Fingers of Frost).count = 3"},
 { "Flurry", "player.buff(Brain Freeze)" },
 { "Glacial Spike"},
 { "Comet Storm"},
 {"Frost Bomb", "!target.debuff(Frost Bomb)", "target"},
 { "Ice Lance", "player.buff(Fingers of Frost).count < 3"},
 { "Water Jet" },
 { "Frost Bolt"}},
 
 
 
 
 
 
  
{{ "ArcanBrilliance", "!player.buff" },
 --{ "Frost Armor", "!player.buff" }})


}
, function()
	-- "toggle.pally_toggle"
	ProbablyEngine.toggle.create('pally_toggle', 'Interface\\ICONS\\inv_shield_04', 'Pally Toggle', 'Description')
end)
