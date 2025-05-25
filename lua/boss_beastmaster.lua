local BOSS_ID = 99301

local beasts = {21649, 21650, 21651} -- Random flaming beast IDs

local function SummonBeast(eventId, delay, calls, creature)
    local x, y, z = creature:GetX(), creature:GetY(), creature:GetZ()
    local beastId = beasts[math.random(1, #beasts)]
    creature:SpawnCreature(beastId, x+math.random(-6,6), y+math.random(-6,6), z, 0, 14, 15000)
    creature:SendUnitYell("Rip them apart, my pets!", 0)
end

local function FlameWhip(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 11923, true)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("You trespass on sacred ground!", 0)
    creature:RegisterEvent(SummonBeast, 12000, 0)
    creature:RegisterEvent(FlameWhip, 8000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("The wild... remembers...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
