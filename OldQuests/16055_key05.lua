local Ret = 0;
local NPC = 16055;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 28;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910054000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4316, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4317, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 104) then
	ShowMap(UID, 433);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4318, NPC, 4182, 102, 4183, 103);
end

if (EVENT == 102) then
	Check = isRoomForItem(UID, 910055000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		RunExchange(UID,475)
		SaveEvent(UID, 4240); 
	end   
end

if (EVENT == 103) then
	--ChangePosition(UID)
	RobItem(UID, 910054000, 1)
	SelectMsg(UID, 2, savenum, 4319, NPC, 10, 168);
end