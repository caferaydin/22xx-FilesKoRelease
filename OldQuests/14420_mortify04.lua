local Ret = 0;
local NPC = 14420;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 41;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910130000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4562, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4563, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4564, NPC, 4218, 102, 4219, 103);
end

if (EVENT == 103) then
	RunExchange(UID, 485);		 
	SaveEvent(UID, 4300);
end

if (EVENT == 102) then
	RobItem(UID, 910130000, 1);
	SelectMsg(UID, 2, savenum, 4565, NPC, 10, 168);
end