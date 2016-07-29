-- By Ness

	ProbablyEngine.rotation.register_custom(70, '|cff69ACC8Retrisquad Seraphim Rotation|r',{
	
	-- Interupts & Modifiers
	
 { "Arcane Torrent", {"modifier.interrupts", "target.range <= 5" 											}},  -- Racial Talent 
 { "War Stomp", 	 {"modifier.interrupts", "target.range <= 5" 											}},  -- Racial Talent 
 { "Rebuke", 		 {"modifier.interrupts" , "target.range <= 5" 											}},
 { "Fist of Justice", "modifier.shift"																		},	
 { "Light's Hammer",  "modifier.alt", "ground"					 											},
 { "Divine Protection", "modifier.alt" 																		}, 
 { "Sacred Shield",   	"modifier.alt"										 								},
 
    -- Cooldowns
 { "Avenging Wrath", { "!player.buff(Avenging Wrath)", "modifier.cooldowns" 								}},
 { "Seraphim",       { "player.buff(Avenging Wrath)",  "modifier.cooldowns"									}},
 { "Seraphim",       { "player.buff(Bloodlust)",  "modifier.cooldowns"										}},
 { "Seraphim",       { "player.buff(Time Warp)",  "modifier.cooldowns"										}},
 { "Seraphim",       { "player.buff(Heroism)",  "modifier.cooldowns"										}},
 
 	-- Single Target Rotation
 { "Seraphim",        {"!modifier.multitarget",  "modifier.cooldowns"												}},
 { "Templar's Verdict",  {"player.holypower = 5", "!modifier.multitarget"											}},
 { "Execution Sentence", {"modifier.cooldowns", "!modifier.multitarget"					 							}},
 { "Hammer of Wrath",	"!modifier.multitarget"																		},
 { "Crusader Strike",	"!modifier.multitarget"																	 	},
 { "Judgment",			"!modifier.multitarget"																	    },
 { "Exorcism",			"!modifier.multitarget"																        },
 { "Empowered Divine Storm", 	 "!modifier.multitarget"															},
 { "Templar's Verdict",  {"player.holypower = 3", "!modifier.multitarget"											}},
 

 
 	-- Multi Target Roation
 { "Divine Storm", 	 {"player.buff(Empowered Divine Storm)", "player.buff(Final Verdict)", "modifier.multitarget"	}},
 { "Divine Storm", 	 {"player.buff(Final Verdict)", "modifier.multitarget"											}},
 { "Final Verdict",  {"player.holypower = 5", "modifier.multitarget"												}},
 { "Hammer of the Righteous", "modifier.multitarget" 																},
 { "Exorcism",			"modifier.multitarget"																        },
 { "Hammer of Wrath",	"modifier.multitarget"																		},
 { "Judgment",			"modifier.multitarget"																	    },
 { "Final Verdict",  {"player.holypower = 3", "modifier.multitarget"												}},
 
 
 
 
 
 
 
 
 
 --{ "Avenging Wrath", { "!player.buff(Avenging Wrath)", "modifier.cooldowns", "player.buff(Final Verdict)" 	}},
 --{ "Final Verdict", "!player.buff(Final Verdict)"								},
 
  
 --{ "Divine Storm", "player.buff(Divine Crusader)"										 }, 
 --{ "Divine Storm", "player.buff(Empowered Divine Storm)"						}, 
 --{ "Final Verdict", {"!player.buff(Final Verdict)", "player.holypower = 5"				}},
 --{ "Divine Storm",  "player.buff(Final Verdict).duration > 10" }, 
 
 
 
 
 
 
-- { "Hammer of Wrath" 															},
 --{ "Final Verdict", "!player.buff(Final Verdict)"								},
 -- { "Divine Storm", "player.buff(Final Verdict)"									}, 
 --{ "Fist of Justice", "modifier.shift"				  							},
-- { "Avenging Wrath", { "!player.buff(Avenging Wrath)", "modifier.cooldowns" 	}},
 --{ "Divine Storm", "player.buff(Divine Crusader)"								}, 
 --{ "Divine Storm", "player.buff(Empowered Divine Storm)"						}, 

   
 --{ "Execution Sentence", 					 									},
 
 --{ "Hammer of the Righteous", "modifier.multitarget" 							},
-- { "Crusader Strike", "!modifier.multitarget"									},
-- { "Exorcism" 																	},
-- { "Judgment" 																	},

 
        
    -- Lets check for buffs and Cooldown check
   -- { "Holy Avenger", "modifier.cooldowns"},
  --  { "Holy Prism", 							 							}, -- Talent 
  --  
 --   { "Templar's Verdict", {"player.buff(Divine Purpose)", "!modifier.multitarget" }},
 --   { "Divine Storm", {"player.buff(Divine Purpose)", "modifier.multitarget" 	   }}, 
    
     
  --  
  --  { "Exorcism", "player.buff(Exorcism!)"									},
           
  --  { "Blessing of Might", "!player.buff(Blessing of Might)" 				},
  --  
    --Empowered Divine Storm 
    -- Lets Interupt Something

    
    -- Lets Check for Key Press
 --   { "Sacred Shield",   "modifier.alt" 									}, -- Talent
 --   
 --   { "Light's Hammer", "modifier.control" 					 				}, -- Talent
    
    -- Single / Multi Target Rotation
 --   { "Templar's Verdict", {"player.holypower > 2", "!modifier.multitarget" }},
 --   { "Divine Storm", {"player.holypower > 2", "modifier.multitarget" 		}},
  --   -- Talent
   
   
  --  
  --  
 
    
 
  },
    {
	  -- Out of COmbat Buffing Buffing
	  --{"Blessing of Might", "!player.buff(Blessing of Might)"},
	   
	   { "/use Empowered Augment Rune", "!player.buff(Stout Augmentation)"},
  

}
  
  , function()
	-- "toggle.custom_toggle_name"
		ProbablyEngine.toggle.create('seraphim', 'Interface\\ICONS\\ability_paladin_seraphim', 'Seraphim', 'Description')
		ProbablyEngine.toggle.create('conc', 'Interface\\ICONS\\Spell_Holy_ImpHolyConcentration', 'conc', 'Description')
end)
