local SET_ID = 3007
local BONUS_2P = 200014
local BONUS_4P = 200015

local function ApplyHunterSetBonuses(event, player)
    if player:GetClass() ~= 3 then return end
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

RegisterPlayerEvent(3, ApplyHunterSetBonuses)
RegisterPlayerEvent(29, ApplyHunterSetBonuses)
RegisterPlayerEvent(30, ApplyHunterSetBonuses)
