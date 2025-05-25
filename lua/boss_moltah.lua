local BOSS_ID = 99102

local function MoltenSmash(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 22591, true) -- Ground Smash (stun)
end

local function FlameBreath(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 9748, true) -- Fire breath
end

local function MoltenFury(eventId, delay, calls, creature)
    creature:CastSpell(creature, 13750, true) -- Berserk (placeholder)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("RRRAAAGHHH!!!", 0)
    creature:RegisterEvent(MoltenSmash, 10000, 0)
    creature:RegisterEvent(FlameBreath, 15000, 0)
    creature:RegisterEvent(MoltenFury, 25000, 1)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Burnt... out...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
