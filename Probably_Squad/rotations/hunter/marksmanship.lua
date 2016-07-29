-- SPEC ID 254
ProbablyEngine.rotation.register_custom(254, '|cff69ACC8Hunter Woot Squad|r', {
 

  --------------------
  -- Start Rotation --
  --------------------
  -- "target.debuff(Moonfire).duration < 2"
  { "Marked Shot" },
  
  { "Barrage"},
  { "Marked Shot", {"target.debuff(Vulnerable).duration < 2", "target.debuff(Hunter's Mark).duration > 3"}},
  { "Sidewinders", "player.buff(Marking Targets)"},
  { "Aimed Shot", "target.debuff(Vulnerable).duration > 2"},
  { "Piercing Shot", "player.focus >= 99"},

  { "Aimed Shot"},

  --  
  --{ "Explosive Shot"},
  
  
  --{ "Black Arrow"},
  
    -- Traps
  --[[  { "Multi-Shot",   "modifier.shift" },
  --{ "Ice Trap", "modifier.control", "ground" },
  { "Explosive Trap", "modifier.alt", "ground" },
  --{ "Freezing Trap" , "modifier.shift", "ground" },
  
  -- Interrupts
  { "Counter Shot",  "modifier.interrupts"},
  -- Pet
   { "Chimaera Shot" },
   { "Kill Shot"},
   { "Multi-Shot", "modifier.shift" },
  { "Aimed Shot", "player.buff(Thrill of the Hunt)" },



  -- Survival
  { "Deterrence", "player.health < 40" },
  { "Exhilaration", "player.health < 40" },
  


  -- Cooldowns
  { "Powershot", "modifier.cooldowns"},
  { "Stampede", "modifier.cooldowns" },
  { "A Murder of Crows", "modifier.cooldowns" },
  { "Lynx Rush", "modifier.cooldowns" },
  { "Rapid Fire", "modifier.cooldowns" },
  { "Rabid", { "modifier.cooldowns", "player.buff(Rapid Fire)" } },

  -- AoE
  { "Multi-Shot", { 
    "player.buff(Thrill of the Hunt)", 
    "modifier.multitarget",
  }},
  
  { "Multi-Shot", { 
    "player.focus >= 60", 
    "modifier.multitarget" 
  }},

  -- Debuffs
  --{ "Serpent Sting", "!target.debuff(Serpent Sting)" },

  -- Careful Aim Rotation ( 90% + HP )
  { "Focusing Shot", "player.focus <= 34"}, 
    { "Chimaera Shot" },
    { "Steady Shot", "player.focus <= 35"}, 
    { "Aimed Shot", { "player.spell(Chimaera Shot).cooldown > 4", "!player.moving" }},
    { "Aimed Shot", { "player.spell(Chimaera Shot).cooldown > 4","player.buff(Rapid Fire)" }},
    { "Aimed Shot", { "player.spell(Chimaera Shot).cooldown > 4","player.buff(Fire!)" }},
    { "Aimed Shot",  "player.spell(Chimaera Shot).cooldown > 4"},
    { "Glaive Toss", "modifier.cooldowns"},
    { "Barrage", "modifier.cooldowns"},
    --{ "Steady Shot", "player.debuff(Steady Focus).duration < 6" },
    { "Steady Shot", "player.spell(Chimaera Shot).cooldown > 2"},
    { "Focus Shot" }, 
  

  -- Standard Rotation ( 90% - HP )
  --{{
  --  { "Serpent Sting", "!target.debuff(Serpent Sting)" },
  --  { "Chimera Shot" },
  --  { "Kill Shot" },
  --  { "Glaive Toss" },
  --  { "Powershot" },
  --  { "Barrage" },
  --  { "Dire Beast" },
  --  { "Fervor" },
  --  { "Aimed Shot", "player.buff(Fire!)" },
  --  { "Arcane Shot", "player.focus >= 65" },
  --  { "Steady Shot" }
 -- }, "target.health < 1"}
  
  ------------------
  -- End Rotation --
  --------------------]]

 
  }
)
