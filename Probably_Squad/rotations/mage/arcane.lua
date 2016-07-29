-- SPEC ID 62
ProbablyEngine.rotation.register_custom(62, '|cff69ACC8Arcane Squad|r',{
	
	
	--print player.charges,
	{ "Arcane Missiles", "player.charges >= 4"},
	{ "Arcane Barrage", "player.charges >= 4"},
	
	{ "Rune of Power", "modifier.shift"		 },
	 { "Ring of Frost", "modifier.alt", "ground" }, 
 { "Presence of Mind",  "modifier.cooldowns"						},
 { "Arcane Power", 	    "modifier.cooldowns"						},
{ "Evocation",       "player.mana <= 20"							},
{ "Arcane Orb", "player.debuff(Arcane Charge).count <= 1"			},
{ "Supernova", "modifier.cooldowns"						   			},
{ "Arcane Missiles",  "player.buff(Arcane Missiles!).count = 3"		},
{ "Arcane Blast",  "player.mana > 93" 								},
{ "Arcane Missiles", {"player.buff(Arcane Missiles!).count >= 1", "player.debuff(Arcane Charge).count >= 4" }},
 { "Arcane Barrage",  {"player.debuff(Arcane Charge).count >= 4", "player.spell(12051).cooldown > 1"				}},
  { "Arcane Blast"													},
  

  ------------------
  -- End Rotation --
  ------------------

  },{

  ---------------
  -- OOC Begin --
  ---------------
   { "Arcane Brilliance", "!player.buff(Arcane Brilliance)"},
  { "1459", "!player.buff" }, -- Arcane Brilliance

 

  

  -------------
  -- OOC End --
  -------------

}, function()
  ProbablyEngine.toggle.create('burn', 'Interface\\ICONS\\Spell_mage_infernoblast', 'Burn Phase', 'Turn this on if you need something big to die!')
end)
