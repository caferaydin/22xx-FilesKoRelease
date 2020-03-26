local Ret = 0;
local NPC = 24204;

if (EVENT == 190) then
	QuestStatus = SearchQuest(UID, 531)
	
	if(QuestStatus == 1) then
		SaveEvent(UID, 11220)
	end

	
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3826, NPC, 10, 193);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 3826, NPC)
	else
		EVENT = QuestNum
	end
end

--CHAT BASLA
if (EVENT == 1302) then
	SelectMsg(UID, 4, 531, 20245, NPC, 4552, 1304);
end

if (EVENT == 1304) then
SaveEvent(UID, 11218);
end

if (EVENT == 1303) then
	SelectMsg(UID, 2, 531, 20245, NPC, 4552, 1305);
end

if (EVENT == 1305) then
SaveEvent(UID, 11220);
SaveEvent(UID, 11219);
end


if (EVENT == 1402) then
	SelectMsg(UID, 4, 532, 20032, NPC, 22, 1403,23,-1);
end

if (EVENT == 1403) then
SaveEvent(UID, 11230);
end

if (EVENT == 1408) then
SaveEvent(UID, 11232);
end

if (EVENT == 1405) then
	ITEM1_COUNT = HowmuchItem(UID, 389083000);   
	ITEM2_COUNT = HowmuchItem(UID, 379006000);  
	ITEM3_COUNT = HowmuchItem(UID, 379062000);  
	if (ITEM1_COUNT < 1 and ITEM2_COUNT < 3 and ITEM3_COUNT < 100) then
		SelectMsg(UID, 2, 532, 20032, NPC, 18,1406);
	else
		SelectMsg(UID, 4, 532, 20032, NPC, 22, 1407, 27, -1); 
	end
end

if (EVENT == 1406) then
	ShowMap(UID, 414);
end

if (EVENT == 1407) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3019)
SaveEvent(UID, 11231);
SaveEvent(UID, 11236);
end
end


--CHAT BITIR

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then
	SelectMsg(UID, 2, 70, 3026, NPC, 10, 196);
end

if (EVENT == 196) then
	ShowMap(UID, 303);
	SaveEvent(UID, 3073);
end

if (EVENT == 232) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3073);
end

if (EVENT == 197) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 456, 3009, NPC, 3018, 198, 3019, -1);
	else
		SelectMsg(UID, 2, 456, 3009, NPC, 4242, -1);
	end
end


if (EVENT == 198) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 3502);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 3507);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 3512);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 3517);
	end
end

if (EVENT == 201) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 3504);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 3509);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 3514);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 3519);
	end
end

if (EVENT == 199) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 3505);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 3510);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 3515);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 3520);
	end
end

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 900033000);
   if  ITEM_COUNT > 0 then
   SelectMsg(UID, 4, 456, 3022, NPC, 10, 214, 27, 193);   
   else
      SelectMsg(UID, 2, 456, 3019, NPC, 18, 213);
   end
end

if (EVENT == 213) then
	ShowMap(UID, 308);
end

if (EVENT == 214) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
	RunExchange(UID,210)
		SaveEvent(UID, 3503);
	elseif (Class == 2 or Class == 7 or Class == 8) then
	RunExchange(UID,211)
		SaveEvent(UID, 3508);
	elseif (Class == 3 or Class == 9 or Class == 10) then
	RunExchange(UID,212)
		SaveEvent(UID, 3513);
	elseif (Class == 4 or Class == 11 or Class == 12) then
	RunExchange(UID,213)
		SaveEvent(UID, 3518);
	end
end

if (EVENT == 220) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3004, 1100, 3005, 1100);
end

if (EVENT == 1100) then
	SelectMsg(UID, 2, 307, 3029, NPC, 3006, 1101);
end

if (EVENT == 1101) then
	SelectMsg(UID, 2, 307, 3030, NPC, 3007, 221, 3008, 1102);
end

if (EVENT == 1102) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3006, 221);
end

if (EVENT == 221) then
	SaveEvent(UID, 3092);
end

if (EVENT == 222) then
	SelectMsg(UID, 2, 307, 3032, NPC, 3003, 1110);
end

if (EVENT == 1110) then
	SelectMsg(UID, 2, 307, 3029, NPC, 3006, 1111);
end

if (EVENT == 1111) then
	SelectMsg(UID, 2, 307, 3030, NPC, 3007, 221, 3008, 1112);
end

if (EVENT == 1112) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3006, 221);
end

if (EVENT == 223) then -- 61 Level Judgement Scroll
	SelectMsg(UID, 2, 307, 3036, NPC, 10, 227);
end

if (EVENT == 227) then
	SelectMsg(UID, 2, 307, 3037, NPC, 3002, 224);
end

if (EVENT == 224) then
	SelectMsg(UID, 4, 307, 3038, NPC, 22, 225, 23, 193);
end

if (EVENT == 225) then
	SaveEvent(UID, 3093);
end

if (EVENT == 226) then
	SaveEvent(UID, 3095);
	SelectMsg(UID, 2, 307, 3045, NPC, 32, 193);
end

if (EVENT == 228) then
	ITEM_COUNT = HowmuchItem(UID, 900017000);
	if (ITEM_COUNT > 6) then
		SelectMsg(UID, 4, 307, 3043, NPC, 41, 230, 27, 193);
	else
		SelectMsg(UID, 2, 307, 3038, NPC, 18, 229);
	end
end

if (EVENT == 229) then
	ShowMap(UID, 726);
end

if (EVENT == 230) then
	GiveItemLua(UID,379066000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 900017000,7, 0,0, 0,0, 0,0);
	SaveEvent(UID, 3094);
	SelectMsg(UID, 2, 307, 3044, NPC, 10, 193);
end

if (EVENT == 300) then
	SelectMsg(UID, 2, 308, 3001, NPC, 28, 301);
end

if (EVENT == 301) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3112);
end

if (EVENT == 302) then
	SelectMsg(UID, 2, 308, 3002, NPC, 28, 301);
end

if (EVENT == 303) then -- 69 Level Nostrum of Wisdom
	SelectMsg(UID, 2, 308, 3048, NPC, 10, 304);
end

if (EVENT == 304) then
	SelectMsg(UID, 4, 308, 3049, NPC, 22, 305, 23, 193);
end

if (EVENT == 305) then
	SaveEvent(UID, 3113);
end

if (EVENT == 306) then
	SaveEvent(UID, 3115);
	SelectMsg(UID, 2, 308, 3054, NPC, 3009, 193);
end

if (EVENT == 308) then
	ITEM_COUNTA = HowmuchItem(UID, 379047000);
	ITEM_COUNTB = HowmuchItem(UID, 379041000);
	ITEM_COUNTC = HowmuchItem(UID, 379236000);
	if (ITEM_COUNTA > 4 and ITEM_COUNTB > 0 and ITEM_COUNTC > 1) then
		SelectMsg(UID, 4, 308, 3055, NPC, 41, 310, 27, 193);
	else
		if (ITEM_COUNTA < 5) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 309);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 311);
		elseif (ITEM_COUNTC < 2) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 312);
		end
	end
end

if (EVENT == 309) then
	ShowMap(UID, 312);
end

if (EVENT == 311) then
	ShowMap(UID, 317);
end

if (EVENT == 312) then
	ShowMap(UID, 19);
end

if (EVENT == 310) then
	RobItem(UID, 379047000, 5)
	RobItem(UID, 379041000, 1)
	RobItem(UID, 379236000, 2)
	GiveItem(UID, 379249000, 1)
	SaveEvent(UID, 3114);
end

if (EVENT == 400) then
	SelectMsg(UID, 2, 309, 3001, NPC, 28, 401);
end

if (EVENT == 401) then
	ShowMap(UID, 305);
	SaveEvent(UID, 3132);
end

if (EVENT == 402) then
	SelectMsg(UID, 2, 309, 3002, NPC, 28, 401);
end

if (EVENT == 403) then -- 69 Level Stamp of Intelligence
	SelectMsg(UID, 2, 309, 3056, NPC, 10, 404);
end

if (EVENT == 404) then
	SelectMsg(UID, 4, 309, 3057, NPC, 22, 405, 23, 193);
end

if (EVENT == 405) then
	SaveEvent(UID, 3133);
end

if (EVENT == 406) then
	SaveEvent(UID, 3135);
	SelectMsg(UID, 2, 309, 3062, NPC, 3006, 193);
end

if (EVENT == 408) then
	ITEM_COUNTA = HowmuchItem(UID, 320410013);
	ITEM_COUNTB = HowmuchItem(UID, 320410011);
	ITEM_COUNTC = HowmuchItem(UID, 379067000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB  > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, 309, 3063, NPC, 41, 410, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 409);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 411);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 412);
		end
	end
end

if (EVENT == 409) then
	ShowMap(UID, 311);
end

if (EVENT == 411) then
	ShowMap(UID, 309);
end

if (EVENT == 412) then
	ShowMap(UID, 30);
end

if (EVENT == 410) then
	GiveItemLua(UID,379250000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 320410013,1, 320410011,1, 379067000,1, 0,0);
	SaveEvent(UID, 3134);
end

local savenum = 408;

if (EVENT == 530) then -- 60 Level Job Change
	Class = CheckClass (UID);
	if (Class == 11) then
		SaveEvent(UID, 4117);
		SelectMsg(UID, 2, savenum, 4117, NPC, 4080, 193);
	else
		Ret = 1;
	end
end

if (EVENT == 532) then   
	Level = CheckLevel(UID)
	if (Level > 59) then
		Class = CheckClass (UID);
		if (Class == 5 or Class == 7 or Class == 9 or Class == 11) then
			SelectMsg(UID, 2, savenum, 4120, NPC, 22, 533, 23, 534);
		else
			SaveEvent(UID, 4119);
			SelectMsg(UID, 2, savenum, 4119, NPC, 10, 193);
		end
	else
		SelectMsg(UID, 2, savenum, 4118, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 4118);
end

if (EVENT == 534) then
	SaveEvent(UID, 4121); 
end

if (EVENT == 535) then
	SaveEvent(UID, 4120);
	SelectMsg(UID, 2, savenum, 4124, NPC, 4080, 193);
end

if (EVENT == 536) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810091000);
	ITEM_COUNTC = HowmuchItem(UID, 810093000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then 
		SelectMsg(UID, 2, savenum, 4125, NPC, 4062, 537, 4063, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 681);
end

if (EVENT == 539) then
	ShowMap(UID, 714);
end

if (EVENT == 540) then
	ShowMap(UID, 710);
end

if (EVENT == 537) then
	SaveEvent(UID, 4119);
	RobItem(UID, 810095000, 1)
	RobItem(UID, 810091000, 1)
	RobItem(UID, 810093000, 1)
	PromoteUser(UID)
	SelectMsg(UID, 2, savenum, 4093, NPC, 4064, 193);
end

if (EVENT == 620) then
	SelectMsg(UID, 2, 54, 3245, NPC, 3006, 621);
end

if (EVENT == 621) then
	ShowMap(UID, 303);
	SaveEvent(UID, 3472);
end

if (EVENT == 622) then
	SelectMsg(UID, 2, 54, 3244, NPC, 3006, 621);
end

if (EVENT == 623) then -- 70 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, 54, 3246, NPC, 10, 630);
	else
		SelectMsg(UID, 2, 54, 4713, NPC, 10, 193);
	end
end

if (EVENT == 624) then
	SelectMsg(UID, 2, 54, 3247, NPC, 22, 625, 23, 631);
end

if (EVENT == 625) then
	SaveEvent(UID, 3473);
	SelectMsg(UID, 2, 54, 3248, NPC, 10, 193);
end

if (EVENT == 631) then
	SelectMsg(UID, 2, 54, 3249, NPC, 10, 193);
end

if (EVENT == 626) then
	SaveEvent(UID, 3475);
	SelectMsg(UID, 2, 54, 3252, NPC, 32, 193);
end

if (EVENT == 628) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379250000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 2, 54, 3253, NPC, 41, 630, 27, 193);
	else
		if (ITEM_COUNTA < 1 or ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 54, 3250, NPC, 18, 629);
		elseif (ITEM_COUNTC < 7000000) then
			SelectMsg(UID, 2, 54, 3250, NPC, 18, 632);
		end
	end
end

if (EVENT == 629) then
	ShowMap(UID, 303);
end

if (EVENT == 632) then
	ShowMap(UID, 336);
end

if (EVENT == 630) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379249000,1, 379250000,1, 0,0, 0,0);
	GoldLose(UID, 7000000)
	SaveEvent(UID, 3474);
end

local savenum = 518;

if (EVENT == 720) then
	SelectMsg(UID, 2, savenum, 5188, NPC, 3006, 721);
end

if (EVENT == 721) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5197);
end

if (EVENT == 722) then
	SelectMsg(UID, 2, savenum, 5189, NPC, 3006, 721);
end

if (EVENT == 723) then -- 72 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5191, NPC, 10, 730);
	else
		SelectMsg(UID, 2, savenum, 5190, NPC, 10, 193);
	end
end

if (EVENT == 724) then
	SelectMsg(UID, 2, savenum, 5192, NPC, 22, 725, 23, 731);
end

if (EVENT == 725) then
	SaveEvent(UID, 5204);
	SelectMsg(UID, 2, savenum, 5193, NPC, 10, 193);
end

if (EVENT == 731) then
	SelectMsg(UID, 2, savenum, 5194, NPC, 10, 193);
end

if (EVENT == 726) then
	SaveEvent(UID, 5206);
	SelectMsg(UID, 2, savenum, 5197, NPC, 32, 193);
end

if (EVENT == 728) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5198, NPC, 41, 730, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 729);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 732);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 733);
		end
	end
end

if (EVENT == 729) then
	ShowMap(UID, 303);
end

if (EVENT == 732) then
	ShowMap(UID, 19);
end

if (EVENT == 733) then
	ShowMap(UID, 336);
end

if (EVENT == 730) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379250000,1, 379236000,1, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5205);   
end

local savenum = 519;

if (EVENT == 820) then
	SelectMsg(UID, 2, savenum, 5199, NPC, 3006, 821);
end

if (EVENT == 821) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5215);
end

if (EVENT == 822) then
	SelectMsg(UID, 2, savenum, 5200, NPC, 3006, 821);
end

if (EVENT == 823) then -- 74 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5202, NPC, 10, 830);
	else
		SelectMsg(UID, 2, savenum, 5201, NPC, 10, 193);
	end
end

if (EVENT == 824) then
	SelectMsg(UID, 2, savenum, 5203, NPC, 22, 825, 23, 831);
end

if (EVENT == 825) then
	SaveEvent(UID, 5216);
	SelectMsg(UID, 2, savenum, 5204, NPC, 10, 193);
end

if (EVENT == 831) then
	SelectMsg(UID, 2, savenum, 5205, NPC, 10, 193);
end

if (EVENT == 826) then
	SaveEvent(UID, 5218);
	SelectMsg(UID, 2, savenum, 5208, NPC, 32, 193);
end

if (EVENT == 828) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5209, NPC, 41, 830, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 829);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 832);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 833);
		end
	end
end

if (EVENT == 829) then
	ShowMap(UID, 303);
end

if (EVENT == 832) then
	ShowMap(UID, 19);
end

if (EVENT == 833) then
	ShowMap(UID, 336);
end

if (EVENT == 830) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379249000,1, 379236000,1, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5217); 	 
end

local savenum = 520;

if (EVENT == 920) then
	SelectMsg(UID, 2, savenum, 5210, NPC, 3006, 921);
end

if (EVENT == 921) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5227);
end

if (EVENT == 922) then
	SelectMsg(UID, 2, savenum, 5211, NPC, 3006, 921);
end

if (EVENT == 923) then -- 75 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5213, NPC, 10, 930);
	else 
		SelectMsg(UID, 2, savenum, 5212, NPC, 10, 193);
	end
end

if (EVENT == 924) then
	SelectMsg(UID, 2, savenum, 5214, NPC, 22, 925, 23, 931);
end

if (EVENT == 925) then
	SaveEvent(UID, 5228);
	SelectMsg(UID, 2, savenum, 5215, NPC, 10, 193);
end

if (EVENT == 931) then
	SelectMsg(UID, 2, savenum, 5216, NPC, 10, 193);
end

if (EVENT == 926) then
	SaveEvent(UID, 5230);
	SelectMsg(UID, 2, savenum, 5219, NPC, 32, 193);
end

if (EVENT == 928) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5220, NPC, 41, 930, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 929);
		elseif (ITEM_COUNTB < 2) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 932);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 933);
		end
	end
end

if (EVENT == 929) then
	ShowMap(UID, 303);
end

if (EVENT == 932) then
	ShowMap(UID, 19);
end

if (EVENT == 933) then
	ShowMap(UID, 336);
end

if (EVENT == 930) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379250000,1, 379236000,2, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5229);
end

local savenum = 521;

if (EVENT == 1020) then
	SelectMsg(UID, 2, savenum, 5221, NPC, 3006, 1021);
end

if (EVENT == 1021) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5239);
end

if (EVENT == 1022) then
	SelectMsg(UID, 2, savenum, 5222, NPC, 3006, 1021);
end

if (EVENT == 1023) then -- 76 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5224, NPC, 10, 1030);
	else
		SelectMsg(UID, 2, savenum, 5223, NPC, 10, 193);
	end
end

if (EVENT == 1024) then
	SelectMsg(UID, 2, savenum, 5225, NPC, 22, 1025, 23, 1031);
end

if (EVENT == 1025) then
	SaveEvent(UID, 5240);
	SelectMsg(UID, 2, savenum, 5226, NPC, 10, 193);
end

if (EVENT == 1031) then
	SelectMsg(UID, 2, savenum, 5227, NPC, 10, 193);
end

if (EVENT == 1026) then
	SaveEvent(UID, 5242);
	SelectMsg(UID, 2, savenum, 5230, NPC, 32, 193);
end

if (EVENT == 1028) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5231, NPC, 41, 1030, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1029);
		elseif (ITEM_COUNTB < 2) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1032);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1033);
		end
	end
end

if (EVENT == 1029) then
	ShowMap(UID, 303);
end

if (EVENT == 1032) then
	ShowMap(UID, 19);
end

if (EVENT == 1033) then
	ShowMap(UID, 336);
end

if (EVENT == 1030) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379249000,1, 379236000,2, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5241); 
end

local savenum = 522;

if (EVENT == 1120) then
	SelectMsg(UID, 2, savenum, 5232, NPC, 3006, 1121);
end

if (EVENT == 1121) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5251);
end

if (EVENT == 1122) then
	SelectMsg(UID, 2, savenum, 5233, NPC, 3006, 1121);
end

if (EVENT == 1123) then -- 78 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5235, NPC, 10, 1130);
	else
		SelectMsg(UID, 2, savenum, 5234, NPC, 10, 193);
	end
end

if (EVENT == 1124) then
	SelectMsg(UID, 2, savenum, 5236, NPC, 22, 1125, 23, 1131);
end

if (EVENT == 1125) then
	SaveEvent(UID, 5252);
	SelectMsg(UID, 2, savenum, 5237, NPC, 10, 193);
end

if (EVENT == 1131) then
	SelectMsg(UID, 2, savenum, 5238, NPC, 10, 193);
end

if (EVENT == 1126) then
	SaveEvent(UID, 5254);
	SelectMsg(UID, 2, savenum, 5241, NPC, 32, 193);
end

if (EVENT == 1128) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5242, NPC, 41, 1130, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1129);
		elseif (ITEM_COUNTB < 3) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1132);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1133);
		end
	end
end

if (EVENT == 1129) then
	ShowMap(UID, 303);
end

if (EVENT == 1132) then
	ShowMap(UID, 19);
end

if (EVENT == 1133) then
	ShowMap(UID, 336);
end

if (EVENT == 1130) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379250000,1, 379236000,3, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5253);  
end

local savenum = 523;

if (EVENT == 1220) then
	SelectMsg(UID, 2, savenum, 5243, NPC, 3006, 1221);
end

if (EVENT == 1221) then
	ShowMap(UID, 303);
	SaveEvent(UID, 5263);
end

if (EVENT == 1222) then
	SelectMsg(UID, 2, savenum, 5244, NPC, 3006, 1221);
end

if (EVENT == 1223) then -- 80 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 4, savenum, 5246, NPC, 10, 1230);
	else
		SelectMsg(UID, 2, savenum, 5245, NPC, 10, 193);
	end
end

if (EVENT == 1224) then
	SelectMsg(UID, 2, savenum, 5247, NPC, 22, 1225, 23, 1231);
end

if (EVENT == 1225) then
	SaveEvent(UID, 5264);
	SelectMsg(UID, 2, savenum, 5248, NPC, 10, 193);
end

if (EVENT == 1231) then
	SelectMsg(UID, 2, savenum, 5249, NPC, 10, 193);
end

if (EVENT == 1226) then
	SaveEvent(UID, 5266);
	SelectMsg(UID, 2, savenum, 5252, NPC, 32, 193);
end

if (EVENT == 1228) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 2, savenum, 5253, NPC, 41, 1230, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1229);
		elseif (ITEM_COUNTB < 3) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1232);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1233);
		end
	end
end

if (EVENT == 1229) then
	ShowMap(UID, 303);
end

if (EVENT == 1232) then
	ShowMap(UID, 19);
end

if (EVENT == 1233) then
	ShowMap(UID, 336);
end

if (EVENT == 1230) then
	GiveItemLua(UID,900007000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 379249000,1, 379236000,3, 0,0, 0,0);
	GoldLose(UID, 10000000)
	SaveEvent(UID, 5265);
end