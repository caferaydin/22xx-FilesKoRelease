local Ret = 0;
local NPC = 11510;
----------------------------------
if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 664, NPC, 10, 193);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 664, NPC)
	else
		EVENT = QuestNum
	end
end
----------------------------------
if (EVENT == 193) then
	Ret = 1;
end
----------------------------------
if (EVENT == 195) then
	SaveEvent(UID, 439);
end
----------------------------------
if (EVENT == 200) then
	SelectMsg(UID, 2, 177, 667, NPC, 10, 201);
end
----------------------------------
if (EVENT == 201) then
	SelectMsg(UID, 4, 177, 668, NPC, 22, 202, 23, 193);
end
----------------------------------
if (EVENT == 202) then
	Check = isRoomForItem(UID, 910044000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		GiveItem(UID, 910044000, 1)
		SaveEvent(UID, 440);
	end
end
----------------------------------
if (EVENT == 205) then
	SelectMsg(UID, 2, 177, 669, NPC, 10, 193);
	SaveEvent(UID, 442);
end
----------------------------------
if (EVENT == 210) then
	ITEMA = HowmuchItem(UID, 910040000);
	ITEMB = HowmuchItem(UID, 910041000);
	if (ITEMA < 3) then 
		SelectMsg(UID, 2, 177, 671, NPC, 18, 213);
	elseif (ITEMB < 1) then
		SelectMsg(UID, 2, 177, 672, NPC, 18, 213);
	elseif (ITEMA > 2 and ITEMB > 0) then
		SelectMsg(UID, 4, 177, 673, NPC, 41, 214, 27, 193);
	end
end
----------------------------------
if (EVENT == 213) then
	ShowMap(UID, 40);
end
----------------------------------
if (EVENT == 214) then
RunExchange(UID,88,2)
	SaveEvent(UID, 441);
end
----------------------------------
local savenum = 199;

if (EVENT == 6092) then -- 46 Level Quest Area
	SelectMsg(UID, 2, savenum, 6041, NPC, 6007, 6093, 4005, 193);
end

if (EVENT == 6093) then
	ITEM_COUNT = HowmuchItem(UID, 910135000);   
	ITEM_COUNT1 = HowmuchItem(UID, 910138000);
	if (ITEM_COUNT < 1 or ITEM_COUNT1 < 3) then
		SelectMsg(UID, 4, savenum, 6043, NPC, 4543, 6095, 4191, 193);
	elseif (ITEM_COUNT > 0 and ITEM_COUNT1 > 2) then
		SelectMsg(UID, 5, savenum, 6049, NPC, 4006, 7004,4006, 7004,4006, 7004, 4005, 193);
	end
end

if (EVENT == 6095) then
	PartyCheck = isInParty(UID);
	if (PartyCheck) then
		ZoneChangeParty(UID, 82, 202, 199);
		EVENT = 6096
	else
		SelectMsg(UID, 2, savenum, 6044, NPC, 10, 193);
	end
end

if (EVENT == 6096) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 6079);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 6085);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 6091);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 6097);
	end
end

if (EVENT == 6094) then
	ITEM_COUNT = HowmuchItem(UID, 910135000);   
	ITEM_COUNT1 = HowmuchItem(UID, 910138000);
	if (ITEM_COUNT < 1 or ITEM_COUNT1 < 3) then
		SelectMsg(UID, 4, savenum, 6043, NPC, 4543, 6095, 4191, 193);
	elseif (ITEM_COUNT > 0 and ITEM_COUNT1 > 2) then
		SelectMsg(UID, 5, savenum, 6043, NPC, 4006, 7004,4006, 7004,4006, 7004, 4005, 193);
	end
end

if (EVENT == 7000) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 6081);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 6087);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 6093);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 6099);
	end
end

if (EVENT == 7004) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		EVENT = 7005
	elseif (Class == 2 or Class == 7 or Class == 8) then
		EVENT = 7006
	elseif (Class == 3 or Class == 9 or Class == 10) then
		EVENT = 7007
	elseif (Class == 4 or Class == 11 or Class == 12) then
		EVENT = 7008
	end
end

if (EVENT == 7005) then
RunExchange(UID,94)
	SaveEvent(UID, 6080);
end 

if (EVENT == 7006) then
RunExchange(UID,95)
	SaveEvent(UID, 6086); 
end

if (EVENT == 7007) then
RunExchange(UID,96)
	SaveEvent(UID, 6092);
end

if (EVENT == 7008) then
RunExchange(UID,97)
	SaveEvent(UID, 6098); 
end

if (EVENT == 532) then -- 50 Level 7 Keys Quest
	SelectMsg(UID, 4, 220, 4296, NPC, 22, 533, 23, -1);
end

if (EVENT == 533) then
	Check = isRoomForItem(UID, 910050000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		GiveItem(UID, 910050000, 1)
		SaveEvent(UID, 4211);
	end
end

if (EVENT == 534) then
	SaveEvent(UID, 4214);
end

if (EVENT == 538) then
	SaveEvent(UID, 4213);
end

if (EVENT == 536) then
	ITEM7 = HowmuchItem(UID, 910057000);
	if (ITEM7 > 0) then
		SelectMsg(UID, 4, 220, 4297, NPC, 4172, 537, 4173, 193);
	else
		SelectMsg(UID, 2, 220, 4298, NPC, 18, 192);
	end
end 

if (EVENT == 192) then
	ShowMap(UID, 439);
end

if (EVENT == 537) then
RunExchange(UID,470,2)
	SaveEvent(UID, 4212);
end
--Cr
if (EVENT == 1000) then 
	SaveEvent(UID, 2458);
end

if (EVENT == 1001) then
	SelectMsg(UID, 4, 494, 9239, NPC, 22, 1002, 23, -1);
end
----------------------------------
if (EVENT == 1002) then
	SaveEvent(UID, 2459);
end   
----------------------------------
if (EVENT == 1003) then
	SaveEvent(UID, 2462);
end
----------------------------------
if (EVENT == 1006) then
	SaveEvent(UID, 2461);
end
----------------------------------
if (EVENT == 1007) then
	ITEMBDW = HowmuchItem(UID, 900143000);
	if (ITEMBDW < 1) then
		SelectMsg(UID, 2, 494, 9239, NPC, 18, 191);
	else
		SelectMsg(UID, 4, 494, 9239, NPC, 4006, 1008, 4005, 193);
	end
end
----------------------------------
if (EVENT == 191) then
	ShowMap(UID, 39);
end
----------------------------------
if (EVENT == 1008) then
	RunExchange(UID,222,2)
	SaveEvent(UID, 2460);
end

if (EVENT == 400) then
	SelectMsg(UID, 4, 438, 4997, NPC, 10, 401, 4005, -1);
end

if (EVENT == 401) then
    SelectMsg(UID, 15, -1, -1, NPC);
	SaveEvent(UID, 7112);
    RunExchange(UID,54,2,2)
end
----------------------------------
if (EVENT == 410) then
	SelectMsg(UID, 2, 439, 4985, NPC, 10, 411, 4005, -1);
end

if (EVENT == 411) then
	SaveEvent(UID, 7129);
end
----------------------------------
if (EVENT == 412) then
	SelectMsg(UID, 2, 443, 4985, NPC, 10, 413, 4005, -1);
end
----------------------------------
if (EVENT == 413) then
	SaveEvent(UID, 7151);
end

if (EVENT == 1102) then
	SelectMsg(UID, 4, 522, 20013, NPC, 22, 1103, 27, -1);
end

if (EVENT == 1103) then
	SaveEvent(UID, 11110);
end

if (EVENT == 1104) then
		SelectMsg(UID, 4, 522, 20013, NPC, 22, 1105, 27, -1);
		SaveEvent(UID, 11112);
end

if (EVENT == 1105) then
SelectMsg(UID, 2, 522, 20209, NPC, 10, -1);
	SaveEvent(UID, 11111);
	SaveEvent(UID, 11122);
end

if (EVENT == 1202) then
	SelectMsg(UID, 4, 525, 20019, NPC, 22, 1203, 27, -1);
end

if (EVENT == 1203) then
	SaveEvent(UID, 11146);
end

if (EVENT == 1208) then
	SaveEvent(UID, 11148);
end

if (EVENT == 1205) then
	ITEM_COUNT = HowmuchItem(UID, 910214000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 525, 20019, NPC, 18, -1);
	else
		SelectMsg(UID, 4, 525, 20019, NPC, 22, 1207, 27, -1); 
	end
end

if (EVENT == 1207)then
	RunExchange(UID,3012,2)
	SaveEvent(UID,11147)
	SaveEvent(UID,11158)
end

if (EVENT == 1302) then
	SelectMsg(UID, 4, 526, 20021, NPC, 22, 1303, 27, -1);
end

if (EVENT == 1303) then
	SaveEvent(UID, 11158);
end

if (EVENT == 1308) then
	SaveEvent(UID, 11160);
end

if (EVENT == 1305) then
	ITEM_COUNT = HowmuchItem(UID, 910195000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 526, 20021, NPC, 18,1306);
	else
		SelectMsg(UID, 4, 526, 20021, NPC, 22, 1307, 27, -1); 
	end
end

if (EVENT == 1306) then
	ShowMap(UID, 729);
end

if (EVENT == 1307)then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3013)
	SaveEvent(UID,11159)
end
end

if (EVENT == 1402) then
	SelectMsg(UID, 2, 527, 20212, NPC, 4161, 1403);
end

if (EVENT == 1403) then
	SelectMsg(UID, 2, 527, 20213, NPC, 4552, 1404);
end

if (EVENT == 1404) then
	SelectMsg(UID, 4, 527, 20213, NPC, 22,1405,27,-1);
	SaveEvent(UID,11170)
	SaveEvent(UID,11172)
end

if (EVENT == 1405) then
	SaveEvent(UID,11171)
	SaveEvent(UID,11182)
end

if (EVENT == 1502) then
	SelectMsg(UID, 2, 535, 20039, NPC, 4161, 1504);
end

if (EVENT == 1503) then
	SelectMsg(UID, 2, 535, 20269, NPC, 4552, 1504);
end

if (EVENT == 1504) then
	SelectMsg(UID, 4, 535, 20039, NPC, 22,1505,27,-1);
	SaveEvent(UID,11266)
	SaveEvent(UID,11268)
end

if (EVENT == 1505) then
	SaveEvent(UID,11267)
	SaveEvent(UID,11278)
end

if (EVENT == 1602) then
	SelectMsg(UID, 4, 536, 20041, NPC, 22, 1603, 27, -1);
end

if (EVENT == 1603) then
	SaveEvent(UID,11278)
end

if (EVENT == 1608) then
	SaveEvent(UID,11280)
end

if (EVENT == 1605) then
	ITEM_COUNT = HowmuchItem(UID, 910196000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 536, 20041, NPC, 18,1606);
	else
		SelectMsg(UID, 4, 536, 20041, NPC, 22, 1607,27, -1); 
	end
end

if (EVENT == 1606) then
	ShowMap(UID, 731);
end

if (EVENT == 1607) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3023)
SaveEvent(UID,11279)
end
end

if (EVENT == 1702) then
	SelectMsg(UID, 4, 542, 20053, NPC, 22, 1703, 27, -1);
end

if (EVENT == 1703) then
	SaveEvent(UID,11350)
end

if (EVENT == 1708) then
	SaveEvent(UID,11352)
end

if (EVENT == 1705) then
	ITEM1_COUNT = HowmuchItem(UID, 910227000);   
	if (ITEM1_COUNT < 1) then
		SelectMsg(UID, 2, 542, 20053, NPC, 18,-1);
	else
		SelectMsg(UID, 4, 542, 20053, NPC, 22, 1706, 27, -1);
end
end	

if (EVENT == 1706)then
RunExchange(UID,3029)
	SaveEvent(UID,11351)
	SaveEvent(UID,11362)
end

if (EVENT == 1802) then
	SelectMsg(UID, 4, 543, 20055, NPC, 22, 1803, 27, -1);
end

if (EVENT == 1803) then
	SaveEvent(UID,11362)
end

if (EVENT == 1808) then
	SaveEvent(UID,11364)
end

if (EVENT == 1805) then
	ITEM1_COUNT = HowmuchItem(UID, 508107000);   
	if (ITEM1_COUNT < 5) then
		SelectMsg(UID, 2, 543, 20055, NPC, 18,1804);
	else
		SelectMsg(UID, 5, 543, 20055, NPC, 22, 1806, 22, 1806,22, 1806,22, 1806,22, 1806,27, -1);
end
end	

if (EVENT == 1804 ) then
	ShowMap(UID, 509)
end

if (EVENT == 1806)then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3030)
	SaveEvent(UID,11363)
	SaveEvent(UID,11374)
end
end

if (EVENT == 1902) then
	SelectMsg(UID, 4, 544, 20057, NPC, 22, 1903, 27, -1);
end

if (EVENT == 1903) then
	SaveEvent(UID,11374)
end

if (EVENT == 1908) then
	SaveEvent(UID,11376)
end

if (EVENT == 1905) then
	MonsterCount = QuestMonsterCount(UID, 544, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 544, 20057, NPC, 18, 1904);
	else
		SelectMsg(UID, 4, 544, 20057, NPC, 22, 1907, 23, -1);
	end
end

if (EVENT == 1904 ) then
	ShowMap(UID, 374)
end

if (EVENT == 1907)then
RunExchange(UID,3031)
	SaveEvent(UID,11375)
	SaveEvent(UID,11386)
end

if (EVENT == 2002) then
	SelectMsg(UID, 4, 545, 20059, NPC, 22, 2003, 27, -1);
end

if (EVENT == 2003) then
	SaveEvent(UID,11386)
end

if (EVENT == 2008) then
	SaveEvent(UID,11388)
end

if (EVENT == 2005) then
	ITEM1_COUNT = HowmuchItem(UID, 910197000);   
	if (ITEM1_COUNT < 1) then
		SelectMsg(UID, 2, 545, 20059, NPC, 18,2004);
	else
		SelectMsg(UID, 4, 545, 20059, NPC, 22, 2006,27, -1);
end
end	

if (EVENT == 2004 ) then
	ShowMap(UID, 733)
end

if (EVENT == 2006)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3032)
	SaveEvent(UID,11387)
end
end