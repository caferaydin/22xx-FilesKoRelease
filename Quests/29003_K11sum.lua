local NPC = 29003;

if (EVENT == 100)then
	QuestStatusCheck = GetQuestStatus(UID, 709)	 
	ITEM = HowmuchItem(UID, 900230000)
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
	QuestStatusCheck = GetQuestStatus(UID, 709)	 
	ITEM = HowmuchItem(UID, 900230000)
		if(QuestStatusCheck == 1 and ITEM > 0) then
	ZONE = GetZoneID(UID);
		if(ZONE == 1) then
			SpawnEventSystem(UID,9086,0,1,442,0,1046);
			ShowEffect(UID, 300391)
			RobItem(UID, 900230000, 1);
		elseif(ZONE == 5) then
			SpawnEventSystem(UID,9086,0,5,442,0,1046);
			ShowEffect(UID, 300391)
			RobItem(UID, 900230000, 1);
		elseif(ZONE == 6) then
			SpawnEventSystem(UID,9086,0,6,442,0,1046);
			ShowEffect(UID, 300391)
			RobItem(UID, 900230000, 1);
		else
			SelectMsg(UID, 2, -1, 22279, NPC,10,-1);
		end
	end
end