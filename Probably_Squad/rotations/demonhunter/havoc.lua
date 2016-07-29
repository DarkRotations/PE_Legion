--   SPEC ID 577

ProbablyEngine.rotation.register_custom(577, '|cff69ACC8Havoc Custom Rotation|r',{
	
	   { "Fel Rush", "modifier.shift" },
	  { "Demon's Bite", { "player.fury < 50", "player.spell(Throw Glaive).cooldown > 0"}},
	  { "Chaos Strike" , "!modifier.multitarget"},
	  { "Eye Beam", "modifier.multitarget"},
	  { "Throw Glaive" },
	--   { "Wilde Strike",   { "!modifier.multitarget","player.rage > 90"												 }},
	
      
      
    -- Oh shit button 'alt' 
      
      						
      
    -- Time to use Cooldowns ? 
      { "Execution Sentence", "modifier.cooldowns" 						},
      { "Seraphim", "modifier.cooldowns"								},
      { "Holy Avenger", "modifier.cooldowns" 							},
      { "Holy Prism" , "modifier.cooldowns" 							},
      { "Sacred Shield",  "modifier.cooldowns"					    	}, 
  
 
      { "Eternal Flame", "!player.buff(Eternal Flame)"					},
  
    -- Well, nothing else to do so lets cause some more damage  
      { "Hammer of Wrath" 												},
	  --{ "Consecration", "target.range <= 5" }, --, "modifier.multitarget"				  	},
	 -- { "Word of Glory", {"player.buff(Bastion of Glory).count = 5", "player.health < 50"	}},
	  { "Holy Wrath", "target.range <= 5"  								},

  --  { "Shield of the Righteous", "player.spell(Seraphim).cooldown > 9"},
 --   { "Shield of the Righteous"										}, -- Rem this line for Seraphim
    
  
 
    
  },
  
  {
	  -- Out of COmbat Buffing Buffing
	  --{"Blessing of Might", "!player.buff(Blessing of Might)"},
	   { "Righteous Fury",    "!player.buff(Righteous Fury)" },
	   { "/use Empowered Augment Rune", "!player.buff(Stout Augmentation)"},
  

}
 
 
, function()
	-- "toggle.custom_toggle_name"
		ProbablyEngine.toggle.create('pally_toggle', 'Interface\\ICONS\\inv_shield_04', 'Pally Toggle', 'Description')
		ProbablyEngine.toggle.create('conc', 'Interface\\ICONS\\Spell_Holy_ImpHolyConcentration', 'conc', 'Description')
		ProbablyEngine.toggle.create('sock', 'Interface\\ICONS\\inv_shield_03', 'AS Interupt All', 'Only use Avenger Shield to Interupt when On')
		ProbablyEngine.toggle.create('stayalive', 'Interface\\ICONS\\inv_shield_04', 'Stay Alive', 'StayAlive')
end)