local MAGE_SET_ID = 3005
local BONUS_2PIECE_SPELL = 200000  -- Beispiel: Tempobuff
local BONUS_4PIECE_SPELL = 200001 -- Beispiel: längere Arcane Power (Dummyspell/Aura)

local function CheckMageSetBonuses(event, player)
    if player:GetClass() ~= CLASS_MAGE then
        return
    end

    local piecesEquipped = player:GetEquippedItemSet(MAGE_SET_ID)
    
    -- Remove existing buffs if no longer qualifying
    if piecesEquipped < 2 then
        player:RemoveAura(BONUS_2PIECE_SPELL)
    end
    if piecesEquipped < 4 then
        player:RemoveAura(BONUS_4PIECE_SPELL)
    end

    -- Apply buffs
    if piecesEquipped >= 2 and not player:HasAura(BONUS_2PIECE_SPELL) then
        player:AddAura(BONUS_2PIECE_SPELL, player)
    end

    if piecesEquipped >= 4 and not player:HasAura(BONUS_4PIECE_SPELL) then
        player:AddAura(BONUS_4PIECE_SPELL, player)
    end
end

-- Hook on login, talent respec, and equipment change
RegisterPlayerEvent(3, CheckMageSetBonuses)   -- On login
RegisterPlayerEvent(29, CheckMageSetBonuses)  -- On respec
RegisterPlayerEvent(36, CheckMageSetBonuses)  -- On equip change
