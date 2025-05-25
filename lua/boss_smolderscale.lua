local BOSS_ID = 99202

local function FireAura(eventId, delay, calls, creature)
    creature:CastSpell(creature, 13895, true) -- Fire Aura
end

local function FlameSwipe(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    if target then
        creature:CastSpell(target, 15583, true) -- Flame Swipe
    end
end

local function IgniteScales(eventId, delay, calls, creature)
    creature:SendUnitYell("My flames only grow hotter!", 0)
    creature:CastSpell(creature, 16342, true) -- Ignite Buff
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("I am ancient... and aflame!", 0)
    creature:RegisterEvent(FireAura, 10000, 0)
    creature:RegisterEvent(FlameSwipe, 7000, 0)
    creature:RegisterEvent(IgniteScales, 20000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("My flame... fades...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
