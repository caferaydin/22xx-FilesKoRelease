local Ret = 0;
local NPC = 24425;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4578, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4579, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 246;

if (EVENT == 530) then -- 56 Level Ardream Kill 10
	SaveEvent(UID, 4306);
	SelectMsg(UID, 2, savenum, 4580, NPC, 4080, 193);
end

if (EVENT == 532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 4582, NPC, 4228, 535, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 4583, NPC, 10, 193);
	end
end

if (EVENT == 535) then
	SelectMsg(UID, 4, savenum, 4646, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	SaveEvent(UID, 4307);
end

if (EVENT == 534) then
	SaveEvent(UID, 4310);
end

if (EVENT == 180) then
	SaveEvent(UID, 4309);
	SelectMsg(UID, 2, savenum, 4585, NPC, 14, 193);
end

if (EVENT == 536) then
	MonsterCount = QuestMonsterCount(UID, 246, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 4587, NPC, 18, 538);
	else
		SelectMsg(UID, 4, savenum, 4588, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 489);
end

if (EVENT == 537) then
	RunExchange(UID,490)
	SaveEvent(UID, 4308);   
end

local savenum = 271;

if (EVENT == 9360) then -- 59 Level Ardream Kill 10
	SaveEvent(UID, 9387);
	SelectMsg(UID, 2, savenum, 4580, NPC, 4080, 193);
end

if (EVENT == 9362) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 8684, NPC, 4228, 9363, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 8684, NPC, 10, 193);
	end
end

if (EVENT == 9363) then
	SelectMsg(UID, 4, savenum, 8684, NPC, 22, 9364, 23, 9368);
end

if (EVENT == 9364) then
	SaveEvent(UID, 9388);
end

if (EVENT == 9368) then
	SaveEvent(UID, 9391);
end

if (EVENT == 9365) then
	SaveEvent(UID, 9390);
	SelectMsg(UID, 2, savenum, 8684, NPC, 14, 193);
end

if (EVENT == 9367) then
	MonsterCount1 = QuestMonsterCount(UID, 271, 1);
	MonsterCount2 = QuestMonsterCount(UID, 271, 2);
	if (MonsterCount1 < 1 and MonsterCount2 < 1) then
		SelectMsg(UID, 2, savenum, 8684, NPC, 18, 9370);
	else
		SelectMsg(UID, 4, savenum, 8684, NPC, 4172, 9369, 4173, 193);
	end
end

if (EVENT == 9370) then
	ShowMap(UID, 489);
end

if (EVENT == 9369) then
	RunExchange(UID,1094)
	SaveEvent(UID, 9389);   
end

if (EVENT == 400) then
	SelectMsg(UID, 4, 440, 6109, NPC, 10, 401, 4005, -1);
end

if (EVENT == 401) then
    SelectMsg(UID, 15, -1, -1, NPC);
	SaveEvent(UID, 7123);
    RunExchange(UID,55)
end

if (EVENT == 100) then
	SelectMsg(UID, 4, 189, 8878, NPC, 10, 101, 4005, -1);
end