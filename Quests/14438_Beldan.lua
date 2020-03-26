local NPC = 14438;

if (EVENT == 3000) then
	NpcMsg(UID, 810, NPC)
end

if (EVENT == 3010) then
	SelectMsg(UID, 2, -1, 807, NPC, 67, 3011, 68, -1);
end

if (EVENT == 3011) then
	Level = CheckLevel(UID);
	if (Level > 69) then
		SelectMsg(UID, 2, -1, 808, NPC, 2002, 3012);
	else
		SelectMsg(UID, 2, -1, 810, NPC, 10, -1);
	end
end

if (EVENT == 3012) then
	SelectMsg(UID, 2, -1, 809, NPC, 65, 3013);
end

if (EVENT == 3013) then
	JURADTIME = CheckJuraidMountainTime(UID)
	if (JURADTIME == 10) then
		RegisterEvent(UID, 3);
		SaveEvent(UID, 695);
	elseif (JURADTIME == 18) then
		RegisterEvent(UID, 3);
		SaveEvent(UID, 695);
	elseif (JURADTIME == 22) then
		RegisterEvent(UID, 3);
		SaveEvent(UID, 695);
	else
		SelectMsg(UID, 2, -1, 804, NPC, 10, -1);
	end
end