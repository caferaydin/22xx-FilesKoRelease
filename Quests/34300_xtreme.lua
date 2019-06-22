local UserClass;
local QuestNum;
local Ret = 0;
local NPC =14300;
local NATION = 0;

if EVENT == 100 then --Ana menu
 SelectMsg(UID, 3, -1, 90100, NPC, 27500,2300 ); 
end

--Hera
if EVENT == 2300 then
	NATION = CheckNation(UID); --Irk kontrol
	if (NATION == 1) then
	
 SelectMsg(UID, 3, -1, 90101, NPC, 37500,980); 
 else
  SelectMsg(UID, 3, -1, 90101, NPC, 37500,981); 
 end
end


--------------------------------------------------------
--[Hera Scroll ]

if (EVENT == 980) then --Karus
SLOTKONTROL = CheckExchangeSlot(UID, 1)--bos yer varmi komtrol
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	SelectMsg(UID, 3, -1, 90101, NPC, 20000,8444)
end
end

if (EVENT == 8444) then
	Loyalty = CheckLoyalty(UID)
	if (Loyalty > 9999)  then
	GiveItem(UID, 800220000, 1)
	RobLoyalty(UID, 10000)
	else
	SelectMsg(UID, 3, -1, 9919, NPC, 20001,144)
end
end


if (EVENT == 981) then--Human
SLOTKONTROL = CheckExchangeSlot(UID, 1)--bos yer varmi komtrol
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	SelectMsg(UID, 3, -1, 90101, NPC, 20000,8445)
end
end

if (EVENT == 8445) then
	Loyalty = CheckLoyalty(UID)
	if (Loyalty > 9999)  then
	GiveItem(UID, 800130000, 1)
	RobLoyalty(UID, 10000)
	else
	SelectMsg(UID, 3, -1, 9919, NPC, 20001,144)
end
end