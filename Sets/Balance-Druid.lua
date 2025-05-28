local SET_ID = 3018
local BONUS_2P = 200036
local BONUS_4P = 200037

local function ApplyMoonkinSet(event, player)
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

RegisterPlayerEvent(3, ApplyMoonkinSet)   -- OnLogin
RegisterPlayerEvent(29, ApplyMoonkinSet)  -- OnEquip
RegisterPlayerEvent(30, ApplyMoonkinSet)  -- OnUnequip
