local NPC = 24411;
local Ret = 0;

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 217) then
	ITEM = HowmuchItem(UID, 389620000);
	if (ITEM < 1) then
		SelectMsg(UID, 2, -1, 1269, NPC, 18, 218);
	else
		SelectMsg(UID, 2, -1, 1270, NPC, 58, 221, 4005, 193);
	end
end

if (EVENT == 218) then
	ShowMap(UID, 76);
end

if (EVENT == 221) then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
		--RobItem(UID, 389620000, 1)
		ExpChange(UID, 5000)
		--SaveEvent(UID, 612);
		GiveItemLua(UID,910087000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
		SelectMsg(UID, 2, 66, 1272, NPC, 56, 193);
	end
    end