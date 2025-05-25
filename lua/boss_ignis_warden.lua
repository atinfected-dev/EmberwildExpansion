local BOSS_ID = 99400

local function ActivateLaser(eventId, delay, calls, creature)
    local victim = creature:GetVictim()
    creature:CastSpell(victim, 59772, true) -- Laser Barrage
    creature:SendUnitYell("Warden Protocol: Fire Sweep Engaged.", 0)
end

local function ActivateBarrier(eventId, delay, calls, creature)
    creature:CastSpell(creature, 19506, true) -- Defensive Shield
    creature:SendUnitYell("Initiating defensive subroutine.", 0)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("ALERT: Intrusion detected in core system.", 0)
    creature:RegisterEvent(ActivateLaser, 8000, 0)
    creature:RegisterEvent(ActivateBarrier, 15000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Protocol... terminated...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
