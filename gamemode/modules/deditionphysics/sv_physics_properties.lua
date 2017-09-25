
local function SetSpeedsDedition( ply )
	ply:SetWalkSpeed( 100 )
	ply:SetRunSpeed( 300 )
end
hook.Add( "PlayerInitialSpawn", "SetSpeedsDedition", SetSpeedsDedition )

local function GetFallDamageDedition( ply, speed )
	return ( speed / 8 )
end
hook.Add( "GetFallDamage", "GetFallDamageDedition", GetFallDamageDedition )