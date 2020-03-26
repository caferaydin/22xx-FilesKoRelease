local Ret = 0;
local NPC = 29027;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 23029, NPC, 10, -1);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 23029, NPC)
	else
		EVENT = QuestNum
	end
	end
	
if (EVENT == 1001)then
SelectMsg(UID, 2, 696, 22293, NPC, 10,1002);
end

if (EVENT == 1002)then
SelectMsg(UID, 2, 696, 22299, NPC, 3000, 1003,3005,-1);
SaveEvent(UID, 13009);
end

if (EVENT == 1003)then
SelectMsg(UID, 4, 696, 22299, NPC, 3000, 1004,3005,-1);
SaveEvent(UID, 13011);
end

if (EVENT == 1004)then
SelectMsg(UID, 2, 696, 22301, NPC, 10, -1);
SaveEvent(UID, 13010);
SaveEvent(UID, 13021);
end

if (EVENT == 1101)then
	SelectMsg(UID, 4, 697, 22159, NPC, 3000,1102,4005,-1);
end

if (EVENT == 1102)then
	SaveEvent(UID, 13021);
end

if (EVENT == 1106)then
	SaveEvent(UID, 13023);
end

if (EVENT == 1105)then
	ITEM1_COUNT = HowmuchItem(UID, 900216000);  
    ITEM2_COUNT = HowmuchItem(UID, 900217000); 	
	if (ITEM1_COUNT < 1) then
	SelectMsg(UID, 2, 697, 22159, NPC, 18, 1108);
	elseif (ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 697, 22159, NPC, 18, 1109);
	else
	SelectMsg(UID, 4, 697, 22159, NPC, 22, 1107, 27, -1);
end
end

if (EVENT == 1108) then
	ShowMap(UID, 5);
end

if (EVENT == 1109) then
	ShowMap(UID, 674);
end

if (EVENT == 1107) then
    SaveEvent(UID, 13022);
	SaveEvent(UID, 13033);
    RunExchange(UID, 3170)
	SelectMsg(UID, 2, -1, 22313, NPC, 10, -1);
end

if (EVENT == 1201)then
	SelectMsg(UID, 4, 698, 22161, NPC, 3000,1202,4005,-1);
end

if (EVENT == 1202)then
	SaveEvent(UID, 13033);
end

if (EVENT == 1206)then
	SaveEvent(UID, 13035);
end

if (EVENT == 1205)then
	ITEM1_COUNT = HowmuchItem(UID, 900218000);  
	if (ITEM1_COUNT < 1) then
	SelectMsg(UID, 2, 698, 22161, NPC, 18, -1);
	else
	SelectMsg(UID, 4, 698, 22161, NPC, 22, 1207, 27, -1);
end
end

if (EVENT == 1208) then
	ShowMap(UID, 1343);
end

if (EVENT == 1207) then
    SaveEvent(UID, 13034);
	SaveEvent(UID, 13045);
    RunExchange(UID, 3171);
	SelectMsg(UID, 2, -1, 22334, NPC, 10, 1208);
end

if (EVENT == 1301)then
	SelectMsg(UID, 4, 700, 22163, NPC, 3000,1302,4005,-1);
end

if (EVENT == 1302)then
	SaveEvent(UID, 13045);
end

if (EVENT == 1306)then
	SaveEvent(UID, 13047);
end

if (EVENT == 1305) then
	MonsterCount01 = QuestMonsterCount(UID, 700, 1);
	MonsterCount02 = QuestMonsterCount(UID, 700, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 700, 22163, NPC,3000,1309,3005,1309,3005,1309,3005,1309,3005,1309,3005,1309,3005,1309);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 700, 22163, NPC, 18, 1307);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 700, 22163, NPC, 18, 1308);
		end
	end
end

if (EVENT == 1307) then
	ShowMap(UID, 930);
end

if (EVENT == 1308) then
	ShowMap(UID, 932);
end

if (EVENT == 1309) then
SLOTKONTROL = CheckGiveSlot(UID, 4)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13046);
	SaveEvent(UID, 13057);
    RunExchange(UID, 3172)
	ShowEffect(UID, 300391)
	SelectMsg(UID, 2, -1, 22777, NPC, 10, -1);
end
end

if (EVENT == 1401)then
	SelectMsg(UID, 4, 701, 22165, NPC, 3000,1402,4005,-1);
end

if (EVENT == 1402)then
	SaveEvent(UID, 13057);
end

if (EVENT == 1406)then
	SaveEvent(UID, 13059);
end

if (EVENT == 1405)then
	ITEM1_COUNT = HowmuchItem(UID, 900219000);  
	ITEM2_COUNT = HowmuchItem(UID, 900220000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 701, 22165, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 701, 22165, NPC, 22, 1407, 27, -1);
end
end

if (EVENT == 1407) then
    SaveEvent(UID, 13058);
	SaveEvent(UID, 13069);
    RunExchange(UID, 3173)
	SelectMsg(UID, 2, -1, 22349, NPC, 10, 1408,4005,-1);
end

if (EVENT == 1501)then
	SelectMsg(UID, 4, 702, 22167, NPC, 3000,1502,4005,-1);
end

if (EVENT == 1502)then
	SaveEvent(UID, 13069);
end

if (EVENT == 1506)then
	SaveEvent(UID, 13071);
end

if (EVENT == 1505)then
	QuestStatus = SearchQuest(UID, 702)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22349, NPC, 10, 1408,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900221000);  
    ITEM2_COUNT = HowmuchItem(UID, 900222000); 
    ITEM3_COUNT = HowmuchItem(UID, 900223000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22349, NPC, 10, 1408,4005,-1);
	else
	SelectMsg(UID, 5, 702, 22167, NPC,3000,1507,3005,1507,3005,1507,3005,1507,3005,1507,3005,1507,3005,1507);
end
end
end

if (EVENT == 1408)then
ZoneChange(UID, 81, 203, 197)
end

if (EVENT == 1507) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13070);
	SaveEvent(UID, 13081);
    RunExchange(UID, 3174)
	SelectMsg(UID, 2, -1, 22370, NPC, 10, -1);
	RobItem(UID, 900221000, 1)
	RobItem(UID, 900222000, 1)
	RobItem(UID, 900223000, 1)
end
end

if (EVENT == 1601)then
	SelectMsg(UID, 4, 704, 22169, NPC, 3000,1602,4005,-1);
end

if (EVENT == 1602)then
	SaveEvent(UID, 13081);
end

if (EVENT == 1606)then
	SaveEvent(UID, 13083);
end

if (EVENT == 1605) then
	MonsterCount = QuestMonsterCount(UID, 704, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 704, 22169, NPC, 18, 1607);
	else
		SelectMsg(UID, 4, 704, 22169, NPC, 3000, 1608, 27, -1);
	end
end

if (EVENT == 1607) then
	ShowMap(UID, 842);
end

if (EVENT == 1608) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13082);
	SaveEvent(UID, 13093);
	RunExchange(UID,3175)
	SelectMsg(UID, 2, -1, 22382, NPC, 10, -1);
	end
end

if (EVENT == 1701)then
	SelectMsg(UID, 4, 706, 22171, NPC, 3000,1702,4005,-1);
end

if (EVENT == 1702)then
	SaveEvent(UID, 13093);
end

if (EVENT == 1706)then
	SaveEvent(UID, 13095);
end

if (EVENT == 1705) then
	MonsterCount01 = QuestMonsterCount(UID, 706, 1);
	MonsterCount02 = QuestMonsterCount(UID, 706, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 706, 22171, NPC,3000,1709,3005,1709,3005,1709,3005,1709,3005,1709,3005,1709,3005,1709);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 706, 22171, NPC, 18, 1707);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 706, 22171, NPC, 18, 1708);
		end
	end
end

if (EVENT == 1707) then
	ShowMap(UID, 931);
end

if (EVENT == 1708) then
	ShowMap(UID, 933);
end

if (EVENT == 1709) then
SLOTKONTROL = CheckGiveSlot(UID, 4)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13094);
	SaveEvent(UID, 13105);
    RunExchange(UID, 3176)
	ShowEffect(UID, 300391)
	SelectMsg(UID, 2, -1, 22777, NPC, 10, -1);
end
end

if (EVENT == 1801)then
	SelectMsg(UID, 4, 707, 22173, NPC, 3000,1802,4005,-1);
end

if (EVENT == 1802)then
	SaveEvent(UID, 13105);
end

if (EVENT == 1806)then
	SaveEvent(UID, 13107);
end

if (EVENT == 1805)then
	ITEM1_COUNT = HowmuchItem(UID, 900225000);  
	ITEM2_COUNT = HowmuchItem(UID, 900226000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 707, 22173, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 707, 22173, NPC, 22, 1807, 27, -1);
end
end

if (EVENT == 1807) then
    SaveEvent(UID, 13106);
	SaveEvent(UID, 13117);
    RunExchange(UID, 3177)
	SelectMsg(UID, 2, -1, 22397, NPC, 10, 1808,4005,-1);
end

if (EVENT == 1808)then
ZoneChange(UID, 82, 203, 197)
end

if (EVENT == 1901)then
	SelectMsg(UID, 4, 708, 22175, NPC, 3000,1902,4005,-1);
end

if (EVENT == 1902)then
	SaveEvent(UID, 13117);
end

if (EVENT == 1906)then
	SaveEvent(UID, 13119);
end

if (EVENT == 1905)then
	QuestStatus = SearchQuest(UID, 708)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22397, NPC, 10, 1808,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900227000);  
    ITEM2_COUNT = HowmuchItem(UID, 900228000); 
    ITEM3_COUNT = HowmuchItem(UID, 900229000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22397, NPC, 10, 1808,4005,-1);
	else
	SelectMsg(UID, 5, 708, 22175, NPC,3000,1907,3005,1907,3005,1907,3005,1907,3005,1907,3005,1907,3005,1907);
end
end
end

if (EVENT == 1907) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13118);
	SaveEvent(UID, 13129);
    RunExchange(UID, 3178)
	RobItem(UID, 900227000, 1)
	RobItem(UID, 900228000, 1)
	RobItem(UID, 900229000, 1)
	SelectMsg(UID, 2, -1, 22409, NPC, 10, -1);
end
end

if (EVENT == 2001)then
	SelectMsg(UID, 4, 710, 22177, NPC, 3000,2002,4005,-1);
end

if (EVENT == 2002)then
	SaveEvent(UID, 13129);
end

if (EVENT == 2006)then
	SaveEvent(UID, 13131);
end

if (EVENT == 2005) then
	MonsterCount = QuestMonsterCount(UID, 710, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 710, 22177, NPC, 18, 2007);
	else
		SelectMsg(UID, 4, 710, 22177, NPC, 3000, 2008, 27, -1);
	end
end

if (EVENT == 2007) then
	ShowMap(UID, 843);
end

if (EVENT == 2008) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	SaveEvent(UID, 13130);
	SaveEvent(UID, 13141);
    RunExchange(UID, 3179)
	SelectMsg(UID, 2, -1, 22409, NPC, 10, -1);
end
end

if (EVENT == 2101)then
	SelectMsg(UID, 4, 712, 22179, NPC, 3000,2102,4005,-1);
end

if (EVENT == 2102)then
	SaveEvent(UID, 13141);
end

if (EVENT == 2106)then
	SaveEvent(UID, 13143);
end

if (EVENT == 2105) then
	MonsterCount01 = QuestMonsterCount(UID, 712, 1);
	MonsterCount02 = QuestMonsterCount(UID, 712, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 712, 22179, NPC,3000,2109,3005,2109,3005,2109,3005,2109,3005,2109,3005,2109,3005,2109);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 712, 22179, NPC, 18, 2107);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 712, 22179, NPC, 18, 2108);
		end
	end
end

if (EVENT == 2107) then
	ShowMap(UID, 942);
end

if (EVENT == 2108) then
	ShowMap(UID, 944);
end

if (EVENT == 2109) then
SLOTKONTROL = CheckGiveSlot(UID, 4)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13142);
	SaveEvent(UID, 13153);
    RunExchange(UID, 3180)
	ShowEffect(UID, 300391)
	--SelectMsg(UID, 2, -1, 22777, NPC, 10, -1);
end
end

if (EVENT == 2201)then
	SelectMsg(UID, 4, 713, 22181, NPC, 3000,2202,4005,-1);
end

if (EVENT == 2202)then
	SaveEvent(UID, 13153);
end

if (EVENT == 2206)then
	SaveEvent(UID, 13155);
end

if (EVENT == 2205)then
	ITEM1_COUNT = HowmuchItem(UID, 900231000);  
	ITEM2_COUNT = HowmuchItem(UID, 900232000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 713, 22181, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 713, 22181, NPC, 22, 2207, 27, -1);
end
end

if (EVENT == 2207) then
    SaveEvent(UID, 13154);
	SaveEvent(UID, 13165);
    RunExchange(UID, 3181)
	SelectMsg(UID, 2, -1, 22456, NPC, 10, 2308,4005,-1);
end

if (EVENT == 2301)then
	SelectMsg(UID, 4, 714, 22183, NPC, 3000,2302,4005,-1);
end

if (EVENT == 2302)then
	SaveEvent(UID, 13165);
end

if (EVENT == 2306)then
	SaveEvent(UID, 13167);
end

if (EVENT == 2305)then
	QuestStatus = SearchQuest(UID, 714)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22456, NPC, 10, 2308,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900233000);  
    ITEM2_COUNT = HowmuchItem(UID, 900234000); 
    ITEM3_COUNT = HowmuchItem(UID, 900235000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22456, NPC, 10, 2308,4005,-1);
	else
	SelectMsg(UID, 5, 714, 22183, NPC,3000,2307,3005,2307,3005,2307,3005,2307,3005,2307,3005,2307,3005,2307);
end
end
end

if (EVENT == 2307) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13166);
	SaveEvent(UID, 13177);
    RunExchange(UID, 3182)
	RobItem(UID, 900233000, 1)
	RobItem(UID, 900234000, 1)
	RobItem(UID, 900235000, 1)
	SelectMsg(UID, 2, -1, 22468, NPC, 10, -1);
end
end

if (EVENT == 2401)then
	SelectMsg(UID, 4, 716, 22185, NPC, 3000,2402,4005,-1);
end

if (EVENT == 2402)then
	SaveEvent(UID, 13171);
end

if (EVENT == 2406)then
	SaveEvent(UID, 13173);
end

if (EVENT == 2405) then
	MonsterCount = QuestMonsterCount(UID, 716, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 716, 22185, NPC, 18, 2407);
	else
		SelectMsg(UID, 4, 716, 22185, NPC, 3000, 2408, 27, -1);
	end
end

if (EVENT == 2407) then
	ShowMap(UID, 844);
end

if (EVENT == 2408) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13178);
	SaveEvent(UID, 13189);
    RunExchange(UID, 3183)
end
end

if (EVENT == 2501)then
	SelectMsg(UID, 4, 718, 22187, NPC, 3000,2502,4005,-1);
end

if (EVENT == 2502)then
	SaveEvent(UID, 13189);
end

if (EVENT == 2506)then
	SaveEvent(UID, 13191);
end

if (EVENT == 2505) then
	MonsterCount01 = QuestMonsterCount(UID, 718, 1);
	MonsterCount02 = QuestMonsterCount(UID, 718, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 718, 22187, NPC,3000,2509,3005,2509,3005,2509,3005,2509,3005,2509,3005,2509,3005,2509);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 718, 22187, NPC, 18, 2507);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 718, 22187, NPC, 18, 2508);
		end
	end
end

if (EVENT == 2507) then
	ShowMap(UID, 943);
end

if (EVENT == 2508) then
	ShowMap(UID, 945);
end

if (EVENT == 2509) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13190);
	SaveEvent(UID, 13201);
    RunExchange(UID, 3184)
	ShowEffect(UID, 300391)
end
end

if (EVENT == 2601)then
	SelectMsg(UID, 4, 719, 22189, NPC, 3000,2602,4005,-1);
end

if (EVENT == 2602)then
	SaveEvent(UID, 13201);
end

if (EVENT == 2606)then
	SaveEvent(UID, 13203);
end

if (EVENT == 2605)then
	ITEM1_COUNT = HowmuchItem(UID, 900237000);  
	ITEM2_COUNT = HowmuchItem(UID, 900238000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 719, 22189, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 719, 22189, NPC, 22, 2607, 27, -1);
end
end

if (EVENT == 2607) then
    SaveEvent(UID, 13202);
	SaveEvent(UID, 13213);
    RunExchange(UID, 3185)
	SelectMsg(UID, 2, -1, 22370, NPC, 10, 2708,4005,-1);
end

if (EVENT == 2701)then
	SelectMsg(UID, 4, 720, 22191, NPC, 3000,2702,4005,-1);
end

if (EVENT == 2702)then
	SaveEvent(UID, 13213);
end

if (EVENT == 2706)then
	SaveEvent(UID, 13215);
end

if (EVENT == 2705)then
	QuestStatus = SearchQuest(UID, 720)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22370, NPC, 10, 2708,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900239000);  
    ITEM2_COUNT = HowmuchItem(UID, 900240000); 
    ITEM3_COUNT = HowmuchItem(UID, 900241000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22370, NPC, 10, 2708,4005,-1);
	else
	SelectMsg(UID, 5, 720, 22191, NPC,3000,2707,3005,2707,3005,2707,3005,2707,3005,2707,3005,2707,3005,2707);
end
end
end

if (EVENT == 2708)then
ZoneChange(UID, 81, 203, 197)
end

if (EVENT == 2707) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13214);
	SaveEvent(UID, 13225);
    RunExchange(UID, 3186)
	RobItem(UID, 900239000, 1)
	RobItem(UID, 900240000, 1)
	RobItem(UID, 900241000, 1)
	SelectMsg(UID, 2, -1, 22507, NPC, 10, -1);
end
end

if (EVENT == 2801)then
	SelectMsg(UID, 4, 722, 22193, NPC, 3000,2802,4005,-1);
end

if (EVENT == 2802)then
	SaveEvent(UID, 13225);
end

if (EVENT == 2806)then
	SaveEvent(UID, 13227);
end

if (EVENT == 2805) then
	MonsterCount = QuestMonsterCount(UID, 722, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 722, 22193, NPC, 18, 2807);
	else
		SelectMsg(UID, 4, 722, 22193, NPC, 3000, 2808, 27, -1);
	end
end

if (EVENT == 2807) then
	ShowMap(UID, 845);
end

if (EVENT == 2808) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13226);
	SaveEvent(UID, 13237);
    RunExchange(UID, 3187)
	SelectMsg(UID, 2, -1, 22530, NPC, 10, -1);
end
end

if (EVENT == 2901)then
	SelectMsg(UID, 4, 724, 22195, NPC, 3000,2902,4005,-1);
end

if (EVENT == 2902)then
	SaveEvent(UID, 13231);
end

if (EVENT == 2906)then
	SaveEvent(UID, 13233);
end

if (EVENT == 2905) then
	MonsterCount01 = QuestMonsterCount(UID, 724, 1);
	MonsterCount02 = QuestMonsterCount(UID, 724, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 724, 22195, NPC,3000,2909,3005,2909,3005,2909,3005,2909,3005,2909,3005,2909,3005,2909);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 724, 22195, NPC, 18, 2907);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 724, 22195, NPC, 18, 2908);
		end
	end
end

if (EVENT == 2907) then
	ShowMap(UID, 954);
end

if (EVENT == 2908) then
	ShowMap(UID, 956);
end

if (EVENT == 2909) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13238);
	SaveEvent(UID, 13249);
    RunExchange(UID, 3188)
	ShowEffect(UID, 300391)
	SelectMsg(UID, 2, -1, 22777, NPC, 10, -1);
end
end

if (EVENT == 3001)then
	SelectMsg(UID, 4, 725, 22197, NPC, 3000,3002,4005,-1);
end

if (EVENT == 3002)then
	SaveEvent(UID, 13249);
end

if (EVENT == 3006)then
	SaveEvent(UID, 13251);
end

if (EVENT == 3005)then
	ITEM1_COUNT = HowmuchItem(UID, 900243000);  
	ITEM2_COUNT = HowmuchItem(UID, 900244000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 725, 22197, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 725, 22197, NPC, 22, 3007, 27, -1);
end
end

if (EVENT == 3007) then
    SaveEvent(UID, 13250);
	SaveEvent(UID, 13261);
    RunExchange(UID, 3189)
	SelectMsg(UID, 2, -1, 22554, NPC, 10, 3008,4005,-1);
end

if (EVENT == 3008)then
ZoneChange(UID, 82, 203, 197)
end

if (EVENT == 3101)then
	SelectMsg(UID, 4, 726, 22199, NPC, 3000,3102,4005,-1);
end

if (EVENT == 3102)then
	SaveEvent(UID, 13261);
end

if (EVENT == 3106)then
	SaveEvent(UID, 13263);
end

if (EVENT == 3105)then
	QuestStatus = SearchQuest(UID, 726)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22554, NPC, 10, 3008,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900245000);  
    ITEM2_COUNT = HowmuchItem(UID, 900246000); 
    ITEM3_COUNT = HowmuchItem(UID, 900247000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22554, NPC, 10, 3008,4005,-1);
	else
	SelectMsg(UID, 5, 726, 22199, NPC,3000,3107,3005,3107,3005,3107,3005,3107,3005,3107,3005,3107,3005,3107);
end
end
end

if (EVENT == 3107) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13262);
	SaveEvent(UID, 13273);
    RunExchange(UID, 3190)
	RobItem(UID, 900245000, 1)
	RobItem(UID, 900246000, 1)
	RobItem(UID, 900247000, 1)
	SelectMsg(UID, 2, -1, 22566, NPC, 10, -1);
end
end

if (EVENT == 3201)then
	SelectMsg(UID, 4, 728, 22201, NPC, 3000,3202,4005,-1);
end

if (EVENT == 3202)then
	SaveEvent(UID, 13273);
end

if (EVENT == 3206)then
	SaveEvent(UID, 13275);
end

if (EVENT == 3205) then
	MonsterCount = QuestMonsterCount(UID, 728, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 728, 22201, NPC, 18, 3207);
	else
		SelectMsg(UID, 4, 728, 22201, NPC, 3000, 3208, 27, -1);
	end
end

if (EVENT == 3207) then
	ShowMap(UID, 846);
end

if (EVENT == 3208) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13274);
	SaveEvent(UID, 13285);
    RunExchange(UID, 3191)
	SelectMsg(UID, 2, -1, 22578, NPC, 10, -1);
end
end

if (EVENT == 3301)then
	SelectMsg(UID, 4, 730, 22203, NPC, 3000,3302,4005,-1);
end

if (EVENT == 3302)then
	SaveEvent(UID, 13285);
end

if (EVENT == 3306)then
	SaveEvent(UID, 13287);
end

if (EVENT == 3305) then
	MonsterCount01 = QuestMonsterCount(UID, 730, 1);
	MonsterCount02 = QuestMonsterCount(UID, 730, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 5, 730, 22203, NPC,3000,3309,3005,3309,3005,3309,3005,3309,3005,3309,3005,3309,3005,3309);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 730, 22203, NPC, 18, 3307);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 730, 22203, NPC, 18, 3308);
		end
	end
end

if (EVENT == 3307) then
	ShowMap(UID, 955);
end

if (EVENT == 3308) then
	ShowMap(UID, 957);
end

if (EVENT == 3309) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13286);
	SaveEvent(UID, 13297);
    RunExchange(UID, 3192)
	SelectMsg(UID, 2, -1, 22777, NPC, 10, -1);
end
end

if (EVENT == 3401)then
	SelectMsg(UID, 4, 731, 22205, NPC, 3000,3402,4005,-1);
end

if (EVENT == 3402)then
	SaveEvent(UID, 13297);
end

if (EVENT == 3406)then
	SaveEvent(UID, 13299);
end

if (EVENT == 3405)then
	ITEM1_COUNT = HowmuchItem(UID, 900249000);  
	ITEM2_COUNT = HowmuchItem(UID, 900250000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 731, 22205, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 731, 22205, NPC, 22, 3407, 27, -1);
end
end

if (EVENT == 3407) then
    SaveEvent(UID, 13298);
	SaveEvent(UID, 13309);
    RunExchange(UID, 3193)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3408,4005,-1);
end

if (EVENT == 3408)then
ZoneChange(UID, 83, 203, 197)
end

if (EVENT == 3501)then
	SelectMsg(UID, 4, 732, 22207, NPC, 3000,3502,4005,-1);
end

if (EVENT == 3502)then
	SaveEvent(UID, 13309);
end

if (EVENT == 3506)then
	SaveEvent(UID, 13311);
end

if (EVENT == 3505)then
	QuestStatus = SearchQuest(UID, 732)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3408,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900251000);  
    ITEM2_COUNT = HowmuchItem(UID, 900252000); 
    ITEM3_COUNT = HowmuchItem(UID, 900253000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3408,4005,-1);
	else
	SelectMsg(UID, 4, 732, 22207, NPC,3000,3507,3005,-1);
end
end
end

if (EVENT == 3507) then
    SaveEvent(UID, 13310);
	SaveEvent(UID, 13321);
    RunExchange(UID, 3194)
	SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end

if (EVENT == 3601)then
	SelectMsg(UID, 4, 734, 22209, NPC, 3000,3602,4005,-1);
end

if (EVENT == 3602)then
	SaveEvent(UID, 13321);
end

if (EVENT == 3606)then
	SaveEvent(UID, 13323);
end

if (EVENT == 3605) then
	MonsterCount = QuestMonsterCount(UID, 734, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 734, 22209, NPC, 18, 3607);
	else
		SelectMsg(UID, 4, 734, 22209, NPC, 3000, 3608, 27, -1);
	end
end

if (EVENT == 3607) then
	ShowMap(UID, 847);
end

if (EVENT == 3608) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13322);
	SaveEvent(UID, 13333);
    RunExchange(UID, 3195)
	SelectMsg(UID, 2, -1, 22628, NPC, 10,-1);
end
end

if (EVENT == 3701)then
	SelectMsg(UID, 4, 736, 22211, NPC, 3000,3702,4005,-1);
end

if (EVENT == 3702)then
	SaveEvent(UID, 13333);
end

if (EVENT == 3706)then
	SaveEvent(UID, 13335);
end

if (EVENT == 3705) then
	MonsterCount01 = QuestMonsterCount(UID, 736, 1);
	MonsterCount02 = QuestMonsterCount(UID, 736, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 736, 22211, NPC,3000,3709,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 736, 22211, NPC, 18, 3707);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 736, 22211, NPC, 18, 3708);
		end
	end
end

if (EVENT == 3707) then
	ShowMap(UID, 966);
end

if (EVENT == 3708) then
	ShowMap(UID, 968);
end

if (EVENT == 3709) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13334);
	SaveEvent(UID, 13345);
    RunExchange(UID, 3196)
	SelectMsg(UID, 2, -1, 22628, NPC, 10,-1);
end
end

if (EVENT == 3801)then
	SelectMsg(UID, 4, 737, 22213, NPC, 3000,3802,4005,-1);
end

if (EVENT == 3802)then
	SaveEvent(UID, 13345);
end

if (EVENT == 3806)then
	SaveEvent(UID, 13347);
end

if (EVENT == 3805)then
	ITEM1_COUNT = HowmuchItem(UID, 900255000);  
	ITEM2_COUNT = HowmuchItem(UID, 900256000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 737, 22213, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 737, 22213, NPC, 22, 3807, 27, -1);
end
end

if (EVENT == 3807) then
    SaveEvent(UID, 13346);
	SaveEvent(UID, 13357);
    RunExchange(UID, 3197)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3808,4005,-1);
end

if (EVENT == 3901)then
	SelectMsg(UID, 4, 738, 22215, NPC, 3000,3902,4005,-1);
end

if (EVENT == 3902)then
	SaveEvent(UID, 13357);
end

if (EVENT == 3906)then
	SaveEvent(UID, 13359);
end

if (EVENT == 3905)then
	QuestStatus = SearchQuest(UID, 738)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3808,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900257000);  
    ITEM2_COUNT = HowmuchItem(UID, 900258000); 
    ITEM3_COUNT = HowmuchItem(UID, 900259000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 3808,4005,-1);
	else
	SelectMsg(UID, 4, 738, 22215, NPC,3000,3907,3005,-1);
end
end
end

if (EVENT == 3907) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13358);
	SaveEvent(UID, 13369);
    RunExchange(UID, 3198)
	--SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 4001)then
	SelectMsg(UID, 4, 740, 22217, NPC, 3000,4002,4005,-1);
end

if (EVENT == 4002)then
	SaveEvent(UID, 13369);
end

if (EVENT == 4006)then
	SaveEvent(UID, 13371);
end

if (EVENT == 4005) then
	MonsterCount = QuestMonsterCount(UID, 740, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 740, 22217, NPC, 18, 4007);
	else
		SelectMsg(UID, 4, 740, 22217, NPC, 3000, 4008, 27, -1);
	end
end

if (EVENT == 4008) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13370);
	SaveEvent(UID, 13381);
    RunExchange(UID, 3199)
	--SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 4101)then
	SelectMsg(UID, 4, 742, 22219, NPC, 3000,4102,4005,-1);
end

if (EVENT == 4102)then
	SaveEvent(UID, 13381);
end

if (EVENT == 4106)then
	SaveEvent(UID, 13383);
end

if (EVENT == 4105) then
	MonsterCount01 = QuestMonsterCount(UID, 742, 1);
	MonsterCount02 = QuestMonsterCount(UID, 742, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 742, 22219, NPC,3000,4109,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 742, 22219, NPC, 18, 4107);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 742, 22219, NPC, 18, 4108);
		end
	end
end

if (EVENT == 4107) then
	ShowMap(UID, 967);
end

if (EVENT == 4108) then
	ShowMap(UID, 969);
end

if (EVENT == 4109) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13382);
	SaveEvent(UID, 13393);
    RunExchange(UID, 3200)
	--SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 4201)then
	SelectMsg(UID, 4, 743, 22221, NPC, 3000,4202,4005,-1);
end

if (EVENT == 4202)then
	SaveEvent(UID, 13393);
end

if (EVENT == 4206)then
	SaveEvent(UID, 13395);
end

if (EVENT == 4205)then
	ITEM1_COUNT = HowmuchItem(UID, 900261000);  
	ITEM2_COUNT = HowmuchItem(UID, 900262000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 743, 22221, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 743, 22221, NPC, 22, 4208, 27, -1);
end
end

if (EVENT == 4208) then
    SaveEvent(UID, 13394);
	SaveEvent(UID, 13405);
    RunExchange(UID, 3201)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end

if (EVENT == 4301)then
	SelectMsg(UID, 4, 744, 22223, NPC, 3000,4302,4005,-1);
end

if (EVENT == 4302)then
	SaveEvent(UID, 13405);
end

if (EVENT == 4306)then
	SaveEvent(UID, 13407);
end

if (EVENT == 4305)then
	QuestStatus = SearchQuest(UID, 744)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900263000);  
    ITEM2_COUNT = HowmuchItem(UID, 900264000); 
    ITEM3_COUNT = HowmuchItem(UID, 900265000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
	else
	SelectMsg(UID, 4, 744, 22223, NPC,3000,4307,3005,-1);
end
end
end

if (EVENT == 4307) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13406);
	SaveEvent(UID, 13417);
    RunExchange(UID, 3202)
	--SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end
end

if (EVENT == 4401)then
	SelectMsg(UID, 4, 746, 22225, NPC, 3000,4402,4005,-1);
end

if (EVENT == 4402)then
	SaveEvent(UID, 13417);
end

if (EVENT == 4406)then
	SaveEvent(UID, 13419);
end

if (EVENT == 4405) then
	MonsterCount = QuestMonsterCount(UID, 746, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 746, 22225, NPC, 18, 4407);
	else
		SelectMsg(UID, 4, 746, 22225, NPC, 3000, 4408, 27, -1);
	end
end

if (EVENT == 4407) then
	ShowMap(UID, 849);
end

if (EVENT == 4408) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13418);
	SaveEvent(UID, 13429);
    RunExchange(UID, 3203)
	--SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 4501)then
	SelectMsg(UID, 4, 748, 22227, NPC, 3000,4502,4005,-1);
end

if (EVENT == 4502)then
	SaveEvent(UID, 13429);
end

if (EVENT == 4506)then
	SaveEvent(UID, 13431);
end

if (EVENT == 4505) then
	MonsterCount01 = QuestMonsterCount(UID, 748, 1);
	MonsterCount02 = QuestMonsterCount(UID, 748, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 748, 22227, NPC,3000,4509,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 748, 22227, NPC, 18, 4507);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 748, 22227, NPC, 18, 4508);
		end
	end
end

if (EVENT == 4507) then
	ShowMap(UID, 978);
end

if (EVENT == 4508) then
	ShowMap(UID, 980);
end

if (EVENT == 4509) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13430);
	SaveEvent(UID, 13441);
    RunExchange(UID, 3204)
	--SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 4601)then
	SelectMsg(UID, 4, 749, 22229, NPC, 3000,4602,4005,-1);
end

if (EVENT == 4602)then
	SaveEvent(UID, 13441);
end

if (EVENT == 4606)then
	SaveEvent(UID, 13443);
end

if (EVENT == 4605)then
	ITEM1_COUNT = HowmuchItem(UID, 900267000);  
	ITEM2_COUNT = HowmuchItem(UID, 900268000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 749, 22229, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 749, 22229, NPC, 22, 4608, 27, -1);
end
end

if (EVENT == 4608) then
    SaveEvent(UID, 13442);
	SaveEvent(UID, 13453);
    RunExchange(UID, 3205)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4609,4005,-1);
end

if (EVENT == 4701)then
	SelectMsg(UID, 4, 750, 22231, NPC, 3000,4702,4005,-1);
end

if (EVENT == 4702)then
	SaveEvent(UID, 13453);
end

if (EVENT == 4706)then
	SaveEvent(UID, 13455);
end

if (EVENT == 4705)then
	QuestStatus = SearchQuest(UID, 750)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4609,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900269000);  
    ITEM2_COUNT = HowmuchItem(UID, 900270000); 
    ITEM3_COUNT = HowmuchItem(UID, 900271000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 4609,4005,-1);
	else
	SelectMsg(UID, 4, 750, 22231, NPC,3000,4707,3005,-1);
end
end
end

if (EVENT == 4707) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13454);
	SaveEvent(UID, 13465);
    RunExchange(UID, 3206)
	--SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end
end

if (EVENT == 4801)then
	SelectMsg(UID, 4, 752, 22233, NPC, 3000,4802,4005,-1);
end

if (EVENT == 4802)then
	SaveEvent(UID, 13465);
end

if (EVENT == 4806)then
	SaveEvent(UID, 13467);
end

if (EVENT == 4805) then
	MonsterCount = QuestMonsterCount(UID, 752, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 752, 22233, NPC, 18, 4807);
	else
		SelectMsg(UID, 4, 752, 22233, NPC, 3000, 4808, 27, -1);
	end
end

if (EVENT == 4807) then
	ShowMap(UID, 976);
end

if (EVENT == 4808) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13466);
	SaveEvent(UID, 13477);
    RunExchange(UID, 3207)
	SelectMsg(UID, 2, -1, 22774, NPC, 10,-1);
end
end

if (EVENT == 4901)then
	SelectMsg(UID, 4, 754, 22235, NPC, 3000,4902,4005,-1);
end

if (EVENT == 4902)then
	SaveEvent(UID, 13477);
end

if (EVENT == 4906)then
	SaveEvent(UID, 13479);
end

if (EVENT == 4905) then
	MonsterCount01 = QuestMonsterCount(UID, 754, 1);
	MonsterCount02 = QuestMonsterCount(UID, 754, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 754, 22235, NPC,3000,4909,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 754, 22235, NPC, 18, 4907);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 754, 22235, NPC, 18, 4908);
		end
	end
end

if (EVENT == 4907) then
	ShowMap(UID, 979);
end
if (EVENT == 4908) then
	ShowMap(UID, 981);
end

if (EVENT == 4909) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13478);
	SaveEvent(UID, 13489);
    RunExchange(UID, 3208)
	SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 5001)then
	SelectMsg(UID, 4, 755, 22237, NPC, 3000,5002,4005,-1);
end

if (EVENT == 5002)then
	SaveEvent(UID, 13489);
end

if (EVENT == 5006)then
	SaveEvent(UID, 13491);
end

if (EVENT == 5005)then
	ITEM1_COUNT = HowmuchItem(UID, 900273000);  
	ITEM2_COUNT = HowmuchItem(UID, 900274000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 755, 22237, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 755, 22237, NPC, 22, 5008, 27, -1);
end
end

if (EVENT == 5008) then
    SaveEvent(UID, 13490);
	SaveEvent(UID, 13501);
    RunExchange(UID, 3209)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5009,4005,-1);
end

if (EVENT == 5101)then
	SelectMsg(UID, 4, 756, 22239, NPC, 3000,5102,4005,-1);
end

if (EVENT == 5102)then
	SaveEvent(UID, 13501);
end

if (EVENT == 5106)then
	SaveEvent(UID, 13503);
end

if (EVENT == 5105)then
	QuestStatus = SearchQuest(UID, 756)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5009,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900275000);  
    ITEM2_COUNT = HowmuchItem(UID, 900276000); 
    ITEM3_COUNT = HowmuchItem(UID, 900277000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5009,4005,-1);
	else
	SelectMsg(UID, 4, 756, 22239, NPC,3000,5107,3005,-1);
end
end
end

if (EVENT == 5107) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13502);
	SaveEvent(UID, 13513);
    RunExchange(UID, 3210)
	--SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end
end

if (EVENT == 5201)then
	SelectMsg(UID, 4, 758, 22241, NPC, 3000,5202,4005,-1);
end

if (EVENT == 5202)then
	SaveEvent(UID, 13513);
end

if (EVENT == 5206)then
	SaveEvent(UID, 13515);
end

if (EVENT == 5205) then
	MonsterCount = QuestMonsterCount(UID, 758, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 758, 22241, NPC, 18, 5207);
	else
		SelectMsg(UID, 4, 758, 22241, NPC, 3000, 5208, 27, -1);
	end
end

if (EVENT == 5207) then
	ShowMap(UID, 977);
end

if (EVENT == 5208) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13514);
	SaveEvent(UID, 13525);
    RunExchange(UID, 3211)
	SelectMsg(UID, 2, -1, 22774, NPC, 10,-1);
end
end

if (EVENT == 5301)then
	SelectMsg(UID, 4, 760, 22242, NPC, 3000,5302,4005,-1);
end

if (EVENT == 5302)then
	SaveEvent(UID, 13525);
end

if (EVENT == 5306)then
	SaveEvent(UID, 13527);
end

if (EVENT == 5305) then
	MonsterCount01 = QuestMonsterCount(UID, 760, 1);
	MonsterCount02 = QuestMonsterCount(UID, 760, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 760, 22242, NPC,3000,5309,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 760, 22242, NPC, 18, 5307);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 760, 22242, NPC, 18, 5308);
		end
	end
end

if (EVENT == 5307) then
	ShowMap(UID, 979);
end
if (EVENT == 5308) then
	ShowMap(UID, 981);
end

if (EVENT == 5309) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13526);
	SaveEvent(UID, 13537);
    RunExchange(UID, 3212)
	SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 5401)then
	SelectMsg(UID, 4, 761, 22245, NPC, 3000,5402,4005,-1);
end

if (EVENT == 5402)then
	SaveEvent(UID, 13537);
end

if (EVENT == 5406)then
	SaveEvent(UID, 13539);
end

if (EVENT == 5405)then
	ITEM1_COUNT = HowmuchItem(UID, 900279000);  
	ITEM2_COUNT = HowmuchItem(UID, 900280000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 761, 22245, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 761, 22245, NPC, 22, 5408, 27, -1);
end
end

if (EVENT == 5408) then
    SaveEvent(UID, 13538);
	SaveEvent(UID, 13549);
    RunExchange(UID, 3213)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5409,4005,-1);
end

if (EVENT == 5501)then
	SelectMsg(UID, 4, 762, 22247, NPC, 3000,5502,4005,-1);
end

if (EVENT == 5502)then
	SaveEvent(UID, 13549);
end

if (EVENT == 5506)then
	SaveEvent(UID, 13551);
end

if (EVENT == 5505)then
	QuestStatus = SearchQuest(UID, 762)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5409,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900281000);  
    ITEM2_COUNT = HowmuchItem(UID, 900282000); 
    ITEM3_COUNT = HowmuchItem(UID, 900283000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5409,4005,-1);
	else
	SelectMsg(UID, 4, 762, 22247, NPC,3000,5507,3005,-1);
end
end
end

if (EVENT == 5507) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13550);
	SaveEvent(UID, 13561);
    RunExchange(UID, 3214)
	--SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end
end

if (EVENT == 5601)then
	SelectMsg(UID, 4, 764, 22249, NPC, 3000,5602,4005,-1);
end

if (EVENT == 5602)then
	SaveEvent(UID, 13561);
end

if (EVENT == 5606)then
	SaveEvent(UID, 13563);
end

if (EVENT == 5605) then
	MonsterCount = QuestMonsterCount(UID, 764, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 764, 22249, NPC, 18, 5607);
	else
		SelectMsg(UID, 4, 764, 22249, NPC, 3000, 5608, 27, -1);
	end
end

if (EVENT == 5607) then
	ShowMap(UID, 988);
end

if (EVENT == 5608) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13562);
	SaveEvent(UID, 13573);
    RunExchange(UID, 3215)
	SelectMsg(UID, 2, -1, 22774, NPC, 10,-1);
end
end

if (EVENT == 5701)then
	SelectMsg(UID, 4, 766, 22251, NPC, 3000,5702,4005,-1);
end

if (EVENT == 5702)then
	SaveEvent(UID, 13573);
end

if (EVENT == 5706)then
	SaveEvent(UID, 13575);
end

if (EVENT == 5705) then
	MonsterCount01 = QuestMonsterCount(UID, 766, 1);
	MonsterCount02 = QuestMonsterCount(UID, 766, 2); 
	if (MonsterCount01 > 0 and MonsterCount02 > 49) then 
		SelectMsg(UID, 4, 766, 22251, NPC,3000,5709,3005,-1);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, 766, 22251, NPC, 18, 5707);
		elseif ( MonsterCount02 < 50) then
			SelectMsg(UID, 2, 766, 22251, NPC, 18, 5708);
		end
	end
end

if (EVENT == 5707) then
	ShowMap(UID, 991);
end
if (EVENT == 5708) then
	ShowMap(UID, 993);
end

if (EVENT == 5709) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13574);
	SaveEvent(UID, 13585);
    RunExchange(UID, 3216)
	SelectMsg(UID, 2, -1, 22615, NPC, 10,-1);
end
end

if (EVENT == 5801)then
	SelectMsg(UID, 4, 767, 22253, NPC, 3000,5802,4005,-1);
end

if (EVENT == 5802)then
	SaveEvent(UID, 13585);
end

if (EVENT == 5806)then
	SaveEvent(UID, 13587);
end

if (EVENT == 5805)then
	ITEM1_COUNT = HowmuchItem(UID, 900285000);  
	ITEM2_COUNT = HowmuchItem(UID, 900286000); 
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 767, 22253, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 767, 22253, NPC, 22, 5808, 27, -1);
end
end

if (EVENT == 5808) then
    SaveEvent(UID, 13586);
	SaveEvent(UID, 13597);
    RunExchange(UID, 3217)
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5809,4005,-1);
end

if (EVENT == 5901)then
	SelectMsg(UID, 4, 768, 22255, NPC, 3000,5902,4005,-1);
end

if (EVENT == 5902)then
	SaveEvent(UID, 13597);
end

if (EVENT == 5906)then
	SaveEvent(UID, 13599);
end

if (EVENT == 5905)then
	QuestStatus = SearchQuest(UID, 768)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5809,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900287000);  
    ITEM2_COUNT = HowmuchItem(UID, 900288000); 
    ITEM3_COUNT = HowmuchItem(UID, 900289000); 	
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 1 and ITEM3_COUNT < 1) then
	SelectMsg(UID, 2, -1, 22602, NPC, 10, 5809,4005,-1);
	else
	SelectMsg(UID, 4, 768, 22255, NPC,3000,5907,3005,-1);
end
end
end

if (EVENT == 5907) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13598);
	SaveEvent(UID, 13609);
    RunExchange(UID, 3218)
	--SelectMsg(UID, 2, -1, 22602, NPC, 10, 4209,4005,-1);
end
end

if (EVENT == 6001)then
	SelectMsg(UID, 4, 770, 22257, NPC, 3000,6002,4005,-1);
end

if (EVENT == 6002)then
	SaveEvent(UID, 13609);
end

if (EVENT == 6006)then
	SaveEvent(UID, 13611);
end

if (EVENT == 6005) then
	MonsterCount = QuestMonsterCount(UID, 770, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 770, 22257, NPC, 18, 6007);
	else
		SelectMsg(UID, 4, 770, 22257, NPC, 3000, 6008, 27, -1);
	end
end

if (EVENT == 6007) then
	ShowMap(UID, 977);
end

if (EVENT == 6008) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13610);
	SaveEvent(UID, 13621);
    RunExchange(UID, 3219)
	SelectMsg(UID, 2, -1, 22258, NPC, 10,-1);
end
end

if (EVENT == 6301)then
	SelectMsg(UID, 4, 773, 22263, NPC, 3000,6302,4005,-1);
end

if (EVENT == 6302)then
	SaveEvent(UID, 13645);
end

if (EVENT == 6306)then
	SaveEvent(UID, 13647);
end

if (EVENT == 6305)then
	ITEM1_COUNT = HowmuchItem(UID, 900294000);  
	if (ITEM1_COUNT < 1) then
	SelectMsg(UID, 2, 773, 22263, NPC, 10, -1);
	else
	SelectMsg(UID, 4, 773, 22263, NPC, 22, 6307, 27, -1);
end
end

if (EVENT == 6307) then
    SaveEvent(UID, 13646);
	SaveEvent(UID, 13657);
    RunExchange(UID, 3222)
end

if (EVENT == 6401)then
	SelectMsg(UID, 2, 774, 22265, NPC, 3000,6402,4005,-1);
end

if (EVENT == 6402)then
	SaveEvent(UID, 13657);
end

if (EVENT == 6403)then
    SelectMsg(UID, 4, 774, 22265, NPC, 3000,6404,4005,-1);
	SaveEvent(UID, 13659);
end

if (EVENT == 6404)then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    SaveEvent(UID, 13669);
	SaveEvent(UID, 13658);
	RunExchange(UID, 3223)
end
end

if (EVENT == 6501)then
	SelectMsg(UID, 4, 776, 22267, NPC, 3000,6502,4005,-1);
end

if (EVENT == 6502)then
	SaveEvent(UID, 13669);
end

if (EVENT == 6506)then
	SaveEvent(UID, 13671);
end

if (EVENT == 6505) then
	MonsterCount = QuestMonsterCount(UID, 776, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 776, 22267, NPC, 18, 6507);
	else
		SelectMsg(UID, 4, 776, 22267, NPC, 3000, 6508, 27, -1);
	end
end

if (EVENT == 6507) then
	ShowMap(UID, 855);
end

if (EVENT == 6508)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	ShowMap(UID, 791);
    SaveEvent(UID, 13670);
	SaveEvent(UID, 13681);
	RunExchange(UID, 3224)
end
end