local BOSS_ID = 99300

local function CastFlameStorm(eventId, delay, calls, creature)
    creature:SendUnitYell("Let the skies rain fire!", 0)
    creature:CastSpell(creature, 58693, true) -- Firestorm
end

local function FlameDebuff(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    creature:CastSpell(target, 13341, true) -- Burning Hex (dot)
end

local function FlameTotem(eventId, delay, calls, creature)
    local x, y, z = creature:GetX(), creature:GetY(), creature:GetZ()
    creature:SpawnCreature(18062, x+math.random(-3,3), y+math.random(-3,3), z, 0, 14, 15000)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("You defy the flame? You BURN!", 0)
    creature:RegisterEvent(CastFlameStorm, 12000, 0)
    creature:RegisterEvent(FlameDebuff, 7000, 0)
    creature:RegisterEvent(FlameTotem, 18000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Fire... will not be... silenced...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
