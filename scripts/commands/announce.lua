---------------------------------------------------------------------------------------------------
-- func: announce
-- desc: Sends a system message to everyone
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!announce {message}");
end;

function onTrigger(player, message)

    -- sanity
    if (message == nil) then
        error(player, "You must provide a message.");
		return;
	end

    player:PrintToArea(message, 7);
end