local TWIN_IDS = {99302, 99303}
local activeIndex = 1

local function SwapEmpowered(eventId, delay, calls, creature)
    activeIndex = 3 - activeIndex -- Swap 1<->2
    for i, id in ipairs(TWIN_IDS) do
        local twin = creature:GetMap():GetNearestCreature(creature:GetX(), creature:GetY(), creature:GetZ(), id)
        if twin then
            if i == activeIndex then
                twin:CastSpell(twin, 47812, true) -- Empowered Twin (Immolation aura)
                twin:SendUnitYell("I carry the flame now!", 0)
            else
                twin:RemoveAllAuras()
            end
        end
    end
end

local function TwinFirebolt(eventId, delay, calls, creature)
    creature:CastSpell(creature:GetVictim(), 13375, true)
end

local function OnCombat(event, creature, target)
    creature:SendUnitYell("Together, we burn!", 0)
    creature:RegisterEvent(TwinFirebolt, 6000, 0)
    creature:RegisterEvent(SwapEmpowered, 20000, 0)
end

local function OnLeaveCombat(event, creature) creature:RemoveEvents() end
local function OnDied(event, creature, killer) creature:RemoveEvents() end

for _, id in ipairs(TWIN_IDS) do
    RegisterCreatureEvent(id, 1, OnCombat)
    RegisterCreatureEvent(id, 2, OnLeaveCombat)
    RegisterCreatureEvent(id, 4, OnDied)
end
