local SET_ID = 3009
local BONUS_2P = 200018
local BONUS_4P = 200019

local function ApplyHolyPriestBonuses(event, player)
    if player:GetClass() ~= 5 then return end
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

RegisterPlayerEvent(3, ApplyHolyPriestBonuses)
RegisterPlayerEvent(29, ApplyHolyPriestBonuses)
RegisterPlayerEvent(30, ApplyHolyPriestBonuses)
