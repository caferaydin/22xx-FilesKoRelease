local Ret = 0;
local NPC = 24427;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		SelectMsg(UID, 2, -1, 8060, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then 
		NpcMsg(UID, 8060, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 401;

if (EVENT == 1002) then -- 35 Level Shadow Seeker Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8141, NPC, 22, 1003, 23, 193);
	else
		SelectMsg(UID, 2, savenum, 796, NPC, 27, 193);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2002);
end

if (EVENT == 1010) then
	SaveEvent(UID, 2004);
end

if (EVENT == 1006) then
	MonsterCount = QuestMonsterCount(UID, 401, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 8369, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 8145, NPC, 22, 1008, 23, 193);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 95);
end

if (EVENT == 1008) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1189)
		SaveEvent(UID, 2003);
	else
		RunExchange(UID,1189)
		SaveEvent(UID, 2003);
	end
end

local savenum1 = 125;

if (EVENT == 8702) then -- 35 Level Shadow Seeker
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum1, 8141, NPC, 22, 8703, 23, 193);
	else
		SelectMsg(UID, 2, savenum1, 796, NPC, 27, 193);
	end
end

if (EVENT == 8703) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8398);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8403);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8408);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8413);
	end
end

if (EVENT == 8710) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8400);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8405);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8410);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8415);
	end
end

if (EVENT == 8706) then
	MonsterCount = QuestMonsterCount(UID, 125, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum1, 8369, NPC, 18, 8707);
	else
		SelectMsg(UID, 5, savenum1, 8145, NPC, 22, 8708, 22, 8708,22, 8708,22, 8708);
	end
end

if (EVENT == 8707) then
	ShowMap(UID, 95);
end

if (EVENT == 8708) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then 
RunExchange(UID,888)
		SaveEvent(UID, 8399);
	elseif (Class == 2 or Class == 7 or Class == 8) then
RunExchange(UID,889)
		SaveEvent(UID, 8404);
	elseif (Class == 3 or Class == 9 or Class == 10) then
RunExchange(UID,890)
		SaveEvent(UID, 8409);
	elseif (Class == 4 or Class == 11 or Class == 12) then
RunExchange(UID,891)
		SaveEvent(UID, 8414);
	end
end
end

local savenum2 = 405;

if (EVENT == 1102) then -- 37 Level Saber Tooth Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum2, 8365, NPC, 22, 1103, 23, 193);
	else
		SelectMsg(UID, 2, savenum2, 8366, NPC, 27, 193);
	end
end

if (EVENT == 1103) then
	SaveEvent(UID, 2026);
end

if (EVENT == 1110) then
	SaveEvent(UID, 2028);
end

if (EVENT == 1106) then
	MonsterCount = QuestMonsterCount(UID, 405, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum2, 8144, NPC, 18, 1107);
	else
		SelectMsg(UID, 4, savenum2, 8145, NPC, 22, 1108, 23, 193);
	end
end

if (EVENT == 1107) then
	ShowMap(UID, 99);
end

if (EVENT == 1108) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1191)
		SaveEvent(UID, 2027);
	else
		RunExchange(UID,1191)
		SaveEvent(UID, 2027);
	end
end

local savenum3 = 131;

if (EVENT == 8302) then -- 37 Level Saber Tooth
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum3, 8365, NPC, 22, 8303, 23, 193);
	else
		SelectMsg(UID, 2, savenum3, 796, NPC, 27, 193);
	end
end

if (EVENT == 8303) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8512);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8517);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8522);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8527);
	end
end

if (EVENT == 8310) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8514);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8519);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8524);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8529);
	end
end

if (EVENT == 8306) then
	MonsterCount = QuestMonsterCount(UID, 131, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum3, 8144, NPC, 18, 8307);
	else
		SelectMsg(UID, 4, savenum3, 8145, NPC, 22, 8308, 23, 193);
	end
end

if (EVENT == 8307) then
	ShowMap(UID, 99);
end

if (EVENT == 8308) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
RunExchange(UID,1013)
		SaveEvent(UID, 8513);
	elseif (Class == 2 or Class == 7 or Class == 8) then
RunExchange(UID,1014)
		SaveEvent(UID, 8518);
	elseif (Class == 3 or Class == 9 or Class == 10) then
RunExchange(UID,1015)
		SaveEvent(UID, 8523);
	elseif (Class == 4 or Class == 11 or Class == 12) then
RunExchange(UID,1016)
		SaveEvent(UID, 8528);
	end
end
end

local savenum4 = 407;

if (EVENT == 1302) then -- 38 Level Skeleton Warrior Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum4, 8076, NPC, 22, 1303, 23, 193);
	else
		SelectMsg(UID, 2, savenum4, 8366, NPC, 27, 193);
	end
end

if (EVENT == 1303) then
	SaveEvent(UID, 2038);
end

if (EVENT == 1310) then
	SaveEvent(UID, 2040);
end

if (EVENT == 1306) then
	MonsterCount = QuestMonsterCount(UID, 407, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum4, 8144, NPC, 18, 1307);
	else
		SelectMsg(UID, 4, savenum4, 8145, NPC, 22, 1308, 23, 9000);
	end
end

if (EVENT == 1307) then
	ShowMap(UID, 101);
end

if (EVENT == 1308) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1192)
		SaveEvent(UID, 2039);
	else
		RunExchange(UID,1192)
		SaveEvent(UID, 2039);
	end
end

local savenum5 = 134;

if (EVENT == 8202) then -- 38 Level Skeleton Warrior
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum5, 8076, NPC, 22, 8203, 23, 193);
	else
		SelectMsg(UID, 2, savenum5, 8366, NPC, 27, 193);
	end
end

if (EVENT == 8203) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8554);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8559);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8564);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8569);
	end
end

if (EVENT == 8210) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8556);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8561);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8566);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8571);
	end
end

if (EVENT == 8206) then
	MonsterCount = QuestMonsterCount(UID, 134, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum5, 8144, NPC, 18, 8207);
	else
		SelectMsg(UID, 4, savenum5, 8145, NPC, 22, 8208, 23, 193);
	end
end

if (EVENT == 8207) then
	ShowMap(UID, 101); 
end

if (EVENT == 8208) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
RunExchange(UID,1021)
		SaveEvent(UID, 8555);
	elseif (Class == 2 or Class == 7 or Class == 8) then
RunExchange(UID,1022)
		SaveEvent(UID, 8560);
	elseif (Class == 3 or Class == 9 or Class == 10) then
RunExchange(UID,1023)
		SaveEvent(UID, 8565);
	elseif (Class == 4 or Class == 11 or Class == 12) then
RunExchange(UID,1024)
		SaveEvent(UID, 8570);
	end   
end
end

local savenum6 = 409;

if (EVENT == 1402) then -- 39 Level Skeleton Knight Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum6, 8353, NPC, 22, 1403, 23, 193);
	else
		SelectMsg(UID, 2, savenum6, 8356, NPC, 27, 193);
	end
end

if (EVENT == 1403) then
	SaveEvent(UID, 2050);
end

if (EVENT == 1410) then
	SaveEvent(UID, 2052);
end

if (EVENT == 1406) then
	MonsterCount = QuestMonsterCount(UID, 409, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum6, 8144, NPC, 18, 1407);
	else
		SelectMsg(UID, 4, savenum6, 8145, NPC, 22, 1408, 23, 193);
	end
end

if (EVENT == 1407) then
	ShowMap(UID, 103);
end

if (EVENT == 1408) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1193)
		SaveEvent(UID, 2051);
	else
		RunExchange(UID,1193)
		SaveEvent(UID, 2051);
	end
end

local savenum7 = 137;

if (EVENT == 8102) then -- 39 Level Skeleton Knight
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum7, 8353, NPC, 22, 8103, 23, 193);
	else
		SelectMsg(UID, 2, savenum7, 8356, NPC, 27, 193);
	end
end

if (EVENT == 8103) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8596);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8601);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8606);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8611);
	end
end

if (EVENT == 8110) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8598);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8603);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8608);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8613);
	end
end

if (EVENT == 8106) then
	MonsterCount = QuestMonsterCount(UID, 137, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum7, 8144, NPC, 18, 8107);
	else
		SelectMsg(UID, 4, savenum7, 8145, NPC, 22, 8108, 23, 193);
	end
end

if (EVENT == 8107) then
	ShowMap(UID, 103);
end

if (EVENT == 8108) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RunExchange(UID,1029)
		SaveEvent(UID, 8597);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RunExchange(UID,1030)
		SaveEvent(UID, 8602);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RunExchange(UID,1031)
		SaveEvent(UID, 8607);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RunExchange(UID,1032)
		SaveEvent(UID, 8612);
	end
end
end

local savenum8 = 411;

if (EVENT == 1502) then -- 40 Level Death Knight Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum8, 8360, NPC, 22, 1503, 23, 193);
	else
		SelectMsg(UID, 2, savenum8, 8356, NPC, 27, 193);
	end
end

if (EVENT == 1503) then
	SaveEvent(UID, 2062);
end

if (EVENT == 1510) then
	SaveEvent(UID, 2064);
end

if (EVENT == 1506) then
	MonsterCount = QuestMonsterCount(UID, 411, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum8, 8144, NPC, 18, 1507);
	else
		SelectMsg(UID, 4, savenum8, 8145, NPC, 22, 1508, 23, 193);
	end
end

if (EVENT == 1507) then
	ShowMap(UID, 105);
end

if (EVENT == 1508) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1194)
		SaveEvent(UID, 2063);
	else
		RunExchange(UID,1194)
		SaveEvent(UID, 2063);
	end
end

local savenum9 = 140;

if (EVENT == 8022) then -- 40 Level Death Knight
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum9, 8353, NPC, 22, 8023, 23, 193);
	else
		SelectMsg(UID, 2, savenum9, 8356, NPC, 27, 193);
	end
end

if (EVENT == 8023) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8638);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8643);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8648);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8653);
	end
end

if (EVENT == 8030) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8640);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8645);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8650);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8655);
	end
end

if (EVENT == 8026) then
	MonsterCount = QuestMonsterCount(UID, 140, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum9, 8144, NPC, 18, 8027);
	else
		SelectMsg(UID, 4, savenum9, 8145, NPC, 22, 8028, 23, 193);
	end
end

if (EVENT == 8027) then
	ShowMap(UID, 105);
end

if (EVENT == 8028) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
RunExchange(UID,1037)
		SaveEvent(UID, 8639);
	elseif (Class == 2 or Class == 7 or Class == 8) then
RunExchange(UID,1038)
		SaveEvent(UID, 8644);
	elseif (Class == 3 or Class == 9 or Class == 10) then
RunExchange(UID,1039)
		SaveEvent(UID, 8649);
	elseif (Class == 4 or Class == 11 or Class == 12) then
RunExchange(UID,1040)
		SaveEvent(UID, 8654);
	end
end
end

if (EVENT == 1602)then
	SelectMsg(UID, 4, 537, 20043, NPC, 22, 1603,23,-1);
end

if (EVENT == 1603)then
	SaveEvent(UID, 11284);
	SaveEvent(UID, 11286);
end

if (EVENT == 1605)then
	SelectMsg(UID, 2, 537, 20043, NPC, 10,-1);
	SaveEvent(UID, 11285);
	SaveEvent(UID, 11296);
end

if (EVENT == 1702)then
	SelectMsg(UID, 4, 538, 20045, NPC, 22, 1703,23,-1);
end

if (EVENT == 1703)then
SaveEvent(UID, 11296);
end

if (EVENT == 1706)then
SaveEvent(UID, 11298);
end

if (EVENT == 1705) then
		SelectMsg(UID, 4, 538, 20045, NPC, 22, 1707, 27, -1); 
end

if (EVENT == 1707)then
RunExchange(UID,3025)
	SaveEvent(UID,11297)
	SaveEvent(UID,11308)
end

if (EVENT == 1802)then
	SelectMsg(UID, 4, 541, 20051, NPC, 22, 1803,23,-1);
end

if (EVENT == 1803)then
SaveEvent(UID, 11332);
end

if (EVENT == 1808)then
SaveEvent(UID, 11334);
end


if (EVENT == 1805) then
	ITEM1_COUNT = HowmuchItem(UID, 910227000);   
	if (ITEM1_COUNT < 1) then
		SelectMsg(UID, 2, 541, 20051, NPC, 18,-1);
	else
		SelectMsg(UID, 4, 541, 20051, NPC, 22, 1806, 27, -1);
end
end		
	
	
if (EVENT == 1806)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3028)
	SaveEvent(UID,11333)
	SaveEvent(UID,11344)
	SelectMsg(UID, 2, 541, 20343, NPC, 10,-1);
end
end