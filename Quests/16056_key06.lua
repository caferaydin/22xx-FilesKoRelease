local NPC = 16056;

local savenum = 29;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910055000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4320, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4321, NPC, 22, 101, 23, -1);
	end
end

if (EVENT == 104) then
	ShowMap(UID, 437);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4322, NPC, 4184, 102, 4185, 103);
end

if (EVENT == 103) then
	Check = isRoomForItem(UID, 910056000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, -1);
	else
		CycleSpawn(UID);
RunQuestExchange(UID,476)
		SaveEvent(UID, 4241); 
	end   
end

if (EVENT == 102) then
	CycleSpawn(UID);
	RobItem(UID, 910055000, 1);
	SelectMsg(UID, 2, savenum, 4323, NPC, 10, -1);
end