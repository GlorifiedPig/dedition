
function GetFallDamageDedition( ply, speed )
	return ( speed / 8 )
end
hook.Add( "GetFallDamage", "GetFallDamageDedition", GetFallDamageDedition )