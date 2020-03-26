local Ret = 0;
local NPC = 24435;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 217, NPC, 10, 158);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 8258, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 158) then
	Ret = 1;
end

local savenum = 127;

if (EVENT == 232) then -- 35 Level
	SelectMsg(UID, 4, savenum, 4931, NPC, 22, 233, 23, 158);
end

if (EVENT == 233) then
	SaveEvent(UID, 10007);
end

if (EVENT == 235) then
	SaveEvent(UID, 10009);
end

if (EVENT == 236) then
	ANIMAL = HowmuchItem(UID, 379273000);
	if (ANIMAL < 3) then
		SelectMsg(UID, 2, savenum, 4991, NPC, 19, 238);
	else
		SelectMsg(UID, 4, savenum, 4998, NPC, 22, 237, 23, 158);
	end
end

if (EVENT == 238) then
	ShowMap(UID, 95);
end

if (EVENT == 237) then
RunExchange(UID,541)
	SaveEvent(UID, 10008);
end

local savenum1 = 130;

if (EVENT == 242) then -- 36 Level
	SelectMsg(UID, 4, savenum1, 575, NPC, 22, 243, 23, 158);
end

if (EVENT == 243) then
	SaveEvent(UID, 10019);
end

if (EVENT == 245) then
	SaveEvent(UID, 10021);
end

if (EVENT == 246) then
	ROTTEN = HowmuchItem(UID, 379274000);
	if (ROTTEN < 3) then
		SelectMsg(UID, 2, savenum1, 788, NPC, 19, 248);
	else
		SelectMsg(UID, 4, savenum1, 6106, NPC, 22, 247, 23, 158);
	end
end

if (EVENT == 248) then
	ShowMap(UID, 97);
end

if (EVENT == 247) then
RunExchange(UID,542)
	SaveEvent(UID, 10020);
end

local savenum2 = 133;

if (EVENT == 252) then -- 37 Level
	SelectMsg(UID, 4, savenum2, 576, NPC, 22, 253, 23, 158);
end

if (EVENT == 253) then
	SaveEvent(UID, 9861);
end

if (EVENT == 255) then
	SaveEvent(UID, 9863);
end

if (EVENT == 256) then
	FEATHER = HowmuchItem(UID, 379272000);
	if (FEATHER < 3) then
		SelectMsg(UID, 2, savenum2, 6187, NPC, 19, 258);
	else
		SelectMsg(UID, 4, savenum2, 6196, NPC, 22, 257, 23, 158);
	end
end

if (EVENT == 258) then
	ShowMap(UID, 99);
end

if (EVENT == 257) then
RunExchange(UID,543)
	SaveEvent(UID, 9862);
end

local savenum3 = 136;

if (EVENT == 262) then -- 38 Level
	SelectMsg(UID, 4, savenum3, 586, NPC, 22, 263, 23, 158);
end

if (EVENT == 263) then
	SaveEvent(UID, 9873);
end

if (EVENT == 265) then
	SaveEvent(UID, 9875);
end

if (EVENT == 266) then
	SKULL = HowmuchItem(UID, 810418000);
	if (SKULL < 3) then
		SelectMsg(UID, 2, savenum3, 6127, NPC, 19, 268);
	else
		SelectMsg(UID, 4, savenum3, 6128, NPC, 22, 267, 23, 158);
	end
end

if (EVENT == 268) then
	ShowMap(UID, 101);
end

if (EVENT == 267) then
RunExchange(UID,544)
	SaveEvent(UID, 9874);
end

local savenum4 = 139;

if (EVENT == 272) then -- 39 Level
	SelectMsg(UID, 4, savenum4, 6139, NPC, 22, 273, 23, 158);
end

if (EVENT == 273) then
	SaveEvent(UID, 9885);
end

if (EVENT == 275) then
	SaveEvent(UID, 9887);
end

if (EVENT == 276) then
	COARSE = HowmuchItem(UID, 379275000);
	if (COARSE < 3) then
		SelectMsg(UID, 2, savenum4, 6141, NPC, 19, 278);
	else
		SelectMsg(UID, 4, savenum4, 6142, NPC, 22, 277, 23, 158);
	end
end

if (EVENT == 278) then
	ShowMap(UID, 103);
end

if (EVENT == 277) then
RunExchange(UID,545)
	SaveEvent(UID, 9886);
end

local savenum5 = 142;

if (EVENT == 282) then -- 40 Level
	SelectMsg(UID, 4, savenum5, 590, NPC, 22, 283, 23, 158);
end

if (EVENT == 283) then
	SaveEvent(UID, 9897);
end

if (EVENT == 285) then
	SaveEvent(UID, 9899);
end

if (EVENT == 286) then
	APPLE = HowmuchItem(UID, 810418000);
	if (APPLE < 10 ) then
		SelectMsg(UID, 2, savenum5, 6141, NPC, 19, 288);
	elseif (APPLE > 10) then
		SelectMsg(UID, 4, savenum5, 6142, NPC, 22, 287, 23, 158);
	end
end

if (EVENT == 288) then
	ShowMap(UID, 105);
end

if (EVENT == 287) then
RunExchange(UID,546)
	SaveEvent(UID, 9898);
end

local savenum6 = 145;

if (EVENT == 292) then -- 41 Level
	SelectMsg(UID, 4, savenum6, 6163, NPC, 22, 293, 23, 158);
end

if (EVENT == 293) then
	SaveEvent(UID, 9909);
end

if (EVENT == 295) then
	SaveEvent(UID, 9911);
end

if (EVENT == 296) then
	ORK = HowmuchItem(UID, 379277000);
	if (ORK < 7) then
		SelectMsg(UID, 2, savenum6, 6163, NPC, 19, 298);
	else
		SelectMsg(UID, 4, savenum6, 6142, NPC, 22, 297, 23, 158);
	end
end

if (EVENT == 298) then
	ShowMap(UID, 107);
end

if (EVENT == 297) then
RunExchange(UID,547)
	SaveEvent(UID, 9910);
end

local savenum7 = 148;

if (EVENT == 302) then -- 42 Level
	SelectMsg(UID, 4, savenum7, 4932, NPC, 22, 303, 23, 158);
end

if (EVENT == 303) then
	SaveEvent(UID, 9921);
end

if (EVENT == 305) then
	SaveEvent(UID, 9923);
end

if (EVENT == 306) then
	OATH = HowmuchItem(UID, 379276000);
	if (OATH < 3) then
		SelectMsg(UID, 2, savenum7, 4932, NPC, 19, 308);
	else
		SelectMsg(UID, 4, savenum7, 4934, NPC, 22, 307, 23, 158);
	end
end

if (EVENT == 308) then
	ShowMap(UID, 109);
end

if (EVENT == 307) then
RunExchange(UID,548)
	SaveEvent(UID, 9922);
end

local savenum8 = 151;

if (EVENT == 312) then -- 43 Level
	SelectMsg(UID, 4, savenum8, 576, NPC, 22, 313, 23, 158);
end

if (EVENT == 313) then
	SaveEvent(UID, 9933);
end

if (EVENT == 315) then
	SaveEvent(UID, 9935);
end

if (EVENT == 316) then
	FEATHER = HowmuchItem(UID, 379272000);
	if (FEATHER < 7) then
		SelectMsg(UID, 2, savenum8, 6187, NPC, 19, 318);
	else
		SelectMsg(UID, 4, savenum8, 6196, NPC, 22, 317, 23, 158);
	end
end

if (EVENT == 318) then
	ShowMap(UID, 111);
end

if (EVENT == 317) then
RunExchange(UID,549)
	SaveEvent(UID, 9934);
end

local savenum=1373
local talknum=44200
local exchangeid=6161

if (EVENT == 500) then -- DTS Yonga
	SelectMsg(UID, 4, savenum, talknum, NPC, 22, 501, 23, 158);
end

if (EVENT == 501) then
	SaveEvent(UID, 3959);
end

if (EVENT == 506) then
	ITEMA  = HowmuchItem(UID, 810494000);
	if(ITEMA > 4) then
	SaveEvent(UID, 3961);
end
end

if (EVENT == 503) then
	ITEMA  = HowmuchItem(UID, 810494000);
	if(ITEMA > 4) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 505, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 504);
	end
end

if (EVENT == 504) then
ShowMap(UID, 587);
end

if (EVENT == 505) then
	RunExchange(UID, exchangeid)
	SaveEvent(UID, 3960);
end

local savenum=1374
local talknum=44204
local exchangeid=6162

if (EVENT == 510) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 511, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 511) then
	SaveEvent(UID, 3969);
end

if (EVENT == 516) then
	ITEMA  = HowmuchItem(UID, 810495000);
	if(ITEMA > 19) then
		SaveEvent(UID, 3971)
	end	
end

if (EVENT == 513) then
	ITEMA  = HowmuchItem(UID, 810495000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 514, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 514)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,3970)
end

local savenum=1375
local talknum=44208
local exchangeid=6163

if (EVENT == 520) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 521, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 521) then
	SaveEvent(UID, 3979);
end

if (EVENT == 526) then
	ITEMA  = HowmuchItem(UID, 810496000);
	if(ITEMA > 14) then
		SaveEvent(UID, 3981)
	end	
end

if (EVENT == 523) then
	ITEMA  = HowmuchItem(UID, 810496000);
	if(ITEMA > 14) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 524, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 525);
	end
end

if (EVENT == 525) then
	ShowMap(UID, 37);
end

if (EVENT == 524)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,3980)
end

local savenum=1376
local talknum=44212
local exchangeid=6164

if (EVENT == 530) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 531, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if (EVENT == 531) then
	SaveEvent(UID, 3989);
end

if (EVENT == 536) then
	SaveEvent(UID, 3991);
end

if (EVENT == 533) then
	ITEMA = HowmuchItem(UID, 810497000);
	if (ITEMA > 2) then
	SelectMsg(UID, 4, savenum, talknum, NPC, 22, 535, 23, 158);
	else
	SelectMsg(UID, 2, savenum, talknum, NPC, 19, 158);
	end
end

if (EVENT == 535) then
	RunExchange(UID, exchangeid)
	SaveEvent(UID, 3990);
end

if (EVENT == 1002)then
	SelectMsg(UID, 2, 516, 20122, NPC, 4161, 1003);
end

if (EVENT == 1003)then
	SelectMsg(UID, 2, 516, 20123, NPC, 4552, 1004,6004,-1);
	SaveEvent(UID,11002)
end

if (EVENT == 1004)then
	SelectMsg(UID, 4, 516, 20124, NPC, 4161, 1005,3005,-1);
	SaveEvent(UID,11004)
end

if (EVENT == 1005) then 
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
	    SaveEvent(UID,11003)
		SaveEvent(UID, 11035);
		SelectMsg(UID, 2, 516, 20207, NPC,6002, -1);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID,11003)
		SaveEvent(UID, 11040);
		SelectMsg(UID, 2, 516, 20207, NPC,6002, -1);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID,11003)
		SaveEvent(UID, 11045);
		SelectMsg(UID, 2, 516, 20207, NPC,6002, -1);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID,11003)
		SaveEvent(UID, 11050);
		SelectMsg(UID, 2, 516, 20207, NPC,6002, -1);
	end
end


if (EVENT == 1101)then
	SelectMsg(UID, 4, 520, 20009, NPC, 22, 1102,23,-1);
end

if (EVENT == 1102)then
	SaveEvent(UID,11080)
end

if (EVENT == 1106)then
	SaveEvent(UID,11082)
end

if (EVENT == 1103) then
	ITEM_COUNT = HowmuchItem(UID, 910210000);   
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 520, 20009, NPC, 18, -1);
	else
		SelectMsg(UID, 4, 520, 20009, NPC, 22, 1105, 27, -1); 
	end
end

if (EVENT == 1105)then
RunExchange(UID,3007)
	SaveEvent(UID,11081)
	SaveEvent(UID,11092)
end



if (EVENT == 1201)then
	SelectMsg(UID, 4, 521, 20011, NPC, 22, 1202,23,-1);
end

if (EVENT == 1202)then
	SaveEvent(UID,11092)
end

if (EVENT == 1206)then
	SaveEvent(UID,11094)
end

if (EVENT == 1203) then
		SelectMsg(UID, 4, 521, 20011, NPC, 22, 1205, 27, -1); 
end

if (EVENT == 1205)then
RunExchange(UID,3008)
	SaveEvent(UID,11093)
	SaveEvent(UID,11104)
end