local NPC = 20005;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 1378, NPC, 4609, 102,4262,103);
end

if (EVENT == 102) then
	NATIONALPOINT = CheckLoyalty(UID)
		if (NATIONALPOINT < 3) then
			SelectMsg(UID, 2, -1, 1378, NPC,10,-1);
		else
			UserEvent(UID,1)
			RobLoyalty(UID,3);
	end
end

if (EVENT == 103) then
	SelectMsg(UID, 10, -1, -1, NPC);
end