local Ret = -1;
local NPC = 29049;

if (EVENT == 100) then
		SelectMsg(UID, 3, -1, 9464, 29049, 7176,1001,7177,1101,7178,1201);
end




if(EVENT == 1001) then 
SelectMsg(UID, 2, -1, 9465, NPC, 10,1002);
end

if(EVENT == 1002) then 
SelectMsg(UID, 2, -1, 9469, NPC, 7179,1003,7180,1004);
end

if(EVENT == 1003) then 
STAMP = HowmuchItem(UID, 508213000)
CUBE = HowmuchItem(UID, 508211000)
GOLDP = HowmuchItem(UID, 508212000)
if(STAMP > 29 and CUBE > 0 and GOLDP > 0) then
SelectMsg(UID, 5, 808, 9492, NPC,3000,1005,3005,1005,3005,1005)
else
SelectMsg(UID, 2, -1, 9492, NPC, 10,-1);
end
end


if(EVENT == 1004) then 
STAMP = HowmuchItem(UID, 508213000)
CUBE = HowmuchItem(UID, 508211000)
GOLDP = HowmuchItem(UID, 508212000)
if(STAMP > 29 and CUBE > 0 and GOLDP > 0) then
SelectMsg(UID, 5, 809, 9492, NPC,3000,1006,3005,1006,3005,1006,3005,1006,3005,1006,3005,1006)
else
SelectMsg(UID, 2, -1, 9492, NPC, 10,-1);
end
end

if(EVENT == 1005) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,1221);
GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 508213000,30, 508211000,1, 508212000,1, 0,0, 0,0);

end
end

if(EVENT == 1006) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
RunExchange(UID,1222);
GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 508213000,30, 508211000,1, 508212000,1, 0,0, 0,0);
end
end

if(EVENT == 1101) then 
	QuestStatus = SearchQuest(UID, 810)	
	if(QuestStatus == 1) then
		EVENT = 1106
		else
	QuestStatus = SearchQuest(UID, 810)	
	if(QuestStatus == 3) then
		EVENT = 1108
		else
SelectMsg(UID, 2, 810, 9471, NPC, 10,1102);
end
end
end

if(EVENT == 1102) then 
SelectMsg(UID, 4, 810, 9493, NPC,3000,1107,3005,-1);
end

if(EVENT == 1103) then 
SaveEvent(UID, 2713);
end

if(EVENT == 1107) then 
SaveEvent(UID, 2711);
end

if(EVENT == 1106) then 
SelectMsg(UID, 2, 810, 9471, NPC, 18,1109);
end

if (EVENT == 1109) then
	ShowMap(UID, 1011);
end

if(EVENT == 1108) then 
SelectMsg(UID, 4, 810, 9493, NPC,3000,1110,3005,-1);
end

if (EVENT == 1110) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	RunExchange(UID,1223)
	SaveEvent(UID, 2714);
end
end

if(EVENT == 1201) then 
ZoneChange(UID, 35, 464, 116);
end
