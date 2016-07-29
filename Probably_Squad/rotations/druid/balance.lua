--   SPEC ID 102 (Balance)


ProbablyEngine.rotation.register_custom(102, '|cffFA5E0ABalance Squad|r', {

  --------------------
  -- Start Rotation --
  --------------------
  
  -- Lets Pause ?
  --{ "pause", "modifier.lshift" },

  
  --Lets Heal ourselves with ALT key
  { "Rejuvenation", {"modifier.alt", "!player.buff(Rejuvenation)"}}, 
  { "Healing Touch", {"modifier.alt", "player.buff(Rejuvenation)"}}, 
  
  -- Interupts
  { "Solar Beam", "modifier.interrupts"},
  { "War Stomp", { "target.range <= 8", "modifier.interrupts" }},
  { "Typhoon", { "target.range <= 8", "modifier.interrupts"}},
  { "Starfall",   {"modifier.multitarget", "!player.buff(Starfall)" , "player.eclipseRaw < 0" }},
  
  -- Lets check our state.. 
  { "/cancelform", "player.buff(Cat Form)" },
  { "/cancelform", "player.buff(Bear Form)" },
  { "Moonkin Form", "!player.buff(Moonkin Form)"},
  
  -- Mouseover Support
  { "Moonfire", {"!mouseover.debuff(Moonfire)", "mouseover.enemy"}, "mouseover" },
  { "Sunfire",  {"!mouseover.debuff(Sunfire)",  "mouseover.enemy"}, "mouseover" },
  { "Rebirth", "!mouseover.alive", "mouseover" },

  -- Cooldowns
 
  { "Stellar Flare", {"modifier.cooldowns", "!target.debuff(Stellar Flare)", "!lastcast(Stellar Flare)" }},
  
   { "Celestial Alignment",  {"modifier.cooldowns", "!toggle.pally_toggle" } },
   { "Celestial Alignment",  {"modifier.cooldowns", "toggle.pally_toggle" , "player.buff(Instability)" } },
   { "Celestial Alignment",  {"modifier.cooldowns", "toggle.pally_toggle" , "player.buff(Mark of Bleeding Hollow)" } },
   { "Celestial Alignment",  {"modifier.cooldowns", "toggle.pally_toggle" , "player.buff(Howling Soul)" } },
   { "Celestial Alignment",  {"modifier.cooldowns", "toggle.pally_toggle" , "player.buff(Nightmare Fire)" } },
   { "Incarnation: Chosen of Elune", { "modifier.cooldowns", "!toggle.pally_toggle" }}, 
   { "Incarnation: Chosen of Elune", { "modifier.cooldowns", "toggle.pally_toggle", "player.buff(Howling Soul)"}}, 
   { "Incarnation: Chosen of Elune", { "modifier.cooldowns", "toggle.pally_toggle", "player.buff(Mark of Bleeding Hollow)"}}, 
   { "Incarnation: Chosen of Elune", { "modifier.cooldowns", "toggle.pally_toggle", "player.buff(Instability)"}},
   { "Incarnation: Chosen of Elune", { "modifier.cooldowns", "toggle.pally_toggle", "player.buff(Nightmare Fire)"}}, 
  
  
  -- Refresh DOTs
  
  { "Moonfire",   "target.debuff(Moonfire).duration < 3"					},
  { "Sunfire",   "target.debuff(Sunfire).duration < 3"					},

  { "Sunfire",  "!target.debuff(Sunfire)"},
  { "Moonfire",  "!target.debuff(Moonfire)"},
  { "Starfall",   {"modifier.multitarget", "!player.buff(Starfall)" , "player.eclipseRaw < 0" }},
-- { "Starsurge",  {"player.eclipseRaw < 1" }}, --, "!modifier.multitarget"  }},
  { "Starsurge",  {"!player.buff(Lunar Empowerment)", "player.eclipseRaw < 1" }}, --, "!modifier.multitarget"  }},
  { "Starsurge",  {"!player.buff(Solar Empowerment)", "player.eclipseRaw > 0",  "player.spell(Starsurge).charges >= 2"  }}, --, "!modifier.multitarget"  }}, 
  --{ "Starsurge",  {"!player.buff(Solar Empowerment)", "player.eclipseRaw > 0" }},
  --{ "Sunfall",   {"modifier.multitarget", "!player.buff(Sunfall)" 							}},
   -- Walking
  { "Starsurge", "player.moving" },
  { "Sunfire",  "player.moving" },
  { "Moonfire",  "player.moving"},
   
   -- Starsurge Check 
   { "Starfire", "player.buff(Celestial Alignment)"}, 
   { "Starfire", "Incarnation: Chosen of Elune"}, 
  { "Starsurge",  {"player.buff(Shooting Stars)", "player.eclipseRaw < 0", "player.balance.moon", "!modifier.multitarget"  	}}, 
  { "Moonfire",   {"player.eclipseRaw < 0", "target.debuff(Moonfire).duration < 2"					}},
  { "Sunfire",    {"player.eclipseRaw > 0", "target.debuff(Sunfire).duration < 2"					}},
  
  { "Starfire", {"player.eclipseRaw < 60", "player.balance.moon", "player.buff(Lunar Empowerment)"}},
  { "Starfire", {"player.eclipseRaw < -60", "player.buff(Lunar Empowerment)"					}},
  { "Wrath",	   {"player.balance.sun", "player.eclipseRaw > 0", "player.buff(Solar Empowerment)"}},
  { "Wrath",		{ "player.balance.moon", "player.eclipseRaw > 60", "player.buff(Solar Empowerment)"}}, 
  { "Starfire", {"player.eclipseRaw < 60", "player.balance.moon"}},
  { "Starfire", "player.eclipseRaw < -60"							},
  { "Wrath",	   {"player.balance.sun", "player.eclipseRaw > 0"}},
  { "Wrath",		{ "player.balance.moon", "player.eclipseRaw > 60"}},
  { "Wrath", {"player.balance.sun", "player.eclipseRaw > -30"}},
  { "Starfire" }, 
 
  }
    
    
    , function()
	-- "toggle.custom_toggle_name"
		ProbablyEngine.toggle.create('pally_toggle', 'Interface\\ICONS\\inv_shield_04', 'CDs w Trinkets', 'Your CDs Will Only Be Used When your Trinkets Proc')
end)
    
  
  -- 
  -- 
  --
  
--{ "171743", {"player.buff(Lunar Peak)", "!modifier.last(171743)"  }},
 --{ "171744", {"player.buff(Solar Peak)", "!modifier.last(171744)" } },
 --{ "Moonfire", {"player.buff(Lunar Peak)", "!modifier.last(Moonfire)"  }},
 --{ "Sunfire", {"player.buff(Solar Peak)", "!modifier.last(Sunfire)" } },


 --{ "Wrath",      {"player.buff(Solar Empowerment)", "player.eclipseRaw > 30"						}},
 -- { "Wrath",	   "player.eclipseRaw > 0"														},
 -- { "Starfire",   {"player.buff(Lunar Empowerment)", "player.eclipseRaw < 40"						}},
  
 -- { "Starfire",	  {"player.eclipseRaw < 20", "player.eclipseRaw > 0"									}},
 -- { "Starfire"																					},
  

 -- { "Sunfire",    {"player.eclipseRaw < 20", "player.eclipseRaw > 5", "player.balance.moon"  			}},
 -- { "Moonfire",   {"player.eclipseRaw > -10", "player.eclipseRaw < 0", "player.balance.sun", "!player.buff(Moonfire)"  			}},


 --
    --{ "Incarnation: Chosen of Elune",  "modifier.cooldowns"},
  --  { "Moonfire", "target.debuff(Moonfire).duration < 2" },
 -- { "Sunfire", "target.debuff(Sunfire).duration < 2" },
 


   
 -- 
 -- { "Wrath",	{"player.buff(Solar Empowerment)", "player.buff(Solar Empowerment).duration >= 24"}},
  
  
 -- {"112071",	"modifier.cooldowns"},

 
  
  
  -- Mouseover Debuffing, remmed out until I put in 'is a target and  not a player' 
 -- { "Moonfire", "!mouseover.debuff(Moonfire)", "mouseover" },
 -- { "Sunfire", "!mouseover.debuff(Sunfire)", "mouseover" },
  
  -- Mouseover Brez
  -- 
  

 -- { "Might of Ursoc", "player.health <= 50" },
 -- { "Cenarion Ward", "player.health < 85", "player" },
 -- { "Barkskin", "player.health <= 80", "player" },
  
  
  -- Cooldowns

 -- { "Nature's Vigil", "modifier.cooldowns" },
  
  -- DOTS

 -- { "Typhoon", "modifier.shift"},
  --{ "Starsurge",  "player.buff(Shooting Stars)" },

  --{ "Starfire", {"player.balance.sun",   "player.spell(StarSurge).charges = 0" }},
  --{ "Wrath", 	{"player.balance.moon",  "player.spell(StarSurge).charges = 0" }},
  --{ "Starfire", {"player.balance.none",   "player.spell(StarSurge).charges = 0" }},


  ------------------
  -- Old Rotation Bits  --
  ------------------
  --{ "Starfire", {"player.buff(Lunar Empowerment)", "player.buff(Lunar Empowerment).duration >= 24"}},

