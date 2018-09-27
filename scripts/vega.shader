// shaders for the Tremulous map "Vega Outpost 42"
// written by Ingar
//

// -----------------------------------------------------------------
// Notes
//
// surfaceparm trans is NOT used to make transparent textures,
// but to use the alpha channel for non-clipping areas
//
// polygonOffset is used to make decals

// -----------------------------------------------------------------
// Sky

// skybox "Vega 42" by Ingar
textures/vega/sky
{
      qer_editorimage env/vega/ing1_sky_small
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
      // sunlight position red green blue intensity degrees elevation
      q3map_sun   .9 .9 .9 75 90 25
      // sunlight intensity
      q3map_surfacelight 150

      skyparms env/vega/ing1_sky - -
}

// -----------------------------------------------------------------
// Shaders for Ingar's Texture Set 1

// panel with lights grid
textures/vega/ing1_panel01d_300
{
	qer_editorimage textures/vega/ing1_panel01d.tga
	q3map_lightimage textures/vega/ing1_panel01d_glow.tga
	q3map_surfacelight 300
	{
		map textures/vega/ing1_panel01d.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel01d_glow.tga
		blendfunc add
	}
}

// panel with broken lights grid
textures/vega/ing1_panel01d_broken
{
	qer_editorimage textures/vega/ing1_panel01d_dim.tga
	q3map_lightimage textures/vega/ing1_panel01d_glow.tga
	q3map_surfacelight 500
	q3map_lightstyle 1
	{
		map textures/vega/ing1_panel01d_dim.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel01d_glow.tga
		blendfunc add
		rgbGen wave sawtooth 0.0 1.0 0 0.5
	}
}

textures/vega/ing1_panel01d_500
{
	qer_editorimage textures/vega/ing1_panel01d.tga
	q3map_lightimage textures/vega/ing1_panel01d_glow.tga
	q3map_surfacelight 500
	{
		map textures/vega/ing1_panel01d.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel01d_glow.tga
		blendfunc add
	}
}

// metal panel with round blue lights
textures/vega/ing1_panel01e_300
{
	qer_editorimage textures/vega/ing1_panel01e
	q3map_lightimage textures/vega/ing1_panel01e_glow
	q3map_surfacelight 300
	{
		map textures/vega/ing1_panel01e.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel01e_glow.tga
		blendfunc add
	}
}

// metal panel with round blue lights
textures/vega/ing1_panel02a_300
{
	qer_editorimage textures/vega/ing1_panel02a
	q3map_lightimage textures/vega/ing1_panel02_glow
	q3map_surfacelight 300
	{
		map textures/vega/ing1_panel02a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel02_glow.tga
		blendfunc add
	}
}

// dark metal panel with round blue lights
textures/vega/ing1_panel02c_300
{
	qer_editorimage textures/vega/ing1_panel02c
	q3map_lightimage textures/vega/ing1_panel02_glow
	q3map_surfacelight 300
	{
		map textures/vega/ing1_panel02c.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel02_glow.tga
		blendfunc add
	}
}

// metal panel with moonlights
textures/vega/ing1_panel02d_300
{
	qer_editorimage textures/vega/ing1_panel02d
	q3map_lightimage textures/vega/ing1_panel02d_glow
	q3map_surfacelight 300
	{
		map textures/vega/ing1_panel02d.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel02d_glow.tga
		blendfunc add
	}
}

// white metal panel with light stripes
textures/vega/ing1_panel03_500
{
	qer_editorimage textures/vega/ing1_panel03_light
	q3map_lightimage textures/vega/ing1_panel03_light
	q3map_surfacelight 500
	{
		map textures/vega/ing1_panel03_light.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_panel03_glow.tga
		blendfunc add
	}
}

// light trim 500 light
textures/vega/ing1_trim02b_500
{
	qer_editorimage textures/vega/ing1_trim02b.tga
	q3map_surfacelight 500
	surfaceparm nolightmap
	{
		map textures/vega/ing1_trim02b.tga
		//rgbGen identity
	}
}

// light trim 1000 light
textures/vega/ing1_trim02b_1k
{
	qer_editorimage textures/vega/ing1_trim02b.tga
	q3map_surfacelight 1000
	surfaceparm nolightmap
	{
		map textures/vega/ing1_trim02b.tga
		//rgbGen identity
	}
}

// round blue light 500
textures/vega/ing1_light01a_500
{
	qer_editorimage textures/vega/ing1_light01a
	q3map_lightimage textures/vega/ing1_light01_glow
	q3map_surfacelight 500
	{
		map textures/vega/ing1_light01a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_light01_glow.tga
		blendfunc add
	}
}

// round brown light 500
textures/vega/ing1_light02a_500
{
	qer_editorimage textures/vega/ing1_light02a
	q3map_lightimage textures/vega/ing1_light02_glow
	q3map_surfacelight 500
	{
		map textures/vega/ing1_light02a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_light02_glow.tga
		blendfunc add
	}
}

// round small lights 500
textures/vega/ing1_light03a_500
{
	qer_editorimage textures/vega/ing1_light03a
	q3map_lightimage textures/vega/ing1_light03a_glow
	q3map_surfacelight 500
	{
		map textures/vega/ing1_light03a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_light03a_glow.tga
		blendfunc add
	}
}


// metal trim with round lights 
textures/vega/ing1_trim05a_250
{
	qer_editorimage textures/vega/ing1_trim05a
	q3map_lightimage textures/vega/ing1_trim05a_glow
	q3map_surfacelight 250
	{
		map textures/vega/ing1_trim05a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_trim05a_glow.tga
		blendfunc blend
	}
}

// metal trim with round lights 
textures/vega/ing1_trim05a_500
{
	qer_editorimage textures/vega/ing1_trim05a
	q3map_lightimage textures/vega/ing1_trim05a_glow
	q3map_surfacelight 500
	{
		map textures/vega/ing1_trim05a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_trim05a_glow.tga
		blendfunc blend
	}
}

// grate
textures/vega/ing1_grate02
{
	qer_editorimage textures/vega/ing1_grate02.tga
	surfaceparm nomarks
	surfaceparm metalsteps
	cull none
	{
		map textures/vega/ing1_grate02.tga
		alphafunc GE128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
		rgbGen identity
	}
}

// hires glass
textures/vega/ing1_glass2
{
	qer_editorimage textures/vega/ing1_glass2.tga
	qer_trans .7
	cull none
	{
                map textures/vega/ing1_glass2_env.tga
		blendFunc gl_dst_color gl_one
		tcGen environment
	}
        {
                map textures/vega/ing1_glass2.tga
		blendfunc filter
        }
        {
                map $lightmap
                blendFunc gl_dst_color gl_one
        }
}

// red square
textures/vega/ing1_redsquare_250
{
	qer_editorimage textures/vega/ing1_redsquare.tga
	surfaceparm nolightmap
	q3map_surfacelight 250
	{
		map textures/vega/ing1_redsquare.tga
	}
}
// radiator grid
textures/vega/ing1_radiator01b
{
	qer_editorimage textures/vega/ing1_radiator01b.tga
	//surfaceparm trans
	surfaceparm nomarks
	surfaceparm metalsteps
	cull none
	{
		rgbGen identity
		map textures/vega/ing1_radiator01b.tga
		alphafunc GE128
		depthwrite
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// warning sign 10,000 V
textures/vega/ing1_warning01
{
	qer_editorimage textures/vega/ing1_warning01.tga
	//surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		map textures/vega/ing1_warning01.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// metal steps floor
//textures/vega/ing1_floor01:q3map
//{
//	surfaceparm metalsteps
//}

// metal steps floor
textures/vega/ing1_floor04:q3map
{
	surfaceparm metalsteps
}

// -----------------------------------------------------------------
// Models

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// plant model and textures by Ingar

// plant leaf with alpha channel
models/mapobjects/vega/plant/leaf
{
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map models/mapobjects/vega/plant/leaf
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// phong shaded pot
models/mapobjects/vega/plant/pot:q3map
{
	q3map_shadeangle 45
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// container model and textures by Ingar

// phong shaded round container
models/mapobjects/vega/container1/container1:q3map
{
	q3map_shadeangle 45
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// monitor model by f0rqu3, shaders and display textures by Ingar

// monitor body light
models/mapobjects/vega/monitor/monitor
{
	surfaceparm nomarks
	{
		map models/mapobjects/vega/monitor/monitor
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/monitor/monitor_light
		blendfunc add
	}
}

// monitor display
models/mapobjects/vega/monitor/display
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display
	}
}

// monitor display - blue door
models/mapobjects/vega/monitor/display_door_blue
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_door_blue
	}
}

// monitor display - red door
models/mapobjects/vega/monitor/display_door_red
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_door_red
	}
}

// -----------------------------------------------------------------
// Misc

textures/vega/black
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/vega/black
	}
}

textures/vega/nolightmap
{
	qer_editorimage textures/vega/nolightmap
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/vega/black
	}
}
