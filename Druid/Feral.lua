-- SPEC ID 103
-- v1.0 - Updated by PvEBoy  02/04/2016

ProbablyEngine.rotation.register_custom(103, "|cffFF7D0APvEBoy|r - |cffFF7D0AFeral Druid v1.0|r", {

--------------------
-- Start Rotation --
--------------------

-- Pause --

{ "pause", "modifier.lcontrol" },

-- Survival --

{ "108238", { "player.health < 40" }},
{ "#109223", { "player.health < 30" }},
{ "61336", { "player.health < 20" }},

-- Interrupt(s) --

{ "106839", { "modifier.interrupt", "target.interruptAt(20)" }},

-- Auto Target --

{ "/targetenemy [noexists]", { "toggle.autotarget", "!target.exists" }},
{ "/targetenemy [dead]", { "toggle.autotarget", "target.exists", "target.dead" }},

-- Healing Touch --

{ "5185", {  "talent(7,2)", "player.combopoints = 5", "player.buff(Predatory Swiftness)" }, "lowest" },
{ "5185", { "player.buff(Predatory Swiftness)",  "player.buff(Predatory Swiftness).duration <= 3" }, "lowest" },

-- Cooldowns --

{{
{ "Berserking", { "target.debuff(Rake)", "target.range <= 6" }},
{ "Berserk", { "target.debuff(Rake)", "target.range <= 6" }},
{ "Incarnation: King of the Jungle", { "target.debuff(Rake)", "target.range <= 6" }},
}, "toggle.cooldowns" },

-- Multi -- 

{{
{ "5217", { "!player.buff(5217)", "player.energy < 100", "target.range <= 6" }},
{ "52610", { "player.buff(52610).duration <= 4", "player.buff(174544).duration <= 4", "player.combopoints >= 2", "target.range <= 6" }, "target" },
{ "1079", { "target.health < 25", "!target.debuff(1079)", "player.combopoints = 5", "target.range <= 6" }, "target" },
{ "1079", { "target.health > 25", "target.debuff(1079).duration <= 7", "player.combopoints = 5", "target.range <= 6" }, "target" },
{ "22568", { "target.health < 25", "target.debuff(1079).duration < 5", "player.combopoints = 5", "target.range <= 6" }, "target" },
{ "22568", { "target.debuff(1079).duration > 7", "player.buff(52610).duration > 4", "player.combopoints = 5", "target.range <= 6" }, "target" },
{ "22568", { "target.debuff(1079).duration > 7", "player.buff(174544).duration > 4", "player.combopoints = 5", "target.range <= 6" }, "target" },
{ "106830", { "player.buff(Clearcasting)", "!target.debuff(106830)", "target.range <= 6" }, "target" },
{ "106830", { "player.buff(Clearcasting)", "target.debuff(106830).duration < 5", "target.range <= 6" }, "target" },
{ "1822", { "target.debuff(155722).duration <= 4", "target.range <= 6"}, "target" },
{ "106785", { "target.range <= 6" }},
}, "toggle.multitarget" },


-- Single --

{{
{ "Tiger's Fury", { "player.buff(Berserk)", "target.range <= 6", "!player.buff(5217)" }},
{ "Tiger's Fury", { "player.energy <= 100", "target.range <= 6", "!player.buff(5217)" }},
{ "Savage Roar", { "player.buff(52610).duration <= 12.6", "player.buff(174544).duration <= 12.6", "player.combopoints >= 5", "target.range <= 6" }},
{ "Rake", { "target.debuff(155722).duration <= 4.5", "target.range <= 6" }},
{ "Rip", { "target.health < 25", "!target.debuff(1079)", "player.combopoints = 5", "target.range <= 6" }},
{ "Ferocious Bite", { "target.health < 25", "target.debuff(1079)", "player.combopoints = 5", "target.range <= 6" }},
{ "Rip", { "target.health > 25", "target.debuff(1079).duration <= 9", "player.combopoints = 5", "target.range <= 6" }},
{ "Ferocious Bite", { "target.debuff(1079).duration > 7.2", "player.buff(52610).duration > 12.6", "player.combopoints = 5", "target.range <= 6" }},
{ "Ferocious Bite", { "target.debuff(1079).duration > 7.1", "player.buff(174544).duration > 12.6", "player.combopoints = 5", "target.range <= 6" }},
{ "Shred", { "target.range <= 6" }},
}, "!toggle.multitarget" },

------------------
-- End Rotation --
------------------
  
}, {
  
---------------
-- OOC Begin --
---------------

-- Pause --

-- Pet --

-- Buff --
  
-------------
-- OOC End --
-------------
},

function()
ProbablyEngine.toggle.create('autotarget', 'Interface\\Icons\\ability_hunter_snipershot', 'Auto Target', 'Automatically target the nearest enemy when target dies or not exist')
end)
