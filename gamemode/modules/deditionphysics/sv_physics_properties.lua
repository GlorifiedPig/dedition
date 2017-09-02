
function GetFallDamageDedition()
	return ( speed / 8 )
end
hook.Add( "GetFallDamage", "GetFallDamageDedition", GetFallDamageDedition )