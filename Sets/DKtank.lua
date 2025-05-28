local SET_ID = 3010
local BONUS_2P = 200020
local BONUS_4P = 200021

local function ApplyDKTankBonuses(event, player)
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

RegisterPlayerEvent(3, ApplyDKTankBonuses)
RegisterPlayerEvent(29, ApplyDKTankBonuses)
RegisterPlayerEvent(30, ApplyDKTankBonuses)
