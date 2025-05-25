local BOSS_ID = 99403

local function FlameBarrier(eventId, delay, calls, creature)
    creature:CastSpell(creature, 16342, true) -- Damage aura
    creature:SendUnitYell("The archives burn in fire eternal!", 0)
end

local function MindFlame(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 47818, true) -- Mind Burn
end

local function FlameArchive(eventId, delay, calls, creature)
    creature:CastSpell(creature, 59126, true) -- Channel fire archive
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Ignaroth’s wisdom... flows through me!", 0)
    creature:RegisterEvent(FlameBarrier, 10000, 0)
    creature:RegisterEvent(MindFlame, 8000, 0)
    creature:RegisterEvent(FlameArchive, 20000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("The fire... never forgets...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
