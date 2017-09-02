
local ScreenspaceModifications = {
	["$pp_colour_brightness"] = -0.05,
	["$pp_colour_contrast"] = 1.15,
	["$pp_colour_colour"] = 0.8
}

local function ScreenspaceEffectsDedition()
	DrawColorModify( ScreenspaceModifications )
	DrawSharpen( 1, 0.1 )
end
hook.Add( "RenderScreenspaceEffects", "ScreenspaceEffectsDedition", ScreenspaceEffectsDedition )