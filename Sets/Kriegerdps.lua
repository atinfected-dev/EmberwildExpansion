local SET_ID = 3002
local BONUS_2P = 200004
local BONUS_4P = 200005

local function ApplyDpsSetBonuses(event, player)
    local count = player:GetEquippedItemSetCount(SET_ID)
    if count >= 2 then
        if not player:HasAura(BONUS_2P) then
            player:AddAura(BONUS_2P, player)
        end
    else
        player:RemoveAura(BONUS_2P)
    end

    if count >= 4 then
        if not player:HasAura(BONUS_4P) then
            player:AddAura(BONUS_4P, player)
        end
    else
        player:RemoveAura(BONUS_4P)
    end
end

RegisterPlayerEvent(3, ApplyDpsSetBonuses)
RegisterPlayerEvent(29, ApplyDpsSetBonuses)
RegisterPlayerEvent(30, ApplyDpsSetBonuses)
