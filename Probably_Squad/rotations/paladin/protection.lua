--   SPEC ID 66

ProbablyEngine.rotation.register_custom(66, '|cff69ACC8DeathSquad Rotation|r',{
	
	
	    -- Check to interupt 
      { "Execution Sentence", "toggle.stayalive" 						},
      { "Seraphim", "toggle.stayalive"								},
      { "Holy Avenger", "toggle.stayalive" 							},
      { "Holy Prism" 						},
      { "Sacred Shield",  {"!player.buff(Sacred Shield", "toggle.stayalive"					    	}}, 
  
 
      { "Eternal Flame", "!player.buff(Eternal Flame)"					},
	  --{ "Guardian of Ancient Kings", "player.uts = 3" }, 
	--  { "Seal of Insight", {"player.uts = 3", "player.seal != 2"} },
	 -- { "Seal of Righteous", { "player.uts < 3", "player.seal != 1"} }, 
	 --{ "Ardent Defender",   "player.threat = 3" },
	 { "Avenger's Shield"	, "!toggle.sock" 				   							},
      { "Avenger's Shield", "modifier.interrupts" 						},
      { "Rebuke", { "target.range <= 5", "modifier.interrupts"									}},
      { "Arcane Torrent", {"modifier.interrupts", "target.range <= 5" 	}},
      { "Fist of Justice", "modifier.shift"								},
      { "Divine Protection", "modifier.alt" }, 	
     -- { "/use Shieldtronic Shield", {"modifier.alt", "!player.buff(Divine Protection)"}},
      { "Seraphim", "modifier.cooldowns"								}, -- change
      { "Holy Avenger", "modifier.cooldowns" 							}, -- change
      { "Execution Sentence", "modifier.cooldowns" 						}, -- change
	
--{ "pause", "modifier.lshift" },
    -- Check for Procs   
      { "Avenger's Shield", {"player.buff(Grand Crusader)", "!toggle.sock" 				}},  
      { "Shield of the Righteous", {"target.range <= 5","player.buff(Divine Purpose)"	    }},
      { "Shield of the Righteous", "player.spell(Seraphim).cooldown > 9"},
      { "Word of Glory", {"player.buff(Bastion of Glory).count = 5", "player.health < 50"	}},
    
    -- SOR Set to go at 5. 
      { "Shield of the Righteous", {"target.range <= 5", "modifier.alt"						}},
      { "Shield of the Righteous", { "target.range <= 5","player.holypower > 4" ,"toggle.pally_toggle" 				}}, -- rem out for Saraphim
      
    -- Generate Holy Power
      { "Hammer of the Righteous", "modifier.multitarget" 				},
      { "Crusader Strike", "target.range <= 5" 												},  
      { "Judgment" 														},
      { "Consecration", {"target.range <= 5" , "toggle.conc"}}, --, "modifier.multitarget"				  	},     

      
      
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