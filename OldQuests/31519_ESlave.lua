local Ret = 0;
local NPC = 31519;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		SelectMsg(UID, 2, -1, 4703, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then 
		NpcMsg(UID, 8060, NPC)  --8060
	else
		EVENT = QuestNum
	end
end


if(EVENT == 1002)then 
	SelectMsg(UID, 2, 539, 20318, NPC, 10, 1004);
end

if(EVENT == 1003)then 
	SelectMsg(UID, 2, 539, 20318, NPC, 10, 1004);
end

if(EVENT == 1004)then 
	SelectMsg(UID, 4, 539, 20319, NPC,22, 1005, 27, -1); 
	SaveEvent(UID, 11316);
end

if(EVENT == 1005)then 
	SaveEvent(UID, 11315);
	SaveEvent(UID, 11326);
end


if (EVENT == 1101)then
	SelectMsg(UID, 4, 540, 20049, NPC, 22, 1102,23,-1);
end

if(EVENT == 1102)then 
	SaveEvent(UID, 11326);
end

if(EVENT == 1106)then 
	SaveEvent(UID, 11328);
end

if (EVENT == 1103) then
	ITEM1_COUNT = HowmuchItem(UID, 508106000);   
	if (ITEM1_COUNT < 5) then
		SelectMsg(UID, 2, 540, 20049, NPC, 18,1104);
	else
		SelectMsg(UID, 4, 540, 20049, NPC, 22, 1107, 27, -1); 
	end
end

if (EVENT == 1104 ) then
	ShowMap(UID, 370)
end

if (EVENT == 1107)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,3027)
	SaveEvent(UID,11327)
	SaveEvent(UID,11338)
end
end