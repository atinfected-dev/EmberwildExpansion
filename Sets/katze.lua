local SET_ID = 3016
local BONUS_2P = 200032
local BONUS_4P = 200033

local function ApplyFeralSet(event, player)
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

RegisterPlayerEvent(3, ApplyFeralSet)
RegisterPlayerEvent(29, ApplyFeralSet)
RegisterPlayerEvent(30, ApplyFeralSet)
