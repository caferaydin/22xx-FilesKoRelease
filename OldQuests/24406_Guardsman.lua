local Ret = 0;
local NPC = 24406;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		SelectMsg(UID, 2, -1, 1312, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 1313, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 1000) then -- 47 Level Hornet Premium
	SelectMsg(UID, 2, 427, 8157, NPC, 3003, 1001);
end

if (EVENT == 1001) then
	SaveEvent(UID, 2157);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 427, 8157, NPC, 10, 1010);
	else
		SelectMsg(UID, 2, 427, 8253, NPC, 10, 193);
	end
end

if (EVENT == 1010) then
	SelectMsg(UID, 4, 427, 8236, NPC, 22, 1003, 23, -1);
end

if (EVENT == 1003) then
	SaveEvent(UID, 2158);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2161);
end

if (EVENT == 1005) then
	SelectMsg(UID, 2, 427, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2160);
end

if (EVENT == 1007) then
	MonsterCount = QuestMonsterCount(UID, 427, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 427, 8417, NPC, 18, 1008);
	else
		SelectMsg(UID, 4, 427, 8237, NPC, 10, 1009, 27, 193);
	end
end

if (EVENT == 1008) then
	ShowMap(UID, 545);
end

if (EVENT == 1009) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1202)
		SaveEvent(UID, 2159);
	else
		RunExchange(UID,1202)
		SaveEvent(UID, 2159);
	end
end

if (EVENT == 8050) then -- 47 Level Hornet
	SelectMsg(UID, 2, 203, 8234, NPC, 3003, 8051);
end

if (EVENT == 8051) then
	SaveEvent(UID, 8973);
end

if (EVENT == 8052) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 203, 8235, NPC, 10, 8060);
	else
		SelectMsg(UID, 2, 203, 8253, NPC, 10, 193);
	end
end

if (EVENT == 8060) then
	SelectMsg(UID, 4, 203, 8236, NPC, 22, 8053, 23, -1);
end

if (EVENT == 8053) then
	SaveEvent(UID, 8974);
end

if (EVENT == 8054) then
	SaveEvent(UID, 8977);
end

if (EVENT == 8055) then
	SelectMsg(UID, 2, 203, 8416, NPC, 3007, 193);
	SaveEvent(UID, 8976);
end

if (EVENT == 8057) then
	MonsterCount = QuestMonsterCount(UID, 203, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 203, 8417, NPC, 18, 8058);
	else
		SelectMsg(UID, 4, 203, 8237, NPC, 41, 8059, 27, 193);
	end
end

if (EVENT == 8058) then
	ShowMap(UID, 545);
end

if (EVENT == 8059) then
RunExchange(UID,951)
	SaveEvent(UID, 8975);
end

if (EVENT == 9510) then -- 48 Level Gray Oz
	SelectMsg(UID, 2, 210, 8234, NPC, 3003, 9511);
end

if (EVENT == 9511) then
	SaveEvent(UID, 9639);
end

if (EVENT == 9512) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 210, 8768, NPC, 10, 9515);
	else
		SelectMsg(UID, 2, 210, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9515) then
	SelectMsg(UID, 4, 210, 8768, NPC, 22, 9513, 23, -1);
end

if (EVENT == 9513) then
Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then --Warrior
	SaveEvent(UID, 9655);
	elseif (Class == 2 or Class == 7 or Class == 8) then --Rogue
	SaveEvent(UID, 9640);
	elseif (Class == 3 or Class == 9 or Class == 10) then --Mage
	SaveEvent(UID, 9645);
	elseif (Class == 4 or Class == 11 or Class == 12) then --Priest
	SaveEvent(UID, 9650);
end
end

if (EVENT == 9520) then
Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then --Warrior
	SaveEvent(UID, 9657);
	SelectMsg(UID, 2, -1, 8418, NPC, 3007, 193);
	elseif (Class == 2 or Class == 7 or Class == 8) then --Rogue
	SaveEvent(UID, 9642);
	SelectMsg(UID, 2, -1, 8418, NPC, 3007, 193);
	elseif (Class == 3 or Class == 9 or Class == 10) then --Mage
	SaveEvent(UID, 9647);
	SelectMsg(UID, 2, -1, 8418, NPC, 3007, 193);
	elseif (Class == 4 or Class == 11 or Class == 12) then --Priest
	SaveEvent(UID, 9652);
	SelectMsg(UID, 2, -1, 8418, NPC, 3007, 193);
end
end

if (EVENT == 9516) then
	MonsterCount = QuestMonsterCount(UID, 210, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 210, 8417, NPC, 18, 9517);
	else
		SelectMsg(UID, 5, 210, 8237, NPC, 41, 9518, 27, 193);
	end
end

if (EVENT == 9517) then
	ShowMap(UID, 508);
end

if (EVENT == 9518) then
Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then --Warrior
	RunExchange(UID,1138) 
	SaveEvent(UID, 9641);
	elseif (Class == 2 or Class == 7 or Class == 8) then --Rogue
	RunExchange(UID,1139) 
	SaveEvent(UID, 9646);
	elseif (Class == 3 or Class == 9 or Class == 10) then --Mage
	RunExchange(UID,1140) 
	SaveEvent(UID, 9651);
	elseif (Class == 4 or Class == 11 or Class == 12) then --Priest
	RunExchange(UID,1141) 
	SaveEvent(UID, 9656);
end
end

if (EVENT == 200) then -- 52 Level Haunga Warrior Premium
	SelectMsg(UID, 2, 461, 8165, NPC, 3003, 201);
end

if (EVENT == 201) then
	SaveEvent(UID, 2217);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 461, 8158, NPC, 10, 210);
	else
		SelectMsg(UID, 2, 461, 8253, NPC, 10, 193);
	end
end

if (EVENT == 210) then
	SelectMsg(UID, 4, 461, 8236, NPC, 22, 203, 23, -1);
end

if (EVENT == 203) then
	SaveEvent(UID, 2218);
end

if (EVENT == 204) then
	SaveEvent(UID, 2221);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, 461, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2220);
end

if (EVENT == 207) then
	MonsterCount  = QuestMonsterCount(UID, 461, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 461, 8417, NPC, 18, 208);
	else
		SelectMsg(UID, 4, 461, 8237, NPC, 41, 209, 27, 193);
	end
end

if (EVENT == 208) then
	ShowMap(UID, 58);
end

if (EVENT == 209) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,1940)
		SaveEvent(UID, 2219);
	else
		RunExchange(UID,1940)
		SaveEvent(UID, 2219);
	end
end

if (EVENT == 8450) then -- 52 Level Haunga Warrior
	SelectMsg(UID, 2, 225, 8238, NPC, 3003, 8451);
end

if (EVENT == 8451) then
	SaveEvent(UID, 9033);
end

if (EVENT == 8452) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 225, 8239, NPC, 10, 8460);
	else
		SelectMsg(UID, 2, 225, 8253, NPC, 10, 193);
	end
end

if (EVENT == 8460) then
	SelectMsg(UID, 4, 225, 8240, NPC, 22, 8453, 23, -1);
end

if (EVENT == 8453) then
	SaveEvent(UID, 9034);
end

if (EVENT == 8454) then
	SaveEvent(UID, 9037);
end

if (EVENT == 8455) then
	SelectMsg(UID, 2, 225, 8416, NPC, 3014, 193);
	SaveEvent(UID, 9036);
end

if (EVENT == 8457) then
	MonsterCount = QuestMonsterCount(UID, 225, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 225, 8417, NPC, 18, 8458);
	else
		SelectMsg(UID, 5, 225, 8241, NPC, 41, 8459, 27, 193);
	end
end

if (EVENT == 8458) then
	ShowMap(UID, 58);
end

if (EVENT == 8459) then
RunExchange(UID,941) 
SaveEvent(UID, 9035);
end

if (EVENT == 300) then -- 57 Level Phantom Premium
	SelectMsg(UID, 2, 477, 8678, NPC, 3003, 301);
end

if (EVENT == 301) then
	SaveEvent(UID, 2313);
end

if (EVENT == 302) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 477, 8157, NPC, 10, 310);
	else
		SelectMsg(UID, 2, 477, 8253, NPC, 10, 193);
	end
end

if (EVENT == 310) then
	SelectMsg(UID, 4, 477, 8236, NPC, 22, 303, 23, -1);
end

if (EVENT == 303) then
	SaveEvent(UID, 2314);
end

if (EVENT == 304) then
	SaveEvent(UID, 2317);
end

if (EVENT == 305) then
	SelectMsg(UID, 2, 477, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2316);
end

if (EVENT == 307) then
	MonsterCount = QuestMonsterCount(UID, 477, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 477, 8417, NPC, 18, 308);
	else
		SelectMsg(UID, 4, 477, 8237, NPC, 41, 309, 27, 193);
	end
end

if (EVENT == 308) then
	ShowMap(UID, 703);
end

if (EVENT == 309) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,11090)
		SaveEvent(UID, 2315);
	else
		RunExchange(UID,11090)
		SaveEvent(UID, 2315);
	end
end

if (EVENT == 400) then -- 58 Level Groom Hound Premium
	SelectMsg(UID, 2, 480, 8682, NPC, 3003, 401);
end

if (EVENT == 401) then
	SaveEvent(UID, 2337);
end

if (EVENT == 402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 480, 8157, NPC, 10, 410);
	else
		SelectMsg(UID, 2, 480, 8253, NPC, 10, 193);
	end
end

if (EVENT == 410) then
	SelectMsg(UID, 4, 480, 8236, NPC, 22, 403, 23, -1);
end

if (EVENT == 403) then
	SaveEvent(UID, 2338);
end

if (EVENT == 404) then
	SaveEvent(UID, 2341);
end

if (EVENT == 405) then
	SelectMsg(UID, 2, 480, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2340);
end

if (EVENT == 407) then
	MonsterCount = QuestMonsterCount(UID, 480, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 480, 8417, NPC, 18, 408);
	else
		SelectMsg(UID, 4, 480, 8237, NPC, 41, 409, 27, 193);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 601);
end

if (EVENT == 409) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		RunExchange(UID,11093)
		SaveEvent(UID, 2339);
	else
		RunExchange(UID,11093)
		SaveEvent(UID, 2339);
	end
end


if (EVENT == 9330) then -- 57 Level Phantom
	SelectMsg(UID, 2, 447, 8234, NPC, 3003, 9331);
end

if (EVENT == 9331) then
	SaveEvent(UID, 9351);
end

if (EVENT == 9332) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 447, 8678, NPC, 10, 9340);
	else
		SelectMsg(UID, 2, 447, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9340) then
	SelectMsg(UID, 4, 447, 8678, NPC, 22, 9333, 23, -1);
end

if (EVENT == 9333) then
	SaveEvent(UID, 9352);
end

if (EVENT == 9334) then
	SaveEvent(UID, 9355);
end

if (EVENT == 9335) then
	SaveEvent(UID, 9354);
	SelectMsg(UID, 2, 447, 8416, NPC, 3014, 193);
end

if (EVENT == 9337) then
	MonsterCount = QuestMonsterCount(UID, 447, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 447, 8575, NPC, 10, 9338);
	else
		SelectMsg(UID, 4, 447, 8581, NPC, 41, 9339, 27, 193);
	end
end

if (EVENT == 9338) then
	ShowMap(UID, 702);
end

if (EVENT == 9339) then
RunExchange(UID,1090)
	SaveEvent(UID, 9353);
end

if (EVENT == 9350) then -- 58 Level Groom Hound
	SelectMsg(UID, 2, 272, 8234, NPC, 3003, 9351);
end

if (EVENT == 9351) then
	SaveEvent(UID, 9375);
end

if (EVENT == 9352) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 272, 8682, NPC, 10, 9360);
	else
		SelectMsg(UID, 2, 272, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9360) then
	SelectMsg(UID, 4, 272, 8236, NPC, 22, 9353, 23, -1);
end

if (EVENT == 9353) then
	SaveEvent(UID, 9376);
end

if (EVENT == 9354) then
	SaveEvent(UID, 9379);
end

if (EVENT == 9355) then
	SaveEvent(UID, 9378);
	SelectMsg(UID, 2, 272, 8416, NPC, 3014, 193);
end

if (EVENT == 9357) then
	MonsterCount = QuestMonsterCount(UID, 272, 1);
	if (MonsterCount < 0) then
		SelectMsg(UID, 2, 272, 8557, NPC, 18, 9358);
	else
		SelectMsg(UID, 4, 272, 8569, NPC, 41, 9359, 27, 193);
	end
end

if (EVENT == 9358) then
	ShowMap(UID, 601);
end

if (EVENT == 9359) then
RunExchange(UID,1093)
	SaveEvent(UID, 9377);
end
