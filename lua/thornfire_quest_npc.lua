local NPC_ID = 99002
local QUEST_ID = 90300

local function OnGossipHello(event, player, creature)
    if player:GetQuestStatus(QUEST_ID) == 0 then
        player:GossipMenuAddItem(0, "I will cleanse Thornfire Hold.", 0, 1)
    end
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid)
    if intid == 1 then
        player:GossipComplete()
        creature:AddQuest(QUEST_ID)
        player:SendBroadcastMessage("Quest Accepted: Purge the Thornfire Hold")
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
