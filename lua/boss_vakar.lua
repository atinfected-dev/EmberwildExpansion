local BOSS_ID = 99304

local function LavaRoots(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    creature:CastSpell(target, 55592, true) -- Root + Fire DoT (placeholder)
    creature:SendUnitYell("The earth grips you... the fire sears!", 0)
end

local function FireNatureFusion(eventId, delay, calls, creature)
    creature:CastSpell(creature, 16591, true) -- Buff
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("The spirits of fire and life obey me!", 0)
    creature:RegisterEvent(LavaRoots, 10000, 0)
    creature:RegisterEvent(FireNatureFusion, 20000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("I... was chosen...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
