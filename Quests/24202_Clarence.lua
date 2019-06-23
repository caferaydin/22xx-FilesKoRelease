local Ret = 0;
local NPC = 24202;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3825, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 3825,NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 700) then -- 45 Level Cardinal Jewel
	SelectMsg(UID, 2, 243, 3001, NPC, 28, 701);
end

if (EVENT == 701) then
	ShowMap(UID, 307);
	SaveEvent(UID, 3292);
end

if (EVENT == 702) then
	SelectMsg(UID, 2, 243, 3002, NPC, 28, 701);
end

if (EVENT == 703) then
	SelectMsg(UID, 2, 243, 3131, NPC, 10, 704);
end

if (EVENT == 704) then
	SelectMsg(UID, 4, 243, 3132, NPC, 22, 705, 23, 193);
end

if (EVENT == 705) then
	SaveEvent(UID, 3293);
end

if (EVENT == 706) then
	SaveEvent(UID, 3295);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 243, 3136, NPC, 3015, 193);
	else
		SelectMsg(UID, 2, 243, 3006, NPC, 3015, 193);
	end
end

if (EVENT == 708) then
	ITEM_COUNT = HowmuchItem(UID, 910082000);
	if (ITEM_COUNT > 0) then
		SelectMsg(UID, 2, 243, 3135, NPC, 18, 709);
	else
		SelectMsg(UID, 4, 243, 3137, NPC, 41, 710, 27, 193);
	end
end

if (EVENT == 709) then
	ShowMap(UID, 315);
end

if (EVENT == 710) then
--RunExchange(UID,318)
	SaveEvent(UID, 3296); 
end

local savenum = 273;

if (EVENT == 530) then -- 60 Level Job Change
	Class = CheckClass (UID);
	if (Class == 7) then
		SaveEvent(UID, 4093);
		SelectMsg(UID, 2, savenum, 4095, NPC, 4080, 193);
	else
		Ret = 1;
	end
end

if (EVENT == 532) then
	Level = CheckLevel(UID)
	if (Level > 59) then 
		Class = CheckClass (UID);
		if (Class == 7) then
			SelectMsg(UID, 4, savenum, 4098, NPC, 22, 533, 23, 534);
		else
			SelectMsg(UID, 2, savenum, 4097, NPC, 10, 193);
		end
	else
		SelectMsg(UID, 2, savenum, 4096, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 4094);
end

if (EVENT == 534) then
	SaveEvent(UID, 4097);
end

if (EVENT == 535) then
	SaveEvent(UID, 4096);
	SelectMsg(UID, 2, savenum, 4102, NPC, 4080, 193);
end

if (EVENT == 536) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810092000);
	ITEM_COUNTC = HowmuchItem(UID, 810093000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, savenum, 4103, NPC, 4062, 537, 4063, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 188);
end

if (EVENT == 539) then
	ShowMap(UID, 712);
end

if (EVENT == 540) then
	ShowMap(UID, 710);
end

if (EVENT == 537) then
	GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 810095000,1, 810092000,1, 810093000,1, 0,0, 0,0);
	PromoteUser(UID)
	SaveEvent(UID, 4095);
	SelectMsg(UID, 2, savenum, 4093, NPC, 4064, 193);
end

--------------------------------
if (EVENT == 303) then 
	SelectMsg(UID, 2, 331, 3096, NPC, 3011, 304);
end
--------------------------------
if (EVENT == 304) then
	SelectMsg(UID, 4, 331, 3097, NPC, 22, 305, 23, 193);
end
--------------------------------
if (EVENT == 305) then
	SaveEvent(UID, 3233);
end
--------------------------------
if (EVENT == 306) then
	SaveEvent(UID, 3235);
	SelectMsg(UID, 2, 331, 3102, NPC, 21, 193);
end
--------------------------------
if (EVENT == 308) then
	ITEM_COUNTA = HowmuchItem(UID, 910042000);
	ITEM_COUNTB = HowmuchItem(UID, 379040000);
	ITEM_COUNTC = HowmuchItem(UID, 379236000);
	if (ITEM_COUNTA > 4 and ITEM_COUNTB > 0 and ITEM_COUNTC > 1) then
		SelectMsg(UID, 4, 331, 3103, NPC, 41, 310, 27, 193);
	else
		if (ITEM_COUNTA < 5) then
			SelectMsg(UID, 2, 331, 3100, NPC, 18, 309);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 331, 3100, NPC, 18, 311);
		elseif (ITEM_COUNTC < 2) then
			SelectMsg(UID, 2, 331, 3100, NPC, 18, 312);
		end
	end
end
--------------------------------
if (EVENT == 309) then
	ShowMap(UID, 324);
end
--------------------------------
if (EVENT == 311) then
	ShowMap(UID, 28);
end
--------------------------------
if (EVENT == 312) then
	ShowMap(UID, 18);
end
--------------------------------
if (EVENT == 310) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    RunExchange(UID,314)
	SaveEvent(UID, 3236);
end
end
--------------------------------
if (EVENT == 400) then
	SelectMsg(UID, 2, 332, 3001, NPC, 28, 401);
end

if (EVENT == 401) then
	ShowMap(UID, 307);
	SaveEvent(UID, 3252);
end

if (EVENT == 402) then
	SelectMsg(UID, 2, 332, 3002, NPC, 28, 401);
end

if (EVENT == 403) then -- 69 Level Stamp of Agility or Dexterity
	SelectMsg(UID, 2, 332, 3104, NPC, 10, 404);
end

if (EVENT == 404) then
	SelectMsg(UID, 4, 332, 3105, NPC, 22, 405, 23, 193);
end

if (EVENT == 405) then
	SaveEvent(UID, 3253);
end

if (EVENT == 406) then
	SaveEvent(UID, 3255);
	SelectMsg(UID, 2, 332, 3110, NPC, 21, 193);
end

if (EVENT == 408) then
	ITEM_COUNTA = HowmuchItem(UID, 320410011);
	ITEM_COUNTB = HowmuchItem(UID, 320410012);
	ITEM_COUNTC = HowmuchItem(UID, 379067000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, 332, 3111, NPC, 41, 410, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 332, 3108, NPC, 18, 409);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 332, 3108, NPC, 18, 411);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 332, 3108, NPC, 18, 412);
		end
	end
end

if (EVENT == 409) then
	ShowMap(UID, 309);
end

if (EVENT == 411) then
	ShowMap(UID, 310);
end

if (EVENT == 412) then
	ShowMap(UID, 30);
end

if (EVENT == 410) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    RunExchange(UID,315) 
	SaveEvent(UID, 3256);
end
end
if (EVENT == 820) then
	SelectMsg(UID, 2, 335, 3225, NPC, 3006, 821);
end

if (EVENT == 821) then
	ShowMap(UID, 307);
	SaveEvent(UID, 3432);
end

if (EVENT == 822) then
	SelectMsg(UID, 2, 335, 3224, NPC, 3006, 821);
end

if (EVENT == 823) then -- 70 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, 335, 3226, NPC, 10, 824);
	else
		SelectMsg(UID, 2, 335, 4711, NPC, 10, 193);
	end
end

if (EVENT == 824) then
	SelectMsg(UID, 4, 335, 3227, NPC, 22, 825, 23, 831);
end

if (EVENT == 825) then
	SaveEvent(UID, 3433);
	SelectMsg(UID, 2, 335, 3228, NPC, 10, 193);
end

if (EVENT == 831) then
	SelectMsg(UID, 2, 335, 3229, NPC, 10, 193);
end

if (EVENT == 826) then
	SaveEvent(UID, 3435);
	SelectMsg(UID, 2, 335, 3232, NPC, 32, 193);
end

if (EVENT == 828) then
	ITEM_COUNT1 = HowmuchItem(UID, 379245000);
	ITEM_COUNT2 = HowmuchItem(UID, 379246000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 4, 335, 3233, NPC, 41, 830, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 335, 3230, NPC, 18, 829);
		elseif (ITEM_COUNT3 < 7000000) then
			SelectMsg(UID, 2, 335, 3230, NPC, 18, 831);
		end
	end
end

if (EVENT == 829) then
	ShowMap(UID, 307);
end

if (EVENT == 831) then
	ShowMap(UID, 336);
end

if (EVENT == 830) then
RunExchange(UID, 330);
	SaveEvent(UID, 3434);
end

local savenum = 347;

if (EVENT == 920) then
	SelectMsg(UID, 2, savenum, 5122, NPC, 3006, 921);
end

if (EVENT == 921) then
	ShowMap(UID, 307);
	SaveEvent(UID, 5131);
end

if (EVENT == 922) then
	SelectMsg(UID, 2, savenum, 5123, NPC, 3006, 921);
end

if (EVENT == 923) then -- 72 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5125, NPC, 10, 924);
	else
		SelectMsg(UID, 2, savenum, 5124, NPC, 10, 193);
	end
end

if (EVENT == 924) then
	SelectMsg(UID, 4, savenum, 5126, NPC, 22, 925, 23, 931);
end

if (EVENT == 925) then
	SaveEvent(UID, 5132);
	SelectMsg(UID, 2, savenum, 5127, NPC, 10, 193);
end

if (EVENT == 931) then
	SelectMsg(UID, 2, savenum, 5128, NPC, 10, 193);
end

if (EVENT == 926) then
	SaveEvent(UID, 5134);
	SelectMsg(UID, 2, savenum, 5131, NPC, 32, 193);
end

if (EVENT == 928) then
	ITEM_COUNT1 = HowmuchItem(UID, 379246000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5132, NPC, 41, 930, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 929);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 932);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 933);
		end
	end
end

if (EVENT == 929) then
	ShowMap(UID, 307);
end

if (EVENT == 932) then
	ShowMap(UID, 19);
end

if (EVENT == 933) then
	ShowMap(UID, 336);
end

if (EVENT == 930) then
RunExchange(UID, 522);
	SaveEvent(UID, 5133);
end

local savenum = 360;

if (EVENT == 1020) then
	SelectMsg(UID, 2, savenum, 5133, NPC, 3006, 1021);
end

if (EVENT == 1021) then
	ShowMap(UID, 307);
	SaveEvent(UID, 5143);
end

if (EVENT == 1022) then
	SelectMsg(UID, 2, savenum, 5134, NPC, 3006, 1021);
end

if (EVENT == 1023) then -- 75 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5136, NPC, 10, 1024);
	else
		SelectMsg(UID, 2, savenum, 5135, NPC, 10, 193);
	end
end

if (EVENT == 1024) then
	SelectMsg(UID, 4, savenum, 5137, NPC, 22, 1025, 23, 1031);
end

if (EVENT == 1025) then
	SaveEvent(UID, 5144);
	SelectMsg(UID, 2, savenum, 5138, NPC, 10, 193);
end

if (EVENT == 1031) then
	SelectMsg(UID, 2, savenum, 5139, NPC, 10, 193);
end

if (EVENT == 1026) then
	SaveEvent(UID, 5146);
	SelectMsg(UID, 2, savenum, 5142, NPC, 32, 193);
end

if (EVENT == 1028) then
	ITEM_COUNT1 = HowmuchItem(UID, 379246000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5143, NPC, 41, 1030, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1029);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1032);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1033);
		end
	end
end

if (EVENT == 1029) then
	ShowMap(UID, 307);
end

if (EVENT == 1032) then
	ShowMap(UID, 19);
end

if (EVENT == 1033) then
	ShowMap(UID, 336);
end

if (EVENT == 1030) then
RunExchange(UID, 523);
	SaveEvent(UID, 5145);   
end

local savenum = 366;

if (EVENT == 1120) then
	SelectMsg(UID, 2, savenum, 5144, NPC, 3006, 1121);
end

if (EVENT == 1121) then
	ShowMap(UID, 307);
	SaveEvent(UID, 5155);
end

if (EVENT == 1122) then
	SelectMsg(UID, 2, savenum, 5145, NPC, 3006, 1121);
end

if (EVENT == 1123) then -- 80 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5147, NPC, 10, 1124);
	else
		SelectMsg(UID, 2, savenum, 5146, NPC, 10, 193);
	end
end

if (EVENT == 1124) then
	SelectMsg(UID, 4, savenum, 5148, NPC, 22, 1125, 23, 1131);
end

if (EVENT == 1125) then
	SaveEvent(UID, 5156);
	SelectMsg(UID, 2, savenum, 5149, NPC, 10, 193);
end

if (EVENT == 1131) then
	SelectMsg(UID, 2, savenum, 5150, NPC, 10, 193);
end

if (EVENT == 1126) then
	SaveEvent(UID, 5158);
	SelectMsg(UID, 2, savenum, 5153, NPC, 32, 193);
end

if (EVENT == 1128) then
	ITEM_COUNT1 = HowmuchItem(UID, 379245000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5154, NPC, 41, 1130, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1129);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1132);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1133);
		end
	end
end

if (EVENT == 1129) then
	ShowMap(UID, 307);
end

if (EVENT == 1132) then
	ShowMap(UID, 19);
end

if (EVENT == 1133) then
	ShowMap(UID, 336);
end

if (EVENT == 1130) then
RunExchange(UID, 524);
	SaveEvent(UID, 5157); 
end

local savenum = 492;

if (EVENT == 2000) then -- 55 Cardinal
	SelectMsg(UID, 2, savenum, 9223, NPC, 10, 2001);
end

if (EVENT == 2001) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 2410);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 2415);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 2420);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 2425);
	end
end

if (EVENT == 2002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 9223, NPC, 22, 2003, 23, 2004);
	else
		SelectMsg(UID, 2, savenum, 9223, NPC, 10, 163);
	end
end

if (EVENT == 2003) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 2411);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 2416);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 2421);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 2426);
	end
end

if (EVENT == 2004) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 2414);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 2419);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 2424);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 2429);
	end
end

if (EVENT == 2005) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 2413);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 2418);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 2423);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 2428);
	end
end

--if (EVENT == 2006) then
	--ShowMap(UID, 306);
--end

if (EVENT == 2007) then
	MonsterCount = QuestMonsterCount(UID, 492, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, 9223, NPC, 18, 2006);
	else
		SelectMsg(UID, 5, savenum, 9223, NPC, 41, 2008,41, 2008,41, 2008,41, 2008,23, 163);
	end
end



if (EVENT == 2008) then
SLOTKONTROL = CheckGiveSlot(UID, 3)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
RunExchange(UID,214)
		SaveEvent(UID, 2412);
	elseif (Class == 2 or Class == 7 or Class == 8) then
RunExchange(UID,215)
		SaveEvent(UID, 2417);
	elseif (Class == 3 or Class == 9 or Class == 10) then
RunExchange(UID,216)
		SaveEvent(UID, 2422);
	elseif (Class == 4 or Class == 11 or Class == 12) then
RunExchange(UID,217)
		SaveEvent(UID, 2427);
	end
end
end

if (EVENT == 220) then
	SaveEvent(UID, 3212);
end
--------------------------------
if (EVENT == 222) then 
	SelectMsg(UID, 2, 305, 3112, NPC, 3013, 232);
end
--------------------------------
if (EVENT == 232) then
	SelectMsg(UID, 2, 305, 3113, NPC, 3003, 233);
end
--------------------------------
if (EVENT == 233) then
SelectMsg(UID, 4, 305, 3089, NPC, 22, 224, 23, 193);
end
--------------------------------
if (EVENT == 224) then
	SaveEvent(UID, 3213);
end
--------------------------------
if (EVENT == 225) then
	SaveEvent(UID, 3216);
end
--------------------------------
if (EVENT == 226) then
	SaveEvent(UID, 3215);
end
--------------------------------
if (EVENT == 228) then
	MAGICSCROLL = HowmuchItem(UID, 900017000);
	if (MAGICSCROLL > 6) then
		SelectMsg(UID, 4, 305, 3095, NPC, 41, 230, 27, 193);
	else
		SelectMsg(UID, 2, 305, 3098, NPC, 18, 229);
	end
end
--------------------------------
if (EVENT == 229) then
	ShowMap(UID, 726);
end
--------------------------------
if (EVENT == 230) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
    RunExchange(UID,313)
	SaveEvent(UID, 3216);
end
end



if (EVENT == 3001) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 517, 20002, NPC, 3018, 3002, 3019, -1);
	else
		SelectMsg(UID, 2, 517, 20002, NPC, 4242, -1);
	end
end

if (EVENT == 3002) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 11035);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 11040);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 11045);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 11050);
	end
end

if (EVENT == 3004) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 11037);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 11042);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 11047);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 11052);
	end
end

if(EVENT == 3005) then
	AGED = HowmuchItem(UID, 508102000)	
	if( AGED < 5) then
		SelectMsg(UID, 2, 517, 20002, NPC, 18, 3006);
	else
		SelectMsg(UID, 5, 517, 20002, NPC, 20, 3008, 20, 3008, 20, 3008, 20, 3008, 20, 3008, 20, 3008,25,-1);
	end
end

if (EVENT == 3006 ) then
	ShowMap(UID, 547)
end

if (EVENT == 3008) then
SLOTKONTROL = CheckGiveSlot(UID, 5)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
	RunExchange(UID, 3001);
		SaveEvent(UID, 11036);
		SaveEvent(UID, 11062);
	elseif (Class == 2 or Class == 7 or Class == 8) then
	RunExchange(UID, 3002);
		SaveEvent(UID, 11041);
		SaveEvent(UID, 11062);
	elseif (Class == 3 or Class == 9 or Class == 10) then
	RunExchange(UID, 3003);
		SaveEvent(UID, 11046);
		SaveEvent(UID, 11062);
	elseif (Class == 4 or Class == 11 or Class == 12) then
	RunExchange(UID, 3004);
	    SaveEvent(UID, 11051);
		SaveEvent(UID, 11062);
	end
end
end

if (EVENT == 3101) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 518, 20004, NPC,3018, 3102, 3019, -1);
	else
		SelectMsg(UID, 2, 518, 20004, NPC, 4242, -1);
	end
end

if (EVENT == 3102) then
SaveEvent(UID, 11062);
end

if (EVENT == 3104) then
SaveEvent(UID, 11064);
end

if(EVENT == 3105) then
	ITEMA = HowmuchItem(UID, 508103000)	
	if(ITEMA < 5) then
		SelectMsg(UID, 2, 518, 20004, NPC, 18, 3106);
	else
		SelectMsg(UID, 5, 518, 20004, NPC, 22, 3108,22, 3108,22, 3108, 22, 3108, 22, 3108,23,-1);
	end
end

if (EVENT == 3106 ) then
	ShowMap(UID, 623)
end

if (EVENT == 3108 ) then
SLOTKONTROL = CheckGiveSlot(UID, 5)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3005)
SaveEvent(UID, 11063);
SaveEvent(UID, 11074);
end
end

if (EVENT == 3201) then
	SelectMsg(UID, 4, 786, 22998, NPC, 22, 3202, 27, -1);
end

if (EVENT == 3202) then
	SaveEvent(UID, 13783);
end

if (EVENT == 3206) then
	SaveEvent(UID, 13785);
end

if(EVENT == 3205) then
	ITEMA = HowmuchItem(UID, 900323000)	
	if(ITEMA < 1) then
		SelectMsg(UID, 2, 786, 22998, NPC, 18,-1);
	else
		SelectMsg(UID, 4, 786, 22998, NPC, 22, 3207,23,-1);
	end
end

if (EVENT == 3207 ) then
SelectMsg(UID, 2, 786, 23149, NPC, 10,3208,4005,-1);
RunExchange(UID,3234)
SaveEvent(UID, 13784);
SaveEvent(UID, 13795);
end

if (EVENT == 3208 ) then
ZoneChange(UID, 83, 204, 200)
end

if (EVENT == 3301) then
	SelectMsg(UID, 4, 787, 23000, NPC, 22, 3302, 27, -1);
end

if (EVENT == 3302) then
	SaveEvent(UID, 13795);
end

if (EVENT == 3306) then
	SaveEvent(UID, 13797);
end

if (EVENT == 3305)then
	QuestStatus = SearchQuest(UID, 787)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, 787, 23149, NPC, 10,3208,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900326000);  
    ITEM2_COUNT = HowmuchItem(UID, 900325000); 	
	if (ITEM1_COUNT < 4 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 787, 23149, NPC, 10,3208,4005,-1);
	else
	SelectMsg(UID, 4, 787, 23000, NPC, 22, 3308, 27, -1);
end
end
end

if (EVENT == 3308)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
SelectMsg(UID, 2, -1, 23146, NPC, 10,-1);
RunExchange(UID,3235)
	SaveEvent(UID,13796)
	SaveEvent(UID,13807)
	end
	end