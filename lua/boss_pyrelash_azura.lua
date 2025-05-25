local BOSS_ID = 99101

local function CastFireNova(eventId, delay, calls, creature)
    creature:CastSpell(creature, 12470, true) -- Fire Nova
end

local function CastLashOfFlame(eventId, delay, calls, creature)
    local target = creature:GetVictim()
    if target then
        creature:CastSpell(target, 11923, true) -- Lash of Flame (placeholder)
    end
end

local function FlameShield(eventId, delay, calls, creature)
    creature:CastSpell(creature, 134, true) -- Fire Shield
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Ignaroth's flame will cleanse your soul!", 0)
    creature:RegisterEvent(CastFireNova, 8000, 0)
    creature:RegisterEvent(CastLashOfFlame, 12000, 0)
    creature:RegisterEvent(FlameShield, 20000, 1)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("The fire... never dies...", 0)
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)
