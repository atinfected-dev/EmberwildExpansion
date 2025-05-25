local BOSS_ID = 99103

local function CastFlameShield(eventId, delay, calls, creature)
    creature:CastSpell(creature, 13376, true) -- Fire Shield Aura
end

local function FlameStomp(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 11430, true) -- Stomp (fire)
end

local function IgniteGround(eventId, delay, calls, creature)
    creature:CastSpell(creature, 58694, true) -- Flames at feet (visual AoE DoT)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Unauthorized access. Executing protocol purge.", 0)
    creature:RegisterEvent(CastFlameShield, 10000, 0)
    creature:RegisterEvent(FlameStomp, 12000, 0)
    creature:RegisterEvent(IgniteGround, 16000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("System... failing...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
