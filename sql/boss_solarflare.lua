local BOSS_ID = 99402

local function SolarBlast(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    creature:CastSpell(target, 38575, true) -- Fire + Light
end

local function BlindingRadiance(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 59322, true) -- Blind
    creature:SendUnitYell("Gaze into the sun and fall!", 0)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("The light burns... brighter!", 0)
    creature:RegisterEvent(SolarBlast, 8000, 0)
    creature:RegisterEvent(BlindingRadiance, 15000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Light... extinguished...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
