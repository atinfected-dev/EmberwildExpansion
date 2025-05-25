local NPC_ID = 99010

local questChain = {90400, 90401, 90402, 90403, 90404}

local function OnGossipHello(event, player, creature)
    for _, questId in ipairs(questChain) do
        if player:GetQuestStatus(questId) == 1 then -- Incomplete
            player:GossipMenuAddItem(0, "Continue quest: "..GetQuestName(questId), 0, questId)
        elseif player:GetQuestStatus(questId) == 0 and player:HasCompletedQuest(questId - 1) then
            player:GossipMenuAddItem(0, "Begin: "..GetQuestName(questId), 0, questId)
        end
    end
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid)
    player:GossipComplete()
    player:AddQuest(intid)
    player:SendBroadcastMessage("Quest Accepted: "..GetQuestName(intid))
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
