local SET_ID = 3015
local BONUS_2P = 200030
local BONUS_4P = 200031

local function ApplyBearSet(event, player)
    if player:GetClass() ~= 11 then return end
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

RegisterPlayerEvent(3, ApplyBearSet)
RegisterPlayerEvent(29, ApplyBearSet)
RegisterPlayerEvent(30, ApplyBearSet)
