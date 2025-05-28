local SET_ID = 3017
local BONUS_2P = 200034
local BONUS_4P = 200035

local function ApplyRestorationSet(event, player)
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

RegisterPlayerEvent(3, ApplyRestorationSet)
RegisterPlayerEvent(29, ApplyRestorationSet)
RegisterPlayerEvent(30, ApplyRestorationSet)
