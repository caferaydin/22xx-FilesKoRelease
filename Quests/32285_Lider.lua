local NPC = 32285;

if (EVENT == 100) then
	Level = CheckLevel(UID);
	if (Level > 69) then
		SelectMsg(UID, 2, -1, 906, NPC, 4076, 102, 4154, -1);
	else
		SelectMsg(UID, 2, -1, 910, NPC, 10, 101);
	end	
end

if (EVENT == 102) then
	CheckLider = isPartyLeader(UID);
	if (CheckLider) then
		ZoneChangeParty(UID, 75, 55, 1974)
	else
		ZoneChange(UID, 75, 55, 1974)
	end	
end