local NPC = 29009;

if (EVENT == 100)then
	QuestStatusCheck = GetQuestStatus(UID, 745)	 
	ITEM = HowmuchItem(UID, 900266000)
		if(QuestStatusCheck == 1 and ITEM > 0) then
			EVENT = 101
		else
			SelectMsg(UID, 2, -1, 22279, NPC,10,-1);
	end
end

if (EVENT == 101)then
	SelectMsg(UID, 2, -1, 22279, NPC, 3000,102,3005,-1);
end

if(EVENT == 102) then
	QuestStatusCheck = GetQuestStatus(UID, 745)	 
	ITEM = HowmuchItem(UID, 900266000)
		if(QuestStatusCheck == 1 and ITEM > 0) then
	ZONE = GetZoneID(UID);
		if(ZONE == 11) then
			SpawnEventSystem(UID,9122,0,11,141,0,925);
			ShowEffect(UID, 300391);
			RobItem(UID, 900266000, 1);
		elseif(ZONE == 13) then
			SpawnEventSystem(UID,9122,0,13,141,0,925);
			ShowEffect(UID, 300391);
			RobItem(UID, 900266000, 1);
		elseif(ZONE == 14) then
			SpawnEventSystem(UID,9122,0,14,141,0,925);
			ShowEffect(UID, 300391);
			RobItem(UID, 900266000, 1);
		else
			SelectMsg(UID, 2, -1, 22279, NPC,10,-1);
		end
	end
end