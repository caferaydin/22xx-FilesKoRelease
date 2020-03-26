local Ret = 0;
local NPC = 24439;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 973, NPC, 10, 168);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 973, NPC);
	else
		EVENT = QuestNum
	end
end   

if (EVENT == 102) then
	Ret = 1;
end

local savenum = 274;

if (EVENT == 111) then -- Paramun
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 120, NPC, 22, 112, 23, 113);
	else
		SelectMsg(UID, 2, savenum, 120, NPC, 10, 102);
	end
end

if (EVENT == 112) then
	SaveEvent(UID, 19);
end

if (EVENT == 113) then
	SaveEvent(UID, 25);
end

if (EVENT == 115) then
	SaveEvent(UID, 24);
end

if (EVENT == 116) then
	MonsterCount = QuestMonsterCount(UID, 274, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 120, NPC, 21, 117);
	else
		SelectMsg(UID, 4, savenum, 120, NPC, 41, 118, 23, 117);
	end
end

if (EVENT == 117) then
	ShowMap(UID, 78);
end

if (EVENT == 118) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, 3)
		SaveEvent(UID, 23);
	else
		RunExchange(UID, 3)
		SaveEvent(UID, 23);
	end
end

local savenum = 275;

if (EVENT == 120) then -- Brahman
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 142, NPC, 22, 121, 23, 122);
	else
		SelectMsg(UID, 2, savenum, 142, NPC, 10, 102);
	end
end

if (EVENT == 121) then
	SaveEvent(UID, 33);
end

if (EVENT == 122) then
	SaveEvent(UID, 36);
end

if (EVENT == 124) then
	SaveEvent(UID, 35);
end

if (EVENT == 125) then
	MonsterCount = QuestMonsterCount(UID, 275, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 126);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 127, 23, 126);
	end
end

if (EVENT == 126) then
	ShowMap(UID, 607);
end

if (EVENT == 127) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, 4)
		SaveEvent(UID, 34);
	else
		RunExchange(UID, 4)
		SaveEvent(UID, 34);
	end
end

local savenum = 276;

if (EVENT == 130) then -- Troll Shaman
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 152, NPC, 22, 131, 23, 132);
	else
		SelectMsg(UID, 2, savenum, 152, NPC, 10, 102);
	end
end

if (EVENT == 131) then
	SaveEvent(UID, 43);
end

if (EVENT == 132) then
	SaveEvent(UID, 70);
end

if (EVENT == 134) then
	SaveEvent(UID, 69);
end

if (EVENT == 135) then
	MonsterCount = QuestMonsterCount(UID, 276, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 152, NPC, 21, 136);
	else
		SelectMsg(UID, 4, savenum, 152, NPC, 41, 137, 23, 136);
	end
end

if (EVENT == 136) then
	ShowMap(UID, 84);
end

if (EVENT == 137) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, 9)
		SaveEvent(UID, 44);
	else
		RunExchange(UID, 9)
		SaveEvent(UID, 44);
	end
end

local savenum = 277;

if (EVENT == 140) then -- Apostle of Piercing Cold
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 171, NPC, 22, 141, 23, 142);
	else
		SelectMsg(UID, 2, savenum, 171, NPC, 10, 102);
	end
end

if (EVENT == 141) then
	SaveEvent(UID, 84);
end

if (EVENT == 142) then
	SaveEvent(UID, 87);
end

if (EVENT == 144) then
	SaveEvent(UID, 86);
end

if (EVENT == 145) then
	MonsterCount = QuestMonsterCount(UID, 277, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 171, NPC, 21, 146);
	else
		SelectMsg(UID, 4, savenum, 171, NPC, 41, 147, 23, 146);
	end
end

if (EVENT == 146) then
	ShowMap(UID, 616);
end

if (EVENT == 147) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, 10)
		SaveEvent(UID, 85);
	else
		RunExchange(UID, 10)
		SaveEvent(UID, 85);
	end
end

local savenum = 985;

if (EVENT == 150) then -- Apostle of Flame
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 194, NPC, 22, 151, 23, 152);
	else
		SelectMsg(UID, 2, savenum, 194, NPC, 10, 102);
	end
end

if (EVENT == 151) then
	SaveEvent(UID, 108);
end

if (EVENT == 152) then
	SaveEvent(UID, 111);
end

if (EVENT == 154) then
	SaveEvent(UID, 110);
end

if (EVENT == 155) then
	MonsterCount = QuestMonsterCount(UID, 985, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 156);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 157, 23, 156);
	end
end

if (EVENT == 156) then
	ShowMap(UID, 618);
end

if (EVENT == 157) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 109);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 109);
	end
end

local savenum = 1015;

if (EVENT == 170) then -- Troll Berserker
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 971, NPC, 22, 171, 23, 172);
	else
		SelectMsg(UID, 2, savenum, 971, NPC, 10, 102);
	end
end

if (EVENT == 171) then
	SaveEvent(UID, 707);
end

if (EVENT == 172) then
	SaveEvent(UID, 710);
end

if (EVENT == 174) then
	SaveEvent(UID, 709);
end

if (EVENT == 175) then
	MonsterCount = QuestMonsterCount(UID, 1015, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 176);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 177, 23, 176);
	end
end

if (EVENT == 176) then
	ShowMap(UID, 130);
end

if (EVENT == 177) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 708);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 708);
	end
end

local savenum = 278;

if (EVENT == 160) then -- Troll Warrior
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 964, NPC, 22, 161, 23, 162);
	else
		SelectMsg(UID, 2, savenum, 964, NPC, 10, 102);
	end
end

if (EVENT == 161) then
	SaveEvent(UID, 9992);
end

if (EVENT == 162) then
	SaveEvent(UID, 7758);
end

if (EVENT == 164) then
	SaveEvent(UID, 7738);
end

if (EVENT == 165) then
	MonsterCount = QuestMonsterCount(UID, 278, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 964, NPC, 21, 166);
	else
		SelectMsg(UID, 4, savenum, 964, NPC, 41, 167, 23, 166);
	end
end

if (EVENT == 166) then
	ShowMap(UID, 128);
end

if (EVENT == 167) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, 109)
		SaveEvent(UID, 7737);
	else
		RunExchange(UID, 109)
		SaveEvent(UID, 7737);
	end
end

if (EVENT == 1102) then
	SelectMsg(UID, 4, 523, 20015, NPC, 22, 1103, 27, -1);
end

if (EVENT == 1103) then
	SaveEvent(UID, 11116);
end

if (EVENT == 1104) then
		SelectMsg(UID, 4, 523, 20177, NPC, 22, 1105, 27, -1);
		SaveEvent(UID, 11118);
end

if (EVENT == 1105) then
	SaveEvent(UID, 11117);
	SaveEvent(UID, 11128);
end

if (EVENT == 1202) then
	SelectMsg(UID, 4, 524, 20017, NPC, 22, 1203, 27, -1);
end

if (EVENT == 1203) then
	SaveEvent(UID, 11128);
end

if (EVENT == 1206) then
	SaveEvent(UID, 11130);
end

if (EVENT == 1205) then
	MonsterCount = QuestMonsterCount(UID, 524, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 524, 20017, NPC, 18, 1208);
	else
		SelectMsg(UID, 5, 524, 20017, NPC, 41, 1207,41, 1207,41, 1207,41, 1207,41, 1207,23, -1);
	end
end

if (EVENT == 1208) then
	ShowMap(UID, 1181);
end

if (EVENT == 1207)then
SLOTKONTROL = CheckGiveSlot(UID, 5)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3011)
	SaveEvent(UID, 11129);
		SaveEvent(UID, 11140);
end
end

if (EVENT == 1302) then
	SelectMsg(UID, 4, 529, 20027, NPC, 22, 1303, 27, -1);
end

if (EVENT == 1303) then
	SaveEvent(UID, 11188);
end

if (EVENT == 1308) then
	SaveEvent(UID, 11190);
end

if (EVENT == 1305) then
	ITEM_COUNT = HowmuchItem(UID, 910215000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 529, 20027, NPC, 18,-1);
	else
		SelectMsg(UID, 5, 529, 20027, NPC, 22, 1307,27, -1); 
	end
end

if (EVENT == 1307)then
RunExchange(UID,3016)
	SaveEvent(UID,11189)
	SaveEvent(UID,11200)
end

if (EVENT == 1402) then
	SelectMsg(UID, 4, 530, 20029, NPC, 22, 1403, 27, -1);
end

if (EVENT == 1403) then
	SaveEvent(UID, 11200);
end

if (EVENT == 1408) then
	SaveEvent(UID, 11202);
end

if (EVENT == 1405) then
	ITEM_COUNT = HowmuchItem(UID, 508105000);   
	if (ITEM_COUNT < 5) then
		SelectMsg(UID, 2, 530, 20029, NPC, 18,1406);
	else
		SelectMsg(UID, 4, 530, 20029, NPC, 22, 1407,27, -1); 
	end
end

if (EVENT == 1406) then
	ShowMap(UID, 1177);
end

if (EVENT == 1407)then
SelectMsg(UID, 2, 530, 20241, NPC, 10,-1);
RunExchange(UID,3017)
	SaveEvent(UID,11201);
	SaveEvent(UID,11218);
end

if (EVENT == 1502) then
	SelectMsg(UID, 4, 533, 20032, NPC, 22, 1503, 27, -1);
end

if (EVENT == 1503) then
	SaveEvent(UID, 11236);
end

if (EVENT == 1508) then
	SaveEvent(UID, 11238);
end

if (EVENT == 1505) then
	ITEM_COUNT = HowmuchItem(UID, 910216000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 533, 20032, NPC, 18,-1);
	else
		SelectMsg(UID, 4, 533, 20032, NPC, 22, 1507,27, -1); 
	end
end

if (EVENT == 1507)then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3020)
	SaveEvent(UID,11237);
	SaveEvent(UID,11248);
end
end

if (EVENT == 1602) then
	SelectMsg(UID, 4, 534, 20037, NPC, 22, 1603, 27, -1);
end

if (EVENT == 1603) then
	SaveEvent(UID, 11248);
end

if (EVENT == 1606) then
	SaveEvent(UID, 11250);
end

if (EVENT == 1605) then
	MonsterCount = QuestMonsterCount(UID, 534, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 534, 20037, NPC, 18, 1607);
	else
		SelectMsg(UID, 5, 534, 20037, NPC, 41, 1608,41, 1608,41, 1608,41, 1608,41, 1608,41, 1608,23, -1);
	end
end

if (EVENT == 1608)then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3021)
SaveEvent(UID, 11249);
SaveEvent(UID, 11260);
end
end