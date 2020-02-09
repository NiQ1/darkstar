---------------------------------------------------------------------------------------------------
-- func: setlocalvar
-- desc: Set the value of a local variable
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "si"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!getlocalvar <var name> <var value>");
end;

function onTrigger(player, varname, varval)
    -- validate var name
    if (varname == nil or varname == "") then
        error(player, "Invalid variable name.");
        return;
    end
	if (varval == nil) then
		error(player, "Invalid variable value.");
		return;
	end

	player:setLocalVar(varname, varval)
    player:PrintToPlayer(string.format("%s: %d", varname, varval));
end;
