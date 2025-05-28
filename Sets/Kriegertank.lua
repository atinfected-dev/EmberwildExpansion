--[[ 
  Warrior Tank Set Bonus Script (Eluna)
  Set Name: Plate of Unbreakable Resolve
  Items: 500030-500034
  Spells: 200002 (2er), 200003 (4er)
]]--

local SET_ITEM_IDS = {
    500030, -- Chest
    500031, -- Helm
    500032, -- Legs
    500033, -- Gloves
    500034  -- Shoulders
}

local BONUS_2PC_SPELL = 200002
local BONUS_4PC_SPELL = 200003
local CLASS_WARRIOR = 1

local function GetEquippedSetCount(player)
    local count = 0
    for _, itemId in ipairs(SET_ITEM_IDS) do
        for slot = 0, 18 do
            local item = player:GetEquippedItemBySlot(slot)
            if item and item:GetEntry() == itemId then
                count = count + 1
                break
            end
        end
    end
    return count
end

local function ApplySetBonus(event, player)
    if player:GetClass() ~= CLASS_WARRIOR then return end

    local count = GetEquippedSetCount(player)

    -- Remove both spells first
    player:RemoveAura(BONUS_2PC_SPELL)
    player:RemoveAura(BONUS_4PC_SPELL)

    if count >= 4 then
        player:AddAura(BONUS_4PC_SPELL, player)
    elseif count >= 2 then
        player:AddAura(BONUS_2PC_SPELL, player)
    end
end

-- Register events to re-check on login/equip
RegisterPlayerEvent(3, ApplySetBonus)  -- OnLogin
RegisterPlayerEvent(29, ApplySetBonus) -- OnEquip
RegisterPlayerEvent(30, ApplySetBonus) -- OnUnequip
