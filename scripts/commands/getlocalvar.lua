---------------------------------------------------------------------------------------------------
-- func: getlocalvar
-- desc: Get the value of a local variable
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!getlocalvar <var name>");
end;

function onTrigger(player, varname)
	local varval;
    -- validate var name
    if (varname == nil or varname == "") then
        error(player, "Invalid variable name.");
        return;
    end

	varval = player:getLocalVar(varname)
    player:PrintToPlayer(string.format("%s: %d", varname, varval));
end;
