local Ret = 0;
local NPC = 31506;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 9105, NPC,40658,101,40659,151,40663,201);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, -1, 9106, NPC,40658,102,4005,-1);
end

if (EVENT == 102) then
	ITEMA = HowmuchItem(UID, 914010000);
	if (ITEMA < 5) then
		SelectMsg(UID, 2, -1, 44616, NPC, 18, 103);
	else
		SelectMsg(UID, 2, -1, 40632, NPC, 8518, 104, 3005, -1);
	end
end

if (EVENT == 103) then
	ShowMap(UID, 9);
end

if (EVENT == 151) then
	SelectMsg(UID, 2, -1, 44618, NPC,8785,103,7477,152);
end

if (EVENT == 152) then
	ITEMA = HowmuchItem(UID, 914010000);
	if (ITEMA < 5) then
		SelectMsg(UID, 2, -1, 44616, NPC, 18, 103);
	else
		SelectMsg(UID, 4, 1474, 40632, NPC, 8518, 153, 3005, -1);
	end
end

if (EVENT == 153) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	ITEMA = HowmuchItem(UID, 914010000);
	if (ITEMA < 5) then
		SelectMsg(UID, 2, -1, 44616, NPC, 18, 103);
	else
	Roll = RollDice(UID, 6) 
	if Roll == 0 then
	GiveItemLua(UID,381005000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
    end
	if Roll == 1 then
	GiveItemLua(UID,700036018,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
    end
	if Roll == 2 then
	GiveItemLua(UID,379194000,5,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
    end
	if Roll == 3 then
	GiveItemLua(UID,379195000,5,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
    end
	if Roll == 4 then
	GiveItemLua(UID,379196000,5,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
	end
	if Roll == 5 then
	GiveItemLua(UID,379197000,5,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
    end
		GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 914010000,5, 0,0, 0,0, 0,0, 0,0);
		SelectMsg(UID, 2, -1, 9110, NPC, 10, -1);
	end   
end
end

if (EVENT == 201) then
	SelectMsg(UID, 2, -1, 44618, NPC,8785,103,7477,202);
end

if (EVENT == 202) then
	ITEMA = HowmuchItem(UID, 914010000);
	if (ITEMA < 5) then
		SelectMsg(UID, 2, -1, 44616, NPC, 18, 103);
	else
		SelectMsg(UID, 2, 1474, 40632, NPC, 8518, 203);
	end
end

if (EVENT == 203) then
GiveItemLua(UID,528005647,1,7, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 914010000,5, 0,0, 0,0, 0,0, 0,0);
SelectMsg(UID, 2, -1, 9110, NPC, 10, -1);
end