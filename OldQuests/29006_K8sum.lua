if (EVENT == 100)then
	QuestStatus = SearchQuest(UID, 727)	 
	if(QuestStatus == 1) then
		EVENT = 101
		else
SelectMsg(UID, 2, -1, 22279, NPC,10,-1);
end
end

if (EVENT == 101)then
SelectMsg(UID, 2, -1, 22279, NPC, 3000,102,3005,-1);
end


if(EVENT == 102) then
ZONE = GetZoneID(UID);
if(ZONE == 1) then
SpawnEventSystem(UID,9109,0,1,1095,0,483);
ShowEffect(UID, 300391)
RobItem(UID, 900248000, 1)
elseif(ZONE == 5) then
SpawnEventSystem(UID,9109,0,5,1095,0,483);
ShowEffect(UID, 300391)
RobItem(UID, 900248000, 1)
elseif(ZONE == 6) then
SpawnEventSystem(UID,9109,0,6,1095,0,483);
ShowEffect(UID, 300391)
RobItem(UID, 900248000, 1)
end
end