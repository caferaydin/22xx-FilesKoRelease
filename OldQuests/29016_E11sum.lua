if (EVENT == 100)then
	QuestStatus = SearchQuest(UID, 710)	 
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
if(ZONE == 2) then
SpawnEventSystem(UID,9159,0,2,1621,0,979);
ShowEffect(UID, 300391)
RobItem(UID, 900230000, 1)
elseif(ZONE == 7) then
SpawnEventSystem(UID,9159,0,7,1621,0,979);
ShowEffect(UID, 300391)
RobItem(UID, 900230000, 1)
elseif(ZONE == 8) then
SpawnEventSystem(UID,9159,0,8,1621,0,979);
ShowEffect(UID, 300391)
RobItem(UID, 900230000, 1)
end
end