if (EVENT == 100) then
	QuestStatus = SearchQuest(UID, 1275)	
	if(QuestStatus == 1) then
		EVENT = 101
		end
		end
		
		
if (EVENT == 101) then		
SelectMsg(UID, 2, -1, 43914, NPC, 40348, 102,40349,-1);
end

if (EVENT == 102) then		
SelectMsg(UID, 2, -1, 44079, NPC, 65, 103);
end


if (EVENT == 103) then
SLOTKONTROL = CheckGiveSlot(UID, 1)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else		
SelectMsg(UID, 2, -1, 44081, NPC, 10, -1);
GiveItemLua(UID,900683000,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0, 0,0, 0,0, 0,0, 0,0);
end
end