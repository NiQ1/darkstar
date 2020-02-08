-----------------------------------
-- Area: Southern San d'Oria
--   NPC: Artisan Moogle
-- Type: Simple NPC
--
-----------------------------------

require("scripts/globals/mogsack")

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
	dsp.mogsack.artisanMoogleOnTrigger(player, 960)
end

function onEventUpdate(player,csid,option)
	dsp.mogsack.artisanMoogleOnEventUpdate(player, csid, option)
end

function onEventFinish(player,csid,option)
	dsp.mogsack.artisanMoogleOnEventFinish(player, csid, option)
end
