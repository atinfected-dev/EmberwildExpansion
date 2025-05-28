local SET_ID = 3008
local BONUS_2P = 200016
local BONUS_4P = 200017

local function ApplyShadowPriestBonuses(event, player)
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

RegisterPlayerEvent(3, ApplyShadowPriestBonuses)  -- On login
RegisterPlayerEvent(29, ApplyShadowPriestBonuses) -- On equip
RegisterPlayerEvent(30, ApplyShadowPriestBonuses) -- On unequip
