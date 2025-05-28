local SET_ID = 3004
local BONUS_2P = 200008
local BONUS_4P = 200009

local function ApplyPaladinDPSBonuses(event, player)
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

RegisterPlayerEvent(3, ApplyPaladinDPSBonuses)
RegisterPlayerEvent(29, ApplyPaladinDPSBonuses)
RegisterPlayerEvent(30, ApplyPaladinDPSBonuses)
