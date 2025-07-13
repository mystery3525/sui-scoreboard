
Scoreboard.UpdatePlayerGamemode = function( ply )
	if not IsValid( ply ) then
		return false
	end

	local gamemode = "PVP"
	if ply.buildmode == nil then
		gamemode = "???"
	elseif ply.buildmode == true then
		gamemode = "Build"
	end


	ply:SetNWString( "SuiGamemode", gamemode )
end
