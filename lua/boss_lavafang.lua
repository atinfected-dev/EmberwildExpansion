local BOSS_ID = 99200

local function Emerge(eventId, delay, calls, creature)
    creature:SendUnitYell("From below, I strike!", 0)
    creature:CastSpell(creature:GetVictim(), 59151, true) -- Lava Spike (placeholder)
end

local function MoltenBite(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    if target then
        creature:CastSpell(target, 13730, true) -- Flame Bite (placeholder)
    end
end

local function SummonMaggots(eventId, delay, calls, creature)
    local x, y, z = creature:GetX(), creature:GetY(), creature:GetZ()
    for i = 1, 3 do
        creature:SpawnCreature(3101, x+math.random(-3,3), y+math.random(-3,3), z, 0, 14, 15000)
    end
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("You are not welcome here!", 0)
    creature:RegisterEvent(Emerge, 9000, 0)
    creature:RegisterEvent(MoltenBite, 6000, 0)
    creature:RegisterEvent(SummonMaggots, 20000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Back... to the molten depths...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
