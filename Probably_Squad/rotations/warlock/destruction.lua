-- SPEC ID 267
ProbablyEngine.rotation.register_custom(267, '|cff69ACC8DeathSquad Rotation|r',{

  --------------------
  -- Start Rotation --
  --------------------

  -- Keybinds
		{ "Rain of Fire", "modifier.shift", "ground" },


	-- Cooldowns
  	
  		{"Dark Soul: Instability", {"player.spell(Dark Soul: Instability).cooldown < 1", "modifier.cooldowns",  "!player.buff"}},
  		{"Summon Terrorguard",  "modifier.cooldowns"},
  		{"Summon Doomguard",  "modifier.cooldowns"},

	-- Moving
		{ "Incinerate", {"player.spell(Kil'jaeden's Cunning).exists", "player.moving"} },
		{ "Kil'jaeden's Cunning", "player.moving"},
  		 	

-- Single Target Rotation

		{ "Shadowburn", "target.health <=20" },
		{ "Chaos Bolt", "player.buff(Dark Soul: Instability)", "target"},
		{ "Cataclysm", { "modifier.alt", "target.debuff(Immolate)", "ground" }},
		{ "Immolate", "!target.debuff(Immolate)" },
		{ "Immolate", "target.debuff(Immolate).duration <= 4"},
		{ "Conflagrate", "player.spell(Conflagrate).charges >= 2", "target"},
	    { "Chaos Bolt", {"!lastcast(Chaos Bolt)", "player.embers >= 35"}, "target"},
		{ "Chaos Bolt", "player.buff(Skull Banner)", "target"},
		{ "Conflagrate", "player.spell(Conflagrate).charges = 1", "target"},
		{ "Incinerate" 	},
		
		
	

   	 	--{"Fire and Brimstone","player.area(10).enemies >= 3", "target"}, 

  	
		
	-- AoE
		--{"Fire and Brimstone", { "player.embers >= 35", "modifier.multitarget"}},

  	-- Rotation
	  	
	  	-- "!lastcast(Stellar Flare)" 
	  	

	  	--{"Conflagrate" },
	  	  
  ------------------
  -- End Rotation --
  ------------------
  
}, {

  ---------------
  -- OOC Begin --
  ---------------
  
  { "Dark Intent", "!player.buff" },
  {{
  
  { "Summon Felhunter", { 
    "!modifier.last(Summon Felhunter)", 
    "!player.spell(Grimoire of Supremacy).exists",
  }},
  
  { "Summon Observer", { 
    "!modifier.last(Summon Observer)", 
    "player.spell(Grimoire of Supremacy).exists",
  }},
  
  }, { "!player.moving", "!pet.exists" }},
  
  { "Grimoire of Sacrifice", { 
    "player.spell(Grimoire of Sacrifice).exists", 
    "!player.buff", 
    "pet.exists",
  }}
  
  -------------
  -- OOC End --
  -------------
  
})
