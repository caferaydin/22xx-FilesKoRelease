local NPC = 25263;

if (EVENT == 100) then;
	SelectMsg(UID, 2, -1, 44362, NPC, 65, 101, 13, -1);
end

if(EVENT == 101)then
	ZoneChange(UID, 95, 304, 271);
	DrakiRiftChange(UID, 4, 1);
	DrakiTowerNpcOut(UID);
end