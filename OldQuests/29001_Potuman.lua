local Ret = 0;
local NPC = 29001;

if (EVENT == 100) then
	SelectMsg(UID, 2, -1, 43679, NPC, 7087, 101, 3005, 193);
end   

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 101) then
	ZoneChange(UID, 21, 780, 52)
end