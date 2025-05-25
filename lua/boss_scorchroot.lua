local BOSS_ID = 99100

local function CastFlameVines(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    if target then
        creature:CastSpell(target, 70396, true) -- Flame Vines (placeholder)
    end
end

local function CastMoltenThorns(eventId, delay, calls, creature)
    creature:CastSpell(creature, 18809, true) -- Thorns aura (placeholder)
end

local function SpawnLashers(eventId, delay, calls, creature)
    local x, y, z = creature:GetX(), creature:GetY(), creature:GetZ()
    for i = 1, 2 do
        creature:SpawnCreature(36880, x+math.random(-5,5), y+math.random(-5,5), z, 0, 14, 30000)
    end
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("The jungle burns with me!", 0)
    creature:RegisterEvent(CastFlameVines, 9000, 0)
    creature:RegisterEvent(CastMoltenThorns, 15000, 0)
    creature:RegisterEvent(SpawnLashers, 20000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Ashes... to ashes...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
