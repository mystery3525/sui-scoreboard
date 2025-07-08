
Scoreboard.UpdatePlayerGamemode = function( ply )
	if not IsValid( ply ) then
		return false
	end

	local gamemode = "PVPer"
	if ply.buildmode == nil then
		gamemode = "???"
	elseif ply.buildmode == true then
		gamemode = "Builder"
	end


	ply:SetNWString( "SuiGamemode", gamemode )
end
