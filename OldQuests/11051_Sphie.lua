local Ret = 0;
local NPC = 11051;

if (EVENT == 215) then
	ITEM = HowmuchItem(UID, 910044000); 
	if (ITEM < 1) then
		SelectMsg(UID, 2, 179, 677, NPC, 18, 191);
	else
		SelectMsg(UID, 4, 179, 678, NPC, 22, 218, 23, 193);
	end
end

if (EVENT == 191) then
	ShowMap(UID, 39);
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 218) then
	Check = isRoomForItem(UID, 910041000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
        RunExchange(UID,89,2) 
		SaveEvent(UID, 446);
		SelectMsg(UID, 2, 179, 676, NPC, 10, 193);
	end
end