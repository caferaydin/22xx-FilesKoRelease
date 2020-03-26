local Ret = 0;
local NPC = 14424;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4515, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4516, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 9540) then -- 61 Level Doom Soldier
	SaveEvent(UID, 9729);
end

if (EVENT == 9542) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 303, 8773, NPC, 22, 9543, 23, 9544);
	else
		SelectMsg(UID, 2, 303, 8773, NPC, 10, 193);
	end
end

if (EVENT == 9543) then
	SaveEvent(UID, 9730);
end

if (EVENT == 9544) then
	SaveEvent(UID, 9733);
end

if (EVENT == 9546) then
	SaveEvent(UID, 9732);
end

if (EVENT == 9547) then
	MonsterCount = QuestMonsterCount(UID, 303, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 303, 8773, NPC, 18, 9548);
	else
		SelectMsg(UID, 4, 303, 8773, NPC, 41, 9549, 27, 9548);
	end
end

if (EVENT == 9548) then
	ShowMap(UID, 628);
end

if (EVENT == 9549) then
	RunExchange(UID,1155)
	SaveEvent(UID, 9731);
end

local savenum = 317;

if (EVENT == 532) then -- 62 Level 7 Certificate of Suffering 
	SelectMsg(UID, 4, savenum, 4509, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
		SaveEvent(UID, 4272);
		GiveItem(UID, 910127000, 1);
end

if (EVENT == 535) then
	SaveEvent(UID, 4274);
end

if (EVENT == 536) then
	ItemA = HowmuchItem(UID, 910134000);
	ItemB = HowmuchItem(UID, 910127000);
	if (ItemA < 1) then
		if (ItemB < 1) then
			Check = isRoomForItem(UID, 910127000);
			if (Check == -1) then
				SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
			else
				GiveItem(UID, 910127000, 1)
				SelectMsg(UID, 2, savenum, 4511, NPC, 18, 538);
			end
		else
			SelectMsg(UID, 2, savenum, 4512, NPC, 18, 538);
		end
	else
		SelectMsg(UID, 2, savenum, 4510, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 461);
end

if (EVENT == 537) then
RunExchange(UID, 481);
	SaveEvent(UID, 4273);
end

if (EVENT == 9370) then -- 62 Level Brahman
	SaveEvent(UID, 9405);
end

if (EVENT == 9372) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 312, 8687, NPC, 22, 9373, 23, 9374);
	else
		SelectMsg(UID, 2, 312, 8687, NPC, 10, 193);
	end
end

if (EVENT == 9373) then
	SaveEvent(UID, 9406);
end

if (EVENT == 9374) then
	SaveEvent(UID, 9409);
end

if (EVENT == 9376) then
	SaveEvent(UID, 9408);
end

if (EVENT == 9377) then
	MonsterCount = QuestMonsterCount(UID, 312, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 312, 8687, NPC, 18, 9378);
	else
		SelectMsg(UID, 4, 312, 8687, NPC, 41, 9379, 27, 9378);
	end
end

if (EVENT == 9378) then
	ShowMap(UID, 606);
end

if (EVENT == 9379) then
	RunExchange(UID,1095)
	SaveEvent(UID, 9407);
end

if (EVENT == 9380) then -- 63 Level Crimson Wing
	SaveEvent(UID, 9417);
end

if (EVENT == 9382) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 314, 8689, NPC, 22, 9383, 23, 9384);
	else
		SelectMsg(UID, 2, 314, 8689, NPC, 10, 193);
	end
end

if (EVENT == 9383) then
	SaveEvent(UID, 9418);
end

if (EVENT == 9384) then
	SaveEvent(UID, 9421);
end

if (EVENT == 9386) then
	SaveEvent(UID, 9420);
end

if (EVENT == 9387) then
	MonsterCount = QuestMonsterCount(UID, 314, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 314, 8689, NPC, 18, 9388);
	else
		SelectMsg(UID, 4, 314, 8689, NPC, 41, 9389, 27, 9388);
	end
end

if (EVENT == 9388) then
	ShowMap(UID, 608);
end

if (EVENT == 9389) then
	RunExchange(UID,1097)
	SaveEvent(UID, 9419);
end

if (EVENT == 9390) then -- 64 Level Gargoyle
	SaveEvent(UID, 9429);
end

if (EVENT == 9392) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 316, 8691, NPC, 22, 9393, 23, 9394);
	else
		SelectMsg(UID, 2, 316, 8691, NPC, 10, 193);
	end
end

if (EVENT == 9393) then
	SaveEvent(UID, 9430);
end

if (EVENT == 9394) then
	SaveEvent(UID, 9433);
end

if (EVENT == 9396) then
	SaveEvent(UID, 9432);
end

if (EVENT == 9397) then
	MonsterCount = QuestMonsterCount(UID, 316, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 316, 8691, NPC, 18, 9398);
	else
		SelectMsg(UID, 4, 316, 8691, NPC, 41, 9399, 27, 9398);
	end
end

if (EVENT == 9398) then
	ShowMap(UID, 610);
end

if (EVENT == 9399) then
	RunExchange(UID,1099)
	SaveEvent(UID, 9431);
end

if (EVENT == 9410) then -- 67 Level Apostle Piercing Cold 
	SaveEvent(UID, 9453);
end

if (EVENT == 9412) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 320, 8695, NPC, 22, 9413, 23, 9414);
	else
		SelectMsg(UID, 2, 320, 8695, NPC, 10, 193);
	end
end

if (EVENT == 9413) then
	SaveEvent(UID, 9454);
end

if (EVENT == 9414) then
	SaveEvent(UID, 9457);
end

if (EVENT == 9416) then
	SaveEvent(UID, 9456);
end

if (EVENT == 9417) then
	MonsterCount = QuestMonsterCount(UID, 320, 1);
	if (MonsterCount < 0) then
	    SelectMsg(UID, 2, 320, 8695, NPC, 18, 9418);
	else
		SelectMsg(UID, 4, 320, 8695, NPC, 41, 9419, 27, 9418);
	end
end

if (EVENT == 9418) then
	ShowMap(UID, 615);
end

if (EVENT == 9419) then
	RunExchange(UID,1102)
	SaveEvent(UID, 9455);
end

if (EVENT == 9420) then -- 69 Level Apostle of Flames
	SaveEvent(UID, 9465);
end

if (EVENT == 9422) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 322, 8697, NPC, 22, 9423, 23, 9424);
	else
		SelectMsg(UID, 2, 322, 8697, NPC, 10, 193);
	end
end

if (EVENT == 9423) then
	SaveEvent(UID, 9466);
end

if (EVENT == 9424) then
	SaveEvent(UID, 9469);
end

if (EVENT == 9426) then
	SaveEvent(UID, 9468);
end

if (EVENT == 9427) then
	MonsterCount = QuestMonsterCount(UID, 322, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 322, 8697, NPC, 18, 9428);
	else
		SelectMsg(UID, 4, 322, 8697, NPC, 41, 9429, 27, 9428);
	end
end

if (EVENT == 9428) then
	ShowMap(UID, 617);
end

if (EVENT == 9429) then
	RunExchange(UID,1105)
	SaveEvent(UID, 9467);
end

local savenum = 339;

if (EVENT == 630) then -- 70 Level Selfname Quest
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4354);
		EVENT = 631
	end
end

if (EVENT == 631) then
	SelectMsg(UID, 2, savenum, 4622, NPC, 4080, 193);
end

if (EVENT == 632) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 4623, NPC, 22, 633, 23, 634);
	else
		SelectMsg(UID, 2, savenum, 4624, NPC, 10, 193);
	end
end

if (EVENT == 633) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4355);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4360);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4365);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4370);
	end
end

if (EVENT == 634) then
	SaveEvent(UID, 4358);
end
    
if (EVENT == 280) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4357);
		EVENT = 281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4362);
		EVENT = 281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4367);
		EVENT = 281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4372);
		EVENT = 281
	end
end

if (EVENT == 281) then
	SelectMsg(UID, 2, savenum, 4625, NPC, 14, 193);
end

if (EVENT == 636) then
	MonsterCount01 = QuestMonsterCount(UID, 339, 1); --Quest Uruk Hai
	MonsterCount02 = QuestMonsterCount(UID, 339, 2); --Quest Stone Golem
	MonsterCount03 = QuestMonsterCount(UID, 339, 3); --Quest Troll Berserker
	MonsterCount04 = QuestMonsterCount(UID, 339, 4); --Quest Apostles  
	if (MonsterCount01 > 0 and MonsterCount02 > 0 and MonsterCount03 > 0 and MonsterCount04 > 0) then 
		SelectMsg(UID, 5, savenum, 4630, NPC, 41, 637,41, 637,41, 637,41, 637, 27, 193);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, savenum, 4626, NPC, 18, 638);
		elseif ( MonsterCount02 < 1) then
			SelectMsg(UID, 2, savenum, 4627, NPC, 18, 639);
		elseif ( MonsterCount03 < 1) then
			SelectMsg(UID, 2, savenum, 4628, NPC, 18, 640);
		elseif ( MonsterCount04 < 1) then
			SelectMsg(UID, 2, savenum, 4629, NPC, 18, 641);
		end
	end
end

if (EVENT == 638) then
	ShowMap(UID, 481);
end

if (EVENT == 639) then
	ShowMap(UID, 482);
end

if (EVENT == 640) then
	ShowMap(UID, 483);
end

if (EVENT == 641) then
	ShowMap(UID, 484);
end

if (EVENT == 637) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RunExchange(UID,497, STEP, 1);
		SaveEvent(UID, 4356);
		ShowEffect(UID, 300391) 
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RunExchange(UID,498, STEP, 1);
		SaveEvent(UID, 4361);
		ShowEffect(UID, 300391) 
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RunExchange(UID,499, STEP, 1);
		SaveEvent(UID, 4366);
		ShowEffect(UID, 300391) 
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RunExchange(UID,500, STEP, 1);
		SaveEvent(UID, 4371);
		ShowEffect(UID, 300391) 
	end
end
end

if (EVENT == 200) then -- 71 Level Troll Berserker
	SaveEvent(UID, 923);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 344, 1408, NPC, 22, 203, 23, 204);
	else
		SelectMsg(UID, 2, 344, 1408, NPC, 10, 193);
	end
end

if (EVENT == 203) then
	SaveEvent(UID, 924);
end

if (EVENT == 204) then
	SaveEvent(UID, 927);
end

if (EVENT == 205) then
	SaveEvent(UID, 926);
end

if (EVENT == 206) then
	MonsterCount = QuestMonsterCount(UID, 344, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 344, 1408, NPC, 18, 207);
	else
		SelectMsg(UID, 4, 344, 1408, NPC, 41, 208, 27, 207);
	end
end

if (EVENT == 207) then
	ShowMap(UID, 131);
end

if (EVENT == 208) then
	RunExchange(UID,159)
	SaveEvent(UID, 925);
end

if (EVENT == 210) then -- 71 Level Troll Captain
	SaveEvent(UID, 935);
end

if (EVENT == 212) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 346, 1420, NPC, 22, 213, 23, 214);
	else
		SelectMsg(UID, 2, 346, 1420, NPC, 10, 193);
	end
end

if (EVENT == 213) then
	SaveEvent(UID, 936);
end

if (EVENT == 214) then
	SaveEvent(UID, 939);
end

if (EVENT == 215) then
	SaveEvent(UID, 938);
end

if (EVENT == 216) then
	MonsterCount = QuestMonsterCount(UID, 346, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 346, 1420, NPC, 18, 217);
	else
		SelectMsg(UID, 4, 346, 1420, NPC, 41, 218, 27, 217);
	end
end

if (EVENT == 217) then
	ShowMap(UID, 170);
end

if (EVENT == 218) then
	RunExchange(UID,161)
	SaveEvent(UID, 937);
end

if (EVENT == 220) then -- 72 Level Booro 
	SaveEvent(UID, 947);
end

if (EVENT == 222) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 351, 1434, NPC, 22, 223, 23, 224);
	else
		SelectMsg(UID, 2, 351, 1434, NPC, 10, 193);
	end
end

if (EVENT == 223) then
	SaveEvent(UID, 948);
end

if (EVENT == 224) then
	SaveEvent(UID, 951);
end

if (EVENT == 225) then
	SaveEvent(UID, 950);
end

if (EVENT == 226) then
	MonsterCount = QuestMonsterCount(UID, 351, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 351, 1427, NPC, 18, 227);
	else
		SelectMsg(UID, 4, 351, 1427, NPC, 41, 228, 27, 227);
	end
end

if (EVENT == 227) then
	ShowMap(UID, 172);
end

if (EVENT == 228) then
	RunExchange(UID,163)
	SaveEvent(UID, 949);
end

if (EVENT == 230) then -- 72 Level Dark Stone
	SaveEvent(UID, 959);
end

if (EVENT == 232) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 353, 1446, NPC, 22, 233, 23, 234);
	else
		SelectMsg(UID, 2, 353, 1446, NPC, 10, 193);
	end
end

if (EVENT == 233) then
	SaveEvent(UID, 960);
end

if (EVENT == 234) then
	SaveEvent(UID, 963);
end

if (EVENT == 235) then
	SaveEvent(UID, 962);
end

if (EVENT == 236) then
	MonsterCount = QuestMonsterCount(UID, 353, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 353, 1446, NPC, 18, 237);
	else
		SelectMsg(UID, 4, 353, 1446, NPC, 41, 238, 27, 237);
	end
end

if (EVENT == 237) then
	ShowMap(UID, 173);
end

if (EVENT == 238) then
	RunExchange(UID,165)
	SaveEvent(UID, 961);
end

if (EVENT == 240) then -- 73 Level Balog
	SaveEvent(UID, 971);
end

if (EVENT == 242) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 355, 1457, NPC, 22, 243, 23, 244);
	else
		SelectMsg(UID, 2, 355, 1457, NPC, 10, 193);
	end
end

if (EVENT == 243) then
	SaveEvent(UID, 972);
end

if (EVENT == 244) then
	SaveEvent(UID, 975);
end

if (EVENT == 245) then
	SaveEvent(UID, 974);
end

if (EVENT == 246) then
	MonsterCount = QuestMonsterCount(UID, 355, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 355, 1457, NPC, 18, 247);
	else
		SelectMsg(UID, 4, 355, 1457, NPC, 41, 248, 27, 247);
	end
end

if (EVENT == 247) then
	ShowMap(UID, 175);
end

if (EVENT == 248) then
	RunExchange(UID,167)
	SaveEvent(UID, 973);
end

if (EVENT == 1000) then 
	SaveEvent(UID, 11397);
end

if (EVENT == 1002) then
		SelectMsg(UID, 4, 546, 20061, NPC, 22, 1003, 23, 1004);
end

if (EVENT == 1003) then
	SaveEvent(UID, 11398);
end

if (EVENT == 1004) then
	SaveEvent(UID, 11401);
end

if (EVENT == 1005) then
	SaveEvent(UID, 11400);
end

if (EVENT == 1006) then
		SelectMsg(UID, 4, 546, 20061, NPC, 41, 1008);
end

if (EVENT == 1008) then
	RunExchange(UID,3033)
	SaveEvent(UID, 11399);
end

local savenum=1067
local talknum=11497
local exchangeid=1338

if (EVENT == 2412) then
MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2413, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2413) then
	SaveEvent(UID, 4506);
end

if (EVENT == 2415) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SaveEvent(UID, 4508)
	end	
end

if (EVENT == 2416) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2414, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2414)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4507)
end

---------------Spell Of Destruction-----------
----------------------------------------------
local savenum=1071
local talknum=11503
local exchangeid=1340

if (EVENT == 2432) then
MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2433, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2433) then
	SaveEvent(UID, 4526);
end

if (EVENT == 2435) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SaveEvent(UID, 4528)
	end	
end

if (EVENT == 2436) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2434, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2434)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4527)
end

local savenum=1075
local talknum=11507
local exchangeid=1342

if (EVENT == 2452) then
MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2453, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2453) then
	SaveEvent(UID, 4546);
end

if (EVENT == 2455) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4548)
	end	
end

if (EVENT == 2456) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2454, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2454)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4547)
	end
	
	
local savenum=1079
local talknum=11513
local exchangeid=1344

if (EVENT == 2472) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2473, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2473) then
	SaveEvent(UID, 4566);
end

if (EVENT == 2475) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4568)
	end	
end

if (EVENT == 2476) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2474, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2474)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4567)
end


---------------is it a human a bird-----------
----------------------------------------------

local savenum=1083
local talknum=11517
local exchangeid=1346

if (EVENT == 2492) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2493, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2493) then
	SaveEvent(UID, 4586);
end

if (EVENT == 2495) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4588)
	end	
end

if (EVENT == 2496) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2494, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2494) then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4587)
end

---------------Ambush From The Skies-----------
----------------------------------------------

local savenum=1087
local talknum=11521
local exchangeid=1348

if (EVENT == 2512) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2513, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2513) then
	SaveEvent(UID, 4606);
end

if (EVENT == 2515) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4608)
	end	
end

if (EVENT == 2516) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2514, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2514)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4607)
end


local savenum=1091
local talknum=11525
local exchangeid=1350

if (EVENT == 2532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2533, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2533) then
	SaveEvent(UID, 4626);
end

if (EVENT == 2535) then
	ITEMA  = HowmuchItem(UID, 810294000);
	if(ITEMA > 9) then
		SaveEvent(UID, 4628)
	end	
end

if (EVENT == 2536) then
	ITEMA  = HowmuchItem(UID, 810294000);
	if(ITEMA > 9) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2534, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if (EVENT == 2534)then
RunExchange(UID, exchangeid)
	SaveEvent(UID, 4627)
end

local savenum=1093
local talknum=11528
local exchangeid=1351

if (EVENT == 2542) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2543, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2543) then
	SaveEvent(UID, 4636);
end

if (EVENT == 2545) then
	ITEMA  = HowmuchItem(UID, 810295000);
	if(ITEMA > 9) then
		SaveEvent(UID, 4638)
	end	
end

if (EVENT == 2546) then
ITEMA  = HowmuchItem(UID, 810295000);
	if(ITEMA > 9) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2544, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2544)then
RunExchange(UID, exchangeid)
	SaveEvent(UID,4637)
end

---------------Acolty Evidence----------
----------------------------------------------

local savenum=1095
local talknum=11532
local exchangeid=1352

if (EVENT == 2552) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2553, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2553) then
	SaveEvent(UID, 4646);
end

if (EVENT == 2555) then
	ITEMA  = HowmuchItem(UID, 810296000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4648)
	end	
end

if (EVENT == 2556) then
ITEMA  = HowmuchItem(UID, 810296000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2554, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2554)then
		RunExchange(UID, exchangeid)
	SaveEvent(UID,4647)
end

---------------Giants Bone----------
----------------------------------------------

local savenum=1097
local talknum=11536
local exchangeid=1353

if (EVENT == 2562) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2563, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2563) then
	SaveEvent(UID, 4656);
end

if (EVENT == 2565) then
	ITEMA  = HowmuchItem(UID, 810297000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4658)
	end	
end

if (EVENT == 2566) then
ITEMA  = HowmuchItem(UID, 810297000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2564, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2564)then
RunExchange(UID, exchangeid)
	SaveEvent(UID,4657)
end

---------------Skin Harder Stone----------
----------------------------------------------

local savenum=1099
local talknum=11540
local exchangeid=1354

if (EVENT == 2572) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2573, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2573) then
	SaveEvent(UID, 4666);
end

if (EVENT == 2575) then
	ITEMA  = HowmuchItem(UID, 810298000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4668)
	end	
end

if (EVENT == 2576) then
ITEMA  = HowmuchItem(UID, 810298000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2574, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2574)then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid, 1)
	else
		RunExchange(UID, exchangeid, 1)
	end
	SaveEvent(UID,4667)
end

----------------------------------------------

local savenum=1101
local talknum=11544
local exchangeid=1355

if (EVENT == 2582) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2583, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2583) then
	SaveEvent(UID, 4676);
end

if (EVENT == 2585) then
	ITEMA  = HowmuchItem(UID, 810299000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4678)
	end	
end

if (EVENT == 2586) then
ITEMA  = HowmuchItem(UID, 810299000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2584, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2584)then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid)
	else
		RunExchange(UID, exchangeid)
	end
	SaveEvent(UID,4677)
end

local savenum=1103
local talknum=11548
local exchangeid=1356

if (EVENT == 2592) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2593, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2593) then
	SaveEvent(UID, 4686);
end

if (EVENT == 2595) then
	ITEMA  = HowmuchItem(UID, 810301000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4688)
	end	
end

if (EVENT == 2596) then
ITEMA  = HowmuchItem(UID, 810301000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2594, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2594)then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid)
	else
		RunExchange(UID, exchangeid)
	end
	SaveEvent(UID,4687)
end

local savenum=1105
local talknum=11552
local exchangeid=1357

if (EVENT == 2602) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2603, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2603) then
	SaveEvent(UID, 4696);
end

if (EVENT == 2605) then
	ITEMA  = HowmuchItem(UID, 810302000);
	if(ITEMA > 0) then
		SaveEvent(UID, 4698)
	end	
end

if (EVENT == 2606) then
ITEMA  = HowmuchItem(UID, 810302000);
	if(ITEMA > 0) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2604, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2604)then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid)
	else
		RunExchange(UID, exchangeid)
	end
	SaveEvent(UID,4697)
end

local savenum=1107
local talknum=11555
local exchangeid=1358

if (EVENT == 2612) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2613, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2613) then
	SaveEvent(UID, 4706);
end

if (EVENT == 2615) then
	ITEMA  = HowmuchItem(UID, 810303000);
	if(ITEMA > 19) then
		SaveEvent(UID, 4708)
	end	
end

if (EVENT == 2616) then
ITEMA  = HowmuchItem(UID, 810303000);
	if(ITEMA > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2614, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2614)then
		Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid)
	else
		RunExchange(UID, exchangeid)
	end
	SaveEvent(UID,4707)
end

local savenum=1035
local talknum=11450
local exchangeid=1322

if (EVENT == 2252) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2253, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2253) then
	SaveEvent(UID, 5838);
end

if (EVENT == 2255) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5840)
	end	
end

if (EVENT == 2256) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2254, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2254)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5839)
end

local savenum=1039
local talknum=11456
local exchangeid=1324

if (EVENT == 2272) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2273, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2273) then
	SaveEvent(UID, 5858);
end

if (EVENT == 2275) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5860)
	end	
end

if (EVENT == 2276) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2274, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2274)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5859)
end

local savenum=1043
local talknum=11462
local exchangeid=1326

if (EVENT == 2292) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2293, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2293) then
	SaveEvent(UID, 5878);
end

if (EVENT == 2295) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5880)
	end	
end

if (EVENT == 2296) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2294, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2294)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5879)
end

local savenum=1047
local talknum=11468
local exchangeid=1328

if (EVENT == 2312) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2313, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2313) then
	SaveEvent(UID, 5898);
end

if (EVENT == 2315) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5900)
	end	
end

if (EVENT == 2316) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2314, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2314)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5899)
end

local savenum=1051
local talknum=11475
local exchangeid=1330

if (EVENT == 2332) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2333, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2333) then
	SaveEvent(UID, 5918);
end

if (EVENT == 2335) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5920)
	end	
end

if (EVENT == 2336) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2334, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2334)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5919)
end

local savenum=1055
local talknum=11482
local exchangeid=1332

if (EVENT == 2352) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2353, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2353) then
	SaveEvent(UID, 5938);
end

if (EVENT == 2355) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5940)
	end	
end

if (EVENT == 2356) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2354, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2354)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5939)
end
	
local savenum=1059
local talknum=11489
local exchangeid=1334

if (EVENT == 2372) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2373, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2373) then
	SaveEvent(UID, 5958);
end

if (EVENT == 2375) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5960)
	end	
end

if (EVENT == 2376) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2374, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2374)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5959)
end

local talknum=11493
local savenum=1063

if(EVENT == 2392) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2393, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if(EVENT == 2393) then
	SaveEvent(UID, 5978)
end

if(EVENT == 2395) then
	SaveEvent(UID, 5980)
end

if(EVENT == 2396) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, talknum, NPC, 18, 193);
	else
		SelectMsg(UID, 4, savenum, talknum, NPC, 41, 2399, 27, 193);
	end
end

if(EVENT == 2399) then
	RunExchange(UID, 1336)
	SaveEvent(UID, 5979)
end

local savenum=1069
local talknum=11501
local exchangeid=1339

if (EVENT == 2422) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2423, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2423) then
	SaveEvent(UID, 4516);
end

if (EVENT == 2425) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SaveEvent(UID, 4518)
	end	
end

if (EVENT == 2426) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2424, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2424)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4517)
end

local savenum=1073
local talknum=11505
local exchangeid=1341

if (EVENT == 2442) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2443, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2443) then
	SaveEvent(UID, 4536);
end

if (EVENT == 2445) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SaveEvent(UID, 4538)
	end	
end

if (EVENT == 2446) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2444, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2444)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4537)
end

local savenum=1077
local talknum=11510
local exchangeid=1343

if (EVENT == 2462) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2463, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2463) then
	SaveEvent(UID, 4556);
end

if (EVENT == 2465) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4558)
	end	
end

if (EVENT == 2466) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2464, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2464)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4557)
end


local savenum=1081
local talknum=11515
local exchangeid=1345

if (EVENT == 2482) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2483, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2483) then
	SaveEvent(UID, 4576);
end

if (EVENT == 2485) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4578)
	end	
end

if (EVENT == 2486) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2484, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2484)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4577)
end

local savenum=1085
local talknum=11519
local exchangeid=1347

if (EVENT == 2502) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2503, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2503) then
	SaveEvent(UID, 4596);
end

if (EVENT == 2505) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4598)
	end	
end

if (EVENT == 2506) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2504, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2504)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4597)
end

local savenum=1089
local talknum=11523
local exchangeid=1349

if (EVENT == 2522) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2523, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2523) then
	SaveEvent(UID, 4616);
end

if (EVENT == 2525) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SaveEvent(UID, 4618)
	end	
end

if (EVENT == 2526) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 29) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2524, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2524)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,4617)
end

local savenum=1037
local talknum=11454
local exchangeid=1323

if (EVENT == 2262) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2263, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2263) then
	SaveEvent(UID, 5848);
end

if (EVENT == 2265) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5850)
	end	
end

if (EVENT == 2266) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2264, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2264)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5849)
end

local savenum=1109
local talknum=11558
local exchangeid=1359

if (EVENT == 2622) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2623, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2623) then
	SaveEvent(UID, 4716);
end

if (EVENT == 2625) then
	ITEMS  = HowmuchItem(UID, 810304000);
	if(ITEMS > 19) then
		SaveEvent(UID, 4718)
	end	
end

if (EVENT == 2626) then
ITEMS  = HowmuchItem(UID, 810304000);
	if(ITEMS > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2624, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2624)then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID, exchangeid)
	else
		RunExchange(UID, exchangeid)
	end
	SaveEvent(UID,4717)
end

local savenum=1008
local talknum=8773

if(EVENT == 8542) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 8543, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if(EVENT == 8543) then
	SaveEvent(UID, 5708)
end

if(EVENT == 8546) then
	SaveEvent(UID, 5710)
end

if(EVENT == 8547) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, savenum, talknum, NPC, 18, 193);
	else
		SelectMsg(UID, 4, savenum, talknum, NPC, 41, 8549, 27, 193);
	end
end

if(EVENT == 8549) then
	RunExchange(UID, 1301)
	SaveEvent(UID, 5709)
end

local exchangeid=1303
local talknum=8687
local savenum=1010

if (EVENT == 8372) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 8373, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 8373) then
	SaveEvent(UID, 5720);
end

if (EVENT == 8376) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5722)
	end	
end

if (EVENT == 8377) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 8374, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 8374)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5721)
end

savenum				=1012
talknum				=8689
exchangeid			=1305
moncount			=40	  -- Yaratık sayısı
accept				=5732 -- Görevi al
iscomplate			=5734 -- Görevi kontrol et
complate			=5733 -- Görevi verme event
event1				=8382 -- Görev açma
event2				=8383 -- Görev kabul etme
event3				=8386 -- Görev bittimi kontrolü uzak
event4				=8387 -- Görev bittimi kontrolü npc
event5				=8388 -- Görev hediyelerini ver

if(EVENT == event1) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, event2, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if(EVENT == event2) then
	SaveEvent(UID, accept)
end

if(EVENT == event3) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount ==	moncount) then
		SaveEvent(UID, iscomplate)
	end
end

if(EVENT == event4) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount < moncount) then
		SelectMsg(UID, 2, savenum, talknum, NPC, 18, 193);
	else
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, event5, 27, 193);
	end
end

if(EVENT == event5) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount >= moncount) then
		RunExchange(UID, exchangeid)
		SaveEvent(UID, complate)
	end
end


savenum				=1014
talknum				=8691
exchangeid			=1307
moncount			=7 	  -- Yaratık sayısı
accept				=5744 -- Görevi al
iscomplate			=5746 -- Görevi kontrol et
complate			=5745 -- Görevi verme event
event1				=8392 -- Görev açma
event2				=8393 -- Görev kabul etme
event3				=8396 -- Görev bittimi kontrolü uzak
event4				=8397 -- Görev bittimi kontrolü npc
event5				=8398 -- Görev hediyelerini ver

if(EVENT == event1) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, event2, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if(EVENT == event2) then
	SaveEvent(UID, accept)
end

if(EVENT == event3) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount ==	moncount) then
		SaveEvent(UID, iscomplate)
	end
end

if(EVENT == event4) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount < moncount) then
		SelectMsg(UID, 2, savenum, talknum, NPC, 18, 193);
	else
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, event5, 27, 193);
	end
end

if(EVENT == event5) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount >= moncount) then
		RunExchange(UID, exchangeid)
		SaveEvent(UID, complate)
	end
end

savenum				=1016
talknum				=8695
exchangeid			=1309
moncount			=40 	  -- Yaratık sayısı
accept				=5756 -- Görevi al
iscomplate			=5758 -- Görevi kontrol et
complate			=5757 -- Görevi verme event
event1				=8412 -- Görev açma
event2				=8413 -- Görev kabul etme
event3				=8416 -- Görev bittimi kontrolü uzak
event4				=8417 -- Görev bittimi kontrolü npc
event5				=8418 -- Görev hediyelerini ver

if(EVENT == event1) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, event2, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end

if(EVENT == event2) then
	SaveEvent(UID, accept)
end

if(EVENT == event3) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount ==	moncount) then
		SaveEvent(UID, iscomplate)
	end
end

if(EVENT == event4) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount < moncount) then
		SelectMsg(UID, 2, savenum, talknum, NPC, 18, 193);
	else
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, event5, 27, 193);
	end
end

if(EVENT == event5) then
	MonsterCount = QuestMonsterCount(UID, savenum, 1);
	if (MonsterCount >= moncount) then
		RunExchange(UID, exchangeid)
		SaveEvent(UID, complate)
	end
end

local savenum=1041
local talknum=11460
local exchangeid=1325

if (EVENT == 2282) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2283, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2283) then
	SaveEvent(UID, 5868);
end

if (EVENT == 2285) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5870)
	end	
end

if (EVENT == 2286) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2284, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2284)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5869)
end

local savenum=1045
local talknum=11466
local exchangeid=1327

if (EVENT == 2302) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2303, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2303) then
	SaveEvent(UID, 5888);
end

if (EVENT == 2305) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SaveEvent(UID, 5890)
	end	
end

if (EVENT == 2306) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 19) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2304, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2304)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5889)
end

local savenum=1049
local talknum=11471
local exchangeid=1329

if (EVENT == 2322) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2323, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2323) then
	SaveEvent(UID, 5908);
end

if (EVENT == 2325) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5910)
	end	
end

if (EVENT == 2326) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2324, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2324)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5909)
end

local savenum=1053
local talknum=11479
local exchangeid=1331

if (EVENT == 2342) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2343, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2343) then
	SaveEvent(UID, 5928);
end

if (EVENT == 2345) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5930)
	end	
end

if (EVENT == 2346) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2344, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2344)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5929)
end

local savenum=1057
local talknum=11486
local exchangeid=1333

if (EVENT == 2362) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2363, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2363) then
	SaveEvent(UID, 5948);
end

if (EVENT == 2365) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5950)
	end	
end

if (EVENT == 2366) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2364, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2364)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5949)
end

local savenum=1061
local talknum=11491
local exchangeid=1335

if (EVENT == 2382) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2383, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2383) then
	SaveEvent(UID, 5968);
end

if (EVENT == 2385) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SaveEvent(UID, 5970)
	end	
end

if (EVENT == 2386) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 39) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2384, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2384)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5969)
end



local savenum=1065
local talknum=11495
local exchangeid=1337

if (EVENT == 2402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, talknum, NPC, 22, 2403, 23, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 193);
	end
end
	
if (EVENT == 2403) then
	SaveEvent(UID, 5988);
end

if (EVENT == 2405) then
	MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SaveEvent(UID, 5990)
	end	
end

if (EVENT == 2406) then
MonsterCount01 = QuestMonsterCount(UID, savenum, 1);
	if(MonsterCount01 > 24) then
		SelectMsg(UID, 5, savenum, talknum, NPC, 41, 2404, 27, 193);
	else
		SelectMsg(UID, 2, savenum, talknum, NPC, 10, 217);
	end
end

if (EVENT == 2404)then
	RunExchange(UID, exchangeid)
	SaveEvent(UID,5989)
end