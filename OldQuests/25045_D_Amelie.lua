if(EVENT == 100) then
		SelectMsg(UID, 2, -1, 43788, NPC, 40216, 101);
end

if(EVENT == 101) then
		SelectMsg(UID, 2, -1, 43789, NPC, 40217, 102);
end

if(EVENT == 102) then
ZONE = GetZoneID(UID);
if(ZONE == 21) then
SpawnEventSystem(UID,9662,0,21,310,0,940);
elseif(ZONE == 22) then
SpawnEventSystem(UID,9662,0,22,310,0,940);
elseif(ZONE == 23) then
SpawnEventSystem(UID,9662,0,23,310,0,940);
elseif(ZONE == 24) then
SpawnEventSystem(UID,9662,0,24,310,0,940);
elseif(ZONE == 25) then
SpawnEventSystem(UID,9662,0,25,310,0,940);
end
end