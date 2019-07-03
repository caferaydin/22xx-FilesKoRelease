local Ret = 0;
local NPC = 16095;

if (EVENT == 100) then
	SelectMsg(UID, 2, -1, 4431, NPC, 10, 502)
end

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 425;

if (EVENT == 502) then
	ITEMA = HowmuchItem(UID, 389190000);
	if (ITEMA > 0) then
		EVENT = 505
	else
		SelectMsg(UID, 2, savenum, 4432, NPC, 4004, 503, 4005, 168);
	end
end

if (EVENT == 503) then
SlotControl = CheckGiveSlot(UID,1)
if (SlotControl == true) then
	SaveEvent(UID, 4245);
	ITEM_COUNTA = HowmuchItem(UID, 810943000);
	ITEM_COUNTB = HowmuchItem(UID, 810944000);
	ITEM_COUNTC = HowmuchItem(UID, 810948000);
	ITEM_COUNTD = HowmuchItem(UID, 810949000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0 and ITEM_COUNTD > 0) then
		GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 810943000,1, 810944000,1, 810948000,1, 810949000,1, 0,0);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4433, NPC, 18, 600);
		elseif (ITEM_COUNTB < 1) then 
			SelectMsg(UID, 2, savenum, 4434, NPC, 18, 601);
		elseif (ITEM_COUNTC < 1) then 
			SelectMsg(UID, 2, savenum, 4435, NPC, 18, 602);
		elseif (ITEM_COUNTD < 1) then
			SelectMsg(UID, 2, savenum, 4436, NPC, 18, 603);
		end
	end
end
end

if (EVENT == 600) then
	ShowMap(UID, 441);
end

if (EVENT == 601) then
	ShowMap(UID, 442);
end

if (EVENT == 602) then
	ShowMap(UID, 443);
end

if (EVENT == 603) then
	ShowMap(UID, 444);
end

local savenum = 424;

if (EVENT == 505) then
	SelectMsg(UID, 2, savenum, 4441, NPC, 4188, 506, 4005, 168);
end

if (EVENT == 506) then
SlotControl = CheckGiveSlot(UID,1)
if (SlotControl == true) then
	SaveEvent(UID, 4246);
	ITEM_COUNTA = HowmuchItem(UID, 389190000);
	ITEM_COUNTB = HowmuchItem(UID, 810950000);
	ITEM_COUNTC = HowmuchItem(UID, 810951000);
	ITEM_COUNTD = HowmuchItem(UID, 810952000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0 and ITEM_COUNTD > 0) then
		GiveItemLua(UID,0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 389190000,1, 810950000,1, 810951000,1, 810952000,1, 0,0);
		ZoneChangeParty(UID, 31, 940, 186)
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4437, NPC, 18, 604);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 4438, NPC, 18, 605);
		elseif (ITEM_COUNTC < 1) then 
			SelectMsg(UID, 2, savenum, 4439, NPC, 18, 606);
		elseif (ITEM_COUNTD < 1) then
			SelectMsg(UID, 2, savenum, 4440, NPC, 18, 607);
		end
	end
end
end

if (EVENT == 604) then
	ShowMap(UID, 440);
end

if (EVENT == 605) then
	ShowMap(UID, 445);
end

if (EVENT == 606) then
	ShowMap(UID, 446);
end

if (EVENT == 607) then
	ShowMap(UID, 447);
end