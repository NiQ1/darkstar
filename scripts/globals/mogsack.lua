-----------------------------------
-- Mog Sack function
-- (Artisan Moogle)
-- NOTE: This content is AGPLv3 licensed.
-----------------------------------

require("scripts/globals/status")
require("scripts/globals/zone")
require("scripts/globals/settings") 

-- Event parameters:
-- #1-#3 unknown
-- #4 - Size of current sack+1 (e.g. if sack has size of 30 this will be 31), if no sack at all then zero
-- #5-#6 unknown
-- #7 - Menu options - 10=first time speaking to moogle

dsp = dsp or {}
dsp.mogsack = dsp.mogsack or {}

local sackunknown1 = 1074167552
local sackunknown2 = 6144
local sackunknown3 = 5256801

dsp.mogsack.artisanMoogleOnTrigger = function(player, npc, csid)
	local sacksize
	local menuoptions
	local param3
	-- Container 6 == Mog Sack
	sacksize = player:getContainerSize(6)
	-- We don't have a special flag indicating whether the player has a sack or not but
	-- we can safely assume that there is no such thing as "zero sized sack" so storage
	-- size of zero indicates no sack.
	if sacksize > 0 then
		sacksize = sacksize + 1
		-- Allow the expansion menu options
		menuoptions = 0
	else
		-- Don't allow expansion menu options (player doesn't have a sack yet)
		menuoptions = 10
	end
	if player:getLocalVar("talked_to_artisan") == 1 then
		param3 = 0
	else
		param3 = 5
		player:setLocalVar("talked_to_artisan", 1)
	end
    player:startEventNpc(csid, sackunknown1, 0, param3, sacksize, sackunknown2, sackunknown3, menuoptions, 0)
end

dsp.mogsack.artisanMoogleOnEventUpdate = function(player, csid, option)
	local sacksize
	local menuoptions
	local inventorysize
	local gil
	local expansionresult
	local justexpanded
	sacksize = player:getContainerSize(6)
	inventorysize = player:getContainerSize(0)
	gil = player:getGil()
	if sacksize > 0 then
		sacksize = sacksize + 1
		menuoptions = 0
	else
		-- Don't allow expansion menu options (player doesn't have a sack yet)
		menuoptions = 10
	end
	if option == 4 then
		-- Happens right after the menu pops up
		player:updateEvent(0, 0, gil, sacksize, sackunknown2, sackunknown3, 0, 0)
	elseif option == 3 then
		-- Do nothing
		player:updateEvent(0, 0, 0, sacksize, sackunknown2, sackunknown3, 0, 0)
	elseif option == 1 then
		-- Player buys a mog sack, set to current inventory size
		if gil >= 9980 then
			sacksize = inventorysize + 1
			player:delGil(9980)
			gil = gil - 9980
			player:changeContainerSize(6,inventorysize)
			player:PrintToPlayer("Sack successfully purchased")
		end
		player:updateEvent(0, 0, 0, sacksize, sackunknown2, sackunknown3, 0, 0)
	elseif option ==2 then
		justexpanded = 0
		-- Player expands mog sack
		if sacksize == 0 then
			-- Player doesn't have a gobbiebag (TODO: Check if this can occur without packet injection, may be considered cheating)
			expansionresult = 0
		elseif (sacksize-1) < inventorysize then
			-- Expand sack
			justexpanded = inventorysize-sacksize+1
			player:changeContainerSize(6,justexpanded)
			sacksize = inventorysize + 1
			expansionresult = 2
		elseif inventorysize < 80 then
			-- Sack cannot be expanded now but can be once inventory is expanded (=do gobbiebag quests)
			expansionresult = 1
		else
			-- Expanded all the way
			expansionresult = 0
		end
		player:updateEvent(justexpanded/5+1, 0, 0, sacksize, sackunknown2, sackunknown3, expansionresult, 0)
	elseif option == 99 then
		-- Happens once per earth day, gives the player a free instant warp scroll
		-- Seems that client doesn't send this on DSP, as a workaround implementing this on OnEventFinish
		player:updateEvent(sackunknown1, 0, 0, sacksize, sackunknown2, sackunknown3, menuoptions, 0)
	end
end

dsp.mogsack.artisanMoogleOnEventFinish = function(player, csid, option)
	local ID = zones[player:getZoneID()]
	if ARTISAN_GIVE_WARP_SCROLL == 1 then
		lastwarp = player:getCharVar("Artisan_Last_Scroll")
		timenow = os.time()
		if timenow - lastwarp > 86400 then
			player:setCharVar("Artisan_Last_Scroll", timenow)
			player:addItem( 4181 );
			player:messageSpecial( ID.text.ITEM_OBTAINED, 4181 );
		end
	end
end
