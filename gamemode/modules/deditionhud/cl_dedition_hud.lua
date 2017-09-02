
local ShouldNotDraw = {
    CHudHealth = true,
}

local function ShouldDrawHUDElement( name )
    if ShouldNotDraw[ name ] then return false end
end
hook.Add("HUDShouldDraw", "ShouldDrawHUDElement", ShouldDrawHUDElement)

surface.CreateFont("HUDText", {
    font = "pix PixelFJVerdana12pt",
    size = 40,
    weight = 1000
})

-- Start Materials
    local VignetteMaterial = Material( "dedition_effects/vignette.png", "smooth mips" )
-- End Materials

-- Start Lerped Variables
    local smoothHealth = 0
-- End Lerped Variables

local function DeditionHUD() 
    local ply = LocalPlayer()

    surface.SetDrawColor( 255, 255, 255, 255 )
    surface.SetMaterial( VignetteMaterial )
    surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )

    local health = ply:Health()

    if smoothHealth <= 100 then
        smoothHealth = Lerp( FrameTime() * 3, smoothHealth, health )
    else
        smoothHealth = 100
    end

    draw.RoundedBox( 0, 15, ScrH() - 65, smoothHealth * 2.5, 50, Color( 0, 0, 0 ) )
    draw.OutlinedBox( 15, ScrH() - 65, 250, 50, 3, Color( 0, 0, 0 ) )

    draw.RoundedBox( 0, 40, ScrH() - 57, 8, 33, Color( 124, 252, 0 ) )
    draw.RoundedBox( 0, 28, ScrH() - 44, 33, 8, Color( 124, 252, 0 ) )

    draw.SimpleText( math.Round( smoothHealth, 0 ), "HUDText", 75, ScrH() - 60, Color( 124, 252, 0 ) )
end
hook.Add( "HUDPaint", "DeditionHUDPaint", DeditionHUD )