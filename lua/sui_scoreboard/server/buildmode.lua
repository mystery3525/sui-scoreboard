
Scoreboard.UpdatePlayerGamemode = function( ply )
	if not IsValid( ply ) then
		return false
	end

	local gamemode = ply.buildmode
	if ply.buildmode == nil then
		gamemode = "???"
	elseif ply.buildmode == true then
		gamemode = "Build"
	elseif ply.buildmode == false then
		gamemode = "PVP"
	end

	ply:SetNWString( "SuiGamemode", gamemode )
end
