local NPC_ID = 99001

local function OnGossipHello(event, player, creature)
    player:GossipMenuAddItem(0, "Take me to Zandor'al.", 0, 1)
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid, code)
    if intid == 1 then
        player:Teleport(1, 1000.0, 1000.0, 100.0) -- Replace with real coords
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
