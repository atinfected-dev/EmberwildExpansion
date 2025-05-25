local BOSS_ID = 99401

local function VineBind(eventId, delay, calls, creature)
    local victim = creature:GetVictim()
    creature:CastSpell(victim, 33395, true) -- Root
    creature:SendUnitYell("You are tangled in nature's wrath!", 0)
end

local function IgniteVines(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 58694, true) -- Ignite AOE
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Even stone bows to the wild.", 0)
    creature:RegisterEvent(VineBind, 10000, 0)
    creature:RegisterEvent(IgniteVines, 14000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("The jungle... retreats...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
