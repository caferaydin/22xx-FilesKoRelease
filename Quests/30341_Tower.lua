local NPC = 30341;

if (EVENT == 100) then
	Cast = CastSkill(UID, 610095);
		if (Cast) then
			Cast = CastSkill(UID, 610095);
		else
			SelectMsg(UID, 2, -1, 8970, NPC, 10, -1);
	end	
end