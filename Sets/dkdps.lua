local SET_ID = 3011
local BONUS_2P = 200022
local BONUS_4P = 200023

local function ApplyDKDPSBonuses(event, player)
    if player:GetClass() ~= 6 then return end
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

RegisterPlayerEvent(3, ApplyDKDPSBonuses)
RegisterPlayerEvent(29, ApplyDKDPSBonuses)
RegisterPlayerEvent(30, ApplyDKDPSBonuses)
