local BOSS_ID = 99201

local function FireHead(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    creature:CastSpell(target, 11988, true) -- Fireball
end

local function LavaSplash(eventId, delay, calls, creature)
    creature:CastSpell(creature, 25033, true) -- Lava AOE
end

local function SwitchHeads(eventId, delay, calls, creature)
    creature:SendUnitYell("A new head rises from the flame!", 0)
    creature:CastSpell(creature, 10898, true) -- Renew (head regrowth visual)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Hissss... Burn with us!", 0)
    creature:RegisterEvent(FireHead, 5000, 0)
    creature:RegisterEvent(LavaSplash, 12000, 0)
    creature:RegisterEvent(SwitchHeads, 20000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("The heads... fall...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
