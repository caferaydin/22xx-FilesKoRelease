local NPC = 31524;
local Ret = 0;

if (EVENT == 100) then
	SelectMsg(UID, 2, -1, 21215, NPC, 7494, 102, 8351, 103);
end

if (EVENT == 101) then
	Ret = 1;
end
--Dissamble!
if (EVENT == 102) then
	SelectMsg(UID, 27, -1, -1, NPC);
end
--SideTracked
if (EVENT == 103) then
	SelectMsg(UID, 2, 616, 21215, NPC, 10, 101);
end