local NPC = 24201;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3824, NPC, 3001, -1);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 3824, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 532) then
	SelectMsg(UID, 4, 273, 4084, NPC, 22, 533, 23, -1);
end

if (EVENT == 533) then
	SaveEvent(UID, 4082);
end

if (EVENT == 535) then
	SaveEvent(UID, 4084);
	SelectMsg(UID, 2, 273, 4090, NPC, 4080, -1);
end

if (EVENT == 536) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810090000);
	ITEM_COUNTC = HowmuchItem(UID, 810094000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, 273, 4091, NPC, 4062, 537, 4063, -1);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 188);
end

if (EVENT == 539) then
	ShowMap(UID, 184);
end

if (EVENT == 540) then
	ShowMap(UID, 186);
end

if (EVENT == 537) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810090000);
	ITEM_COUNTC = HowmuchItem(UID, 810094000);
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 273, 4085, NPC, 18, 540);
		else
			RunQuestExchange(UID,461);
			SaveEvent(UID, 4083);
			PromoteUser(UID);
			SelectMsg(UID, 2, savenum, 4093, NPC, 4064, -1);
	end
end

if (EVENT == 222) then
	SelectMsg(UID, 2, 304, 3028, NPC, 3006, 223);
end

if (EVENT == 223) then
	SelectMsg(UID, 2, 304, 3064, NPC, 3010, 224);
end

if (EVENT == 224) then
	SelectMsg(UID, 4, 304, 3065, NPC, 22, 225, 23, -1);
end
if (EVENT == 225) then
	SaveEvent(UID, 3153);
	GiveItem(UID,900017000,7);
end

if (EVENT == 226) then
	SaveEvent(UID, 3155);
	SelectMsg(UID, 2, 304, 3070, NPC, 32, -1);
end

if (EVENT == 227) then
	ITEM_COUNT = HowmuchItem(UID, 900017000);
	if (ITEM_COUNT > 6) then
		SelectMsg(UID, 4, 304, 3071, NPC, 41, 230, 27, -1);
	else
		SelectMsg(UID, 2, 304, 3068, NPC, 18, 229);
	end
end

if (EVENT == 229) then
	ShowMap(UID, 726);
end

if (EVENT == 230) then
	ITEM_COUNT = HowmuchItem(UID, 900017000);
		if (ITEM_COUNT < 7) then
			SelectMsg(UID, 2, 304, 3068, NPC, 18, 229);
		else
			RunQuestExchange(UID,310);
			SaveEvent(UID, 3156);	 
	end
end

if (EVENT == 303) then
	SelectMsg(UID, 2, 329, 3072, NPC, 3002, 304);
end

if (EVENT == 304) then
	SelectMsg(UID, 4, 329, 3073, NPC, 22, 305, 23, -1);
end

if (EVENT == 305) then
	SaveEvent(UID, 3173);
end

if (EVENT == 306) then
	SaveEvent(UID, 3175);
	SelectMsg(UID, 2, 329, 3078, NPC, 21, -1);
end

if (EVENT == 308) then
	ITEM_COUNT1 = HowmuchItem(UID, 379042000);
	ITEM_COUNT2 = HowmuchItem(UID, 379040000);
	ITEM_COUNT3 = HowmuchItem(UID, 379236000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 1) then
		SelectMsg(UID, 4, 329, 3079, NPC, 41, 310, 27, -1);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 309);
		elseif (ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 311);
		elseif (ITEM_COUNT3 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 312);
		end
	end
end

if (EVENT == 309) then
	ShowMap(UID, 319);
end

if (EVENT == 311) then
	ShowMap(UID, 28);
end

if (EVENT == 312) then
	ShowMap(UID, 19);
end

if (EVENT == 310) then
	ITEM_COUNT1 = HowmuchItem(UID, 379042000);
	ITEM_COUNT2 = HowmuchItem(UID, 379040000);
	ITEM_COUNT3 = HowmuchItem(UID, 379236000);
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 309);
		elseif (ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 311);
		elseif (ITEM_COUNT3 < 1) then
			SelectMsg(UID, 2, 329, 3076, NPC, 18, 312);
		else
			RunQuestExchange(UID,311);
			SaveEvent(UID, 3176);
	end
end

if (EVENT == 403) then
	SelectMsg(UID, 2, 330, 3080, NPC, 3000, 404);
end

if (EVENT == 404) then
	SelectMsg(UID, 4, 330, 3081, NPC, 22, 405, 23, -1);
end

if (EVENT == 405) then
	SaveEvent(UID, 3193);
end

if (EVENT == 406) then
	SaveEvent(UID, 3195);
	SelectMsg(UID, 2, 330, 3086, NPC, 21, -1);
end

if (EVENT == 408) then
	ITEM_COUNT1 = HowmuchItem(UID, 320410011);
	ITEM_COUNT2 = HowmuchItem(UID, 320410012);
	ITEM_COUNT3 = HowmuchItem(UID, 379067000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 0) then
		SelectMsg(UID, 4, 330, 3087, NPC, 41, 410, 27, -1);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 409);
		elseif (ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 411);
		elseif (ITEM_COUNT3 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 412);
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
	ITEM_COUNT1 = HowmuchItem(UID, 320410011);
	ITEM_COUNT2 = HowmuchItem(UID, 320410012);
	ITEM_COUNT3 = HowmuchItem(UID, 379067000);
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 409);
		elseif (ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 411);
		elseif (ITEM_COUNT3 < 1) then
			SelectMsg(UID, 2, 330, 3084, NPC, 18, 412);	
		else
			RunQuestExchange(UID,312);
			SaveEvent(UID, 3196); 
	end
end

if (EVENT == 623) then 
	SelectMsg(UID, 2, 334, 3216, NPC, 10, 624);
end

if (EVENT == 624) then
	SelectMsg(UID, 4, 334, 3217, NPC, 22, 625, 23, -1);
end

if (EVENT == 625) then
	SaveEvent(UID, 3413);
	SelectMsg(UID, 2, 334, 3218, NPC, 10, -1);
end

if (EVENT == 626) then
	SaveEvent(UID, 3415);
	SelectMsg(UID, 2, 334, 3222, NPC, 32, -1);
end

if (EVENT == 628) then
	ITEM_COUNT1 = HowmuchItem(UID, 379243000);
	ITEM_COUNT2 = HowmuchItem(UID, 379244000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 4, 334, 3223, NPC, 41, 630, 27, -1);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 334, 3220, NPC, 18, 629);
		elseif (ITEM_COUNT3 < 7000000) then
			SelectMsg(UID, 2, 334, 3220, NPC, 18, 632);
		end
	end
end

if (EVENT == 629) then
	ShowMap(UID, 305);
end

if (EVENT == 632) then
	ShowMap(UID, 336);
end

if (EVENT == 630) then
	ITEM_COUNT1 = HowmuchItem(UID, 379243000);
	ITEM_COUNT2 = HowmuchItem(UID, 379244000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 334, 3220, NPC, 18, 629);
		elseif (ITEM_COUNT3 < 7000000) then
			SelectMsg(UID, 2, 334, 3220, NPC, 18, 632);
		else
			RunQuestExchange(UID,329);
			SaveEvent(UID, 3414); 
			--Skill Açma Komutu--
	end
end

local savenum = 359;

if (EVENT == 723) then
	SelectMsg(UID, 2, 359, 5103, NPC, 10, 724);
end

if (EVENT == 724) then
	SelectMsg(UID, 4, 359, 5104, NPC, 22, 725, 23, -1);
end

if (EVENT == 725) then
	SaveEvent(UID, 5108);
	SelectMsg(UID, 2, 359, 5105, NPC, 10, -1);
end

if (EVENT == 726) then
	SaveEvent(UID, 5110);
	SelectMsg(UID, 2, 359, 5109, NPC, 32, -1);
end

if (EVENT == 728) then
	ITEM_COUNT1 = HowmuchItem(UID, 379244000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, 359, 5110, NPC, 41, 730, 27, -1);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 727);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 729);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 732);
		end
	end
end

if (EVENT == 727) then
	ShowMap(UID, 305);
end

if (EVENT == 729) then
	ShowMap(UID, 19);
end

if (EVENT == 732) then
	ShowMap(UID, 336);
end

if (EVENT == 730) then
	ITEM_COUNT1 = HowmuchItem(UID, 379244000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 727);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 729);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, 359, 5107, NPC, 18, 732);
		else
			RunQuestExchange(UID,520);
			SaveEvent(UID, 5109);
			--Skill Açma Komutu--
	end
end

if (EVENT == 823) then
	SelectMsg(UID, 2, 365, 5114, NPC, 10, 824);
end

if (EVENT == 824) then
	SelectMsg(UID, 4, 365, 5115, NPC, 22, 825, 23, -1);
end

if (EVENT == 825) then
	SaveEvent(UID, 5120);
	SelectMsg(UID, 2, 365, 5116, NPC, 10, -1);
end

if (EVENT == 826) then
	SaveEvent(UID, 5122);
	SelectMsg(UID, 2, 365, 5120, NPC, 32, -1);
end

if (EVENT == 828) then
	ITEM_COUNT1 = HowmuchItem(UID, 379243000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, 365, 5121, NPC, 41, 830, 27, -1);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 829);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 832);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 833);
		end
	end
end

if (EVENT == 829) then
	ShowMap(UID, 305);
end

if (EVENT == 832) then
	ShowMap(UID, 19);
end

if (EVENT == 833) then
	ShowMap(UID, 336);
end

if (EVENT == 830) then
	ITEM_COUNT1 = HowmuchItem(UID, 379243000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 829);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 832);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, 365, 5118, NPC, 18, 833);
		else
			RunQuestExchange(UID,521);
			SaveEvent(UID, 5121);
			--Skill Açma Komutu--
	end
end