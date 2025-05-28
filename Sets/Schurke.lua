local SET_ID = 3006
local BONUS_2P = 200012
local BONUS_4P = 200013

local function ApplyRogueSetBonuses(event, player)
    if player:GetClass() ~= 8 then return end
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

RegisterPlayerEvent(3, ApplyRogueSetBonuses)
RegisterPlayerEvent(29, ApplyRogueSetBonuses)
RegisterPlayerEvent(30, ApplyRogueSetBonuses)
