local SET_ID = 3005
local BONUS_2P = 200010
local BONUS_4P = 200011

local function ApplyPaladinHealSetBonuses(event, player)
    if player:GetClass() ~= 2 then return end
    local count = player:GetEquippedItemSetCount(SET_ID)

    player:RemoveAura(BONUS_2P)
    player:RemoveAura(BONUS_4P)

    if count >= 2 then
        player:AddAura(BONUS_2P, player)
    end
    if count >= 4 then
        player:AddAura(BONUS_4P, player)
    end
end

RegisterPlayerEvent(3, ApplyPaladinHealSetBonuses)
RegisterPlayerEvent(29, ApplyPaladinHealSetBonuses)
RegisterPlayerEvent(30, ApplyPaladinHealSetBonuses)
