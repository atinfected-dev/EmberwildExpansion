local SET_ID = 3012
local BONUS_2P = 200024
local BONUS_4P = 200025

local function ApplyShamanHealSet(event, player)
    if player:GetClass() ~= 7 then return end
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

RegisterPlayerEvent(3, ApplyShamanHealSet)  -- OnLogin
RegisterPlayerEvent(29, ApplyShamanHealSet) -- OnEquip
RegisterPlayerEvent(30, ApplyShamanHealSet) -- OnUnequip
