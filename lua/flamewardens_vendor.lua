local NPC_ID = 99020

local function OnGossipHello(event, player, creature)
    player:GossipMenuAddItem(0, "Show me your wares.", 0, 1)
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid)
    if intid == 1 then
        player:SendListInventory(creature)
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
