local BOSS_ID = 99203

local function RuneShield(eventId, delay, calls, creature)
    creature:SendUnitYell("Activating defensive protocols.", 0)
    creature:CastSpell(creature, 10901, true) -- Shield (placeholder)
end

local function CorePulse(eventId, delay, calls, creature)
    creature:CastSpell(creature, 11974, true) -- Fire pulse
end

local function Overheat(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    creature:CastSpell(target, 13340, true) -- Overheat burst
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Volgrak activated. Intruder detected.", 0)
    creature:RegisterEvent(RuneShield, 10000, 0)
    creature:RegisterEvent(CorePulse, 7000, 0)
    creature:RegisterEvent(Overheat, 15000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Core failure... shutting... down...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
