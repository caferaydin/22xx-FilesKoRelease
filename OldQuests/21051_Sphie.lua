local Ret = 0;
local NPC = 21051;

if (EVENT == 215) then
	ITEM_COUNT1 = HowmuchItem(UID, 910044000); 
	if (ITEM_COUNT1 < 1) then
		SelectMsg(UID, 2, 178, 1183, NPC, 18, 191);
	else
		SelectMsg(UID, 4, 178, 1184, NPC, 22, 218, 23, 193);
	end
end

if (EVENT == 191) then
	ShowMap(UID, 45);
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 218) then
	Check = isRoomForItem(UID, 910041000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
        RunExchange(UID,89)  
		SaveEvent(UID, 474);
		SelectMsg(UID, 2, 178, 1185, NPC, 10, 193);
	end
end