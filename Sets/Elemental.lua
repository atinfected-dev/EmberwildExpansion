local SET_ID = 3013
local BONUS_2P = 200026
local BONUS_4P = 200027

local function ApplyShamanEleSet(event, player)
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

RegisterPlayerEvent(3, ApplyShamanEleSet)  -- OnLogin
RegisterPlayerEvent(29, ApplyShamanEleSet) -- OnEquip
RegisterPlayerEvent(30, ApplyShamanEleSet) -- OnUnequip
