// shaders for the Tremulous map "Vega Industries: Research Outpost 13"
// written by Ingar
//

// -----------------------------------------------------------------
// Notes
//
// surfaceparm trans is NOT used to make transparent textures,
// but to use the alpha channel for non-clipping areas
//
// polygonOffset is used to make decals
//
// qer_editorimage indicates what image should be used to draw
// the texture in radiant
//
// -----------------------------------------------------------------
// 


// skybox "Vega" by Ingar
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
// Shaders for the Vega texture set

// panel with lights grid
// *
// * documented shader example
// *
// * a shader definition starts with the name of the shader
textures/vega/ing1_panel01d_300
{
	// * qer_editorimage: the image used to draw the shader in radiant
	qer_editorimage textures/vega/ing1_panel01d.tga
	// * q3map_surfacelight: the amount of light the shader will emit
	q3map_surfacelight 300
	// * q3map_lightimage: the image used as light color
	q3map_lightimage textures/vega/ing1_panel01d_glow.tga
	
	// * this shader has 3 stages, each stage adds an extra 'texture layer'

	// * stage 1: draw the base image (without lights)
	{
		map textures/vega/ing1_panel01d.tga
		rgbGen identity
	}
	
	// * stage 2: filter the lightmap on top of it
	//   without lightmap the shader will be fullbright
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	
	// * stage 3: add the light image on top of it
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

// special nocull panel
textures/vega/ing1_panel02_nocull
{
	qer_editorimage textures/vega/ing1_panel02
	cull none
	{
		map textures/vega/ing1_panel02.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
}

// white metal panel with light stripes
textures/vega/ing1_panel03_500
{
	qer_editorimage textures/vega/ing1_panel03_light.tga
	q3map_lightimage textures/vega/ing1_panel03_light.tga
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

// white strip 500 light
textures/vega/ing1_trim02b_500
{
	qer_editorimage textures/vega/ing1_trim02b.tga
	q3map_lightimage textures/vega/ing1_trim02b.tga
	q3map_surfacelight 500
	surfaceparm nolightmap
	{
		map textures/vega/ing1_trim02b.tga
		//rgbGen identity
	}
}

// white strip 1000 light
textures/vega/ing1_trim02b_1k
{
	qer_editorimage textures/vega/ing1_trim02b.tga
	q3map_lightimage textures/vega/ing1_trim02b.tga
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

// round blue light 500
textures/vega/ing1_light01a_1500
{
	qer_editorimage textures/vega/ing1_light01a
	q3map_lightimage textures/vega/ing1_light01_glow
	q3map_surfacelight 1500
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
	q3map_lightimage textures/vega/ing1_light03_glow
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
		map textures/vega/ing1_light03_glow.tga
		blendfunc add
	}
}

// round small lights 500
textures/vega/ing1_light03b_500
{
	qer_editorimage textures/vega/ing1_light03b
	q3map_lightimage textures/vega/ing1_light03_glow
	q3map_surfacelight 500
	{
		map textures/vega/ing1_light03b.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_light03_glow.tga
		blendfunc add
	}
}

// control panel with keyboard
textures/vega/ing1_controls01b
{
	qer_editorimage textures/vega/ing1_controls01b
	q3map_lightimage textures/vega/ing1_controls01b_glow
	q3map_surfacelight 50
	{
		map textures/vega/ing1_controls01b_base
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_controls01b_glow
		blendfunc add
	}
}

// control panel with small red lights
textures/vega/ing1_controls01c_500
{
	qer_editorimage textures/vega/ing1_controls01c
	q3map_lightimage textures/vega/ing1_controls01c_glow
	q3map_surfacelight 500
	q3map_lightstyle 2
	{
		map textures/vega/ing1_controls01c
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_controls01c_glow
		blendfunc add
		rgbGen wave square 0.0 1.0 0 1
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
	qer_trans .7
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

// grate 02
textures/vega/ing1_grate02_nonsolid
{
	qer_editorimage textures/vega/ing1_grate02.tga
	qer_trans .7
	surfaceparm nomarks
	surfaceparm nonsolid
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

// grate 07
textures/vega/ing1_grate07
{
	qer_editorimage textures/vega/ing1_grate07.tga
	qer_trans .7
	surfaceparm nomarks
	surfaceparm metalsteps
	cull none
	{
		map textures/vega/ing1_grate07.tga
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

// grate 08
textures/vega/ing1_grate08
{
	qer_editorimage textures/vega/ing1_grate08.tga
	qer_trans .7
	surfaceparm nomarks
	surfaceparm metalsteps
	cull none
	{
		map textures/vega/ing1_grate08.tga
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

// glass
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

// holo emitter
textures/vega/ing1_holo
{
	qer_editorimage textures/vega/ing1_holo_radiant.tga
	q3map_lightimage textures/vega/ing1_holo.tga
	q3map_surfacelight 25
	qer_trans .7
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	cull none
        {
                map textures/vega/ing1_holo.tga
                tcmod scroll 0.0 0.25
		blendfunc blend
        }
}

// plasma
textures/vega/ing1_plasma
{
	qer_editorimage textures/vega/ing1_plasma_radiant
	q3map_lightimage textures/vega/ing1_plasma_glow
	q3map_surfacelight 100
	qer_trans .7
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	cull none
        {
                map textures/vega/ing1_plasma
                tcmod scroll 0.0 0.5
		blendfunc blend
        }
}

// plasma surface
// rotate speed runs slightly behind in the ingame func_rotate entity
textures/vega/ing1_plasma_surface
{
	qer_editorimage textures/vega/ing1_plasma_surface_radiant.tga
        qer_trans .7
        q3map_lightimage textures/vega/ing1_plasma_surface.tga
        q3map_surfacelight 100
        q3map_globaltexture

      	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        

        cull none
        // deformVertexes wave <div> <func> <base> <amplitude> <phase> <freq>
        deformVertexes wave 64 sin .25 .25 0 .5
        {
                map textures/vega/ing1_plasma_surface.tga
		//tcmod scale .5 .5
                //tcmod turb 1.0 0.5 0.0 0.1
                tcmod rotate 20
                blendfunc blend
        }
}


// water bubble
textures/vega/water_bubble
{
	qer_editorimage textures/vega/ing1_bubble
        cull none
        {
                map textures/vega/ing1_bubble
                blendfunc blend
        }
}

// water surface
textures/vega/water_surface
{
	qer_editorimage textures/vega/ing1_water01.tga
        qer_trans .5
        q3map_lightimage textures/vega/ing1_water01.tga
        q3map_globaltexture

        surfaceparm nonsolid
        surfaceparm water

        cull none
        deformVertexes wave 64 sin .25 .25 0 .5       
        {
                map textures/vega/ing1_water01.tga
                blendFunc GL_dst_color GL_one
                rgbgen identity
                tcmod scale .5 .5
		tcmod scroll .01 .01
        }
}

// warning sign 10,000 V
textures/vega/ing1_warning01
{
	qer_editorimage textures/vega/ing1_warning01.tga
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

// vega industries logo
textures/vega/ing1_vega_industries
{
	qer_editorimage textures/vega/ing1_vega_industries.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_vega_industries.tga
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

// vega industries logo wide
textures/vega/ing1_vega_industries_wide
{
	qer_editorimage textures/vega/ing1_vega_industries_wide.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_vega_industries_wide.tga
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

// gate 1 holo arrow right
textures/vega/ing1_vega_gate1right
{
	qer_editorimage textures/vega/ing1_vega_gate1right.tga
	qer_trans .7
	cull none
	q3map_surfacelight 100
	q3map_lightimage textures/vega/ing1_vega_gate1right.tga
	// scrolling background
	{
		map textures/vega/ing1_water01.tga
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
        // sign base
	{
		rgbGen identity
		map textures/vega/ing1_vega_gate1right.tga
		blendfunc blend
	}              
}

// gate 1 holo arrow right broken
textures/vega/ing1_vega_gate1right_broken
{
	qer_editorimage textures/vega/ing1_vega_gate1right_broken.tga
	qer_trans .7
	cull none
	q3map_surfacelight 100
	q3map_lightimage textures/vega/ing1_vega_gate1right.tga
	// scrolling background
	{
		map textures/vega/ing1_water01.tga
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
        // sign base
	{
		rgbGen identity
        	alphaGen wave square 0 1.0 0.25 1
		map textures/vega/ing1_vega_gate1right.tga
		blendfunc blend
	}
        // sign base distorted
	{
        	rgbGen identity
        	alphaGen wave sin 0 1.0 0.75 1
		map textures/vega/ing1_vega_gate1right_broken.tga
		blendfunc blend
	}                
}

// gate 1 holo arrow right broken
textures/vega/ing1_vega_gate1left_broken
{
	qer_editorimage textures/vega/ing1_vega_gate1left_broken.tga
	qer_trans .7
	cull none
	q3map_surfacelight 100
	q3map_lightimage textures/vega/ing1_vega_gate1left.tga
	// scrolling background
	{
		map textures/vega/ing1_water01.tga
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
        // sign base
	//{
	//	rgbGen identity
        //	alphaGen wave square 0 1.0 0.25 1
	//	map textures/vega/ing1_vega_gate1left.tga
	//	blendfunc blend
	//}
        // sign base distorted
	//{
        //	rgbGen identity
        //	alphaGen wave sin 0 1.0 0.75 1
	//	map textures/vega/ing1_vega_gate1left_broken.tga
	//	blendfunc blend
	//}
	// animation sequence
	{
		animMap 8 textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left_broken.tga textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left.tga textures/vega/ing1_vega_gate1left.tga
		rgbGen identity
		blendfunc blend
	}
}

// gate 2 holo arrow right broken
textures/vega/ing1_vega_gate2right_broken
{
	qer_editorimage textures/vega/ing1_vega_gate2right_broken.tga
	qer_trans .7
	cull none
	q3map_surfacelight 100
	q3map_lightimage textures/vega/ing1_vega_gate2right.tga
	// scrolling background
	{
		map textures/vega/ing1_water01.tga
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
        // sign base
	//{
	//	rgbGen identity
        //	alphaGen wave square 0 1.0 0.25 1
	//	map textures/vega/ing1_vega_gate2right.tga
	//	blendfunc blend
	//}
        // sign base distorted
	//{
        //	rgbGen identity
        //	alphaGen wave sin 0 1.0 0.75 1
	//	map textures/vega/ing1_vega_gate2right_broken.tga
	//	blendfunc blend
	//}
	// animation sequence
	{
		animMap 8 textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right_broken.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga
		rgbGen identity
		blendfunc blend
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
// plant models and textures by Ingar

// plant leaf 1 with alpha channel
models/mapobjects/vega/plant/leaf1
{
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map models/mapobjects/vega/plant/leaf1
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
//models/mapobjects/vega/plant/pot:q3map
//{
//	q3map_shadeangle 45
//}

// plant leaf 2 with alpha channel
models/mapobjects/vega/plant/leaf2
{
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map models/mapobjects/vega/plant/leaf2
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

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// globe model by Ingar
// texture "sedna" by Jestr

models/mapobjects/vega/globe/globe
{
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map models/mapobjects/vega/globe/globe
		tcmod scroll .05 0.0
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// holo emitter model and textures by Ingar

models/mapobjects/vega/emitter/emitter
{
	surfaceparm nomarks
	{
		map models/mapobjects/vega/emitter/emitter
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/emitter/emitter_glow
		blendfunc add
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// container model and textures by Ingar

// phong shaded round container
//models/mapobjects/vega/container1/container1:q3map
//{
//	q3map_shadeangle 45
//}

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

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// ceiling lights by Karvajalka

// rectangular ceiling light
models/mapobjects/vega/ceilinglight/ceilinglight1
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight1.tga
	{
		map models/mapobjects/vega/ceilinglight/ceilinglight1_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/ceilinglight/ceilinglight1_glow.tga
		blendfunc add
	}
}

// tubular ceiling light
models/mapobjects/vega/ceilinglight/ceilinglight2
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight2.tga
	{
		map models/mapobjects/vega/ceilinglight/ceilinglight2_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/ceilinglight/ceilinglight2_glow.tga
		blendfunc add
	}
}

// tubular ceiling light (brown)
models/mapobjects/vega/ceilinglight/ceilinglight2a
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight2a.tga
	{
		map models/mapobjects/vega/ceilinglight/ceilinglight2_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		rgbGen identity
		map models/mapobjects/vega/ceilinglight/ceilinglight2a_glow.tga
		blendfunc add
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// terminals by Karvajalka

models/mapobjects/vega/terminal/terminal1
{
	qer_editorimage models/mapobjects/vega/terminal/terminal1
	{
		map models/mapobjects/vega/terminal/terminal1_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		rgbGen identity
		map models/mapobjects/vega/terminal/terminal1_display.tga
		blendfunc add
	}
}

models/mapobjects/vega/terminal/terminal2
{
	qer_editorimage models/mapobjects/vega/terminal/terminal2
	{
		map models/mapobjects/vega/terminal/terminal2_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		rgbGen identity
		map models/mapobjects/vega/terminal/terminal2_display.tga
		blendfunc add
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
