local NPC = 16094;
local Ret = 0;

if (EVENT == 500) then
	SelectMsg(UID, 2, -1, 959, NPC, 4071, 501, 4072, 502);
end

if (EVENT == 501) then
	Level = CheckLevel(UID);
	NATION = CheckNation(UID);
	if (Level < 30) then
		if (NATION == 1) then
			ZoneChange(UID, 1, 441, 1625)
		else
			ZoneChange(UID, 2, 1595, 412)
		end
	else
		if (NATION == 1) then
			ZoneChange(UID, 71, 1014, 1020)
		else
			ZoneChange(UID, 71, 1026, 984)
		end
	end
end

if (EVENT == 502) then
	Ret = 1;
end