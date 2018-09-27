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
// the dynamic lights require the following keys in worldspawn:
//	_style1rgbGen	wave sawtooth 0.0 1.0 0 0.5
//	_style2rgbGen	wave square 0.0 1.0 0 1.0
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
textures/vega/ing1_trim02b_300
{
	qer_editorimage textures/vega/ing1_trim02b.tga
	q3map_lightimage textures/vega/ing1_trim02b.tga
	q3map_surfacelight 300
	surfaceparm nolightmap
	{
		map textures/vega/ing1_trim02b.tga
		//rgbGen identity
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

// elevator light strip
textures/vega/ing1_trim08_elevator
{
	qer_editorimage textures/vega/ing1_trim08_radiant.tga
	q3map_lightimage textures/vega/ing1_trim08_glow.tga
	q3map_surfacelight 500
	{
		map textures/vega/ing1_trim08.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_trim08_glow_1.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp> <phase> <freq>
		rgbGen wave square .25 0.75 0 1
	}
	{
		map textures/vega/ing1_trim08_glow_2.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp> <phase> <freq>
		rgbGen wave square .25 0.75 .5 1
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

// square red light nolight
textures/vega/ing1_squarelight01_red
{
	qer_editorimage textures/vega/ing1_squarelight01_red
	q3map_lightimage textures/vega/ing1_squarelight01_red_glow
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_red_glow.tga
		blendfunc add
	}
}

// square red light 1500
textures/vega/ing1_squarelight01_red_1k5
{
	qer_editorimage textures/vega/ing1_squarelight01_red
	q3map_lightimage textures/vega/ing1_squarelight01_red_glow
	q3map_surfacelight 1500
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_red_glow.tga
		blendfunc add
	}
}

// square blue light 1500
textures/vega/ing1_squarelight01_blue_1k5
{
	qer_editorimage textures/vega/ing1_squarelight01_blue
	q3map_lightimage textures/vega/ing1_squarelight01_blue_glow
	q3map_surfacelight 1500
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_blue_glow.tga
		blendfunc add
	}
}

// square white light nolight
textures/vega/ing1_squarelight01_white
{
	qer_editorimage textures/vega/ing1_squarelight01_white
	q3map_lightimage textures/vega/ing1_squarelight01_white_glow
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_white_glow.tga
		blendfunc add
	}
}

// square white light 1500
textures/vega/ing1_squarelight01_white_1k5
{
	qer_editorimage textures/vega/ing1_squarelight01_white
	q3map_lightimage textures/vega/ing1_squarelight01_white_glow
	q3map_surfacelight 1500
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_white_glow.tga
		blendfunc add
	}
}

// square yellow light 1500
textures/vega/ing1_squarelight01_yellow_1k5
{
	qer_editorimage textures/vega/ing1_squarelight01_yellow
	q3map_lightimage textures/vega/ing1_squarelight01_yellow_glow
	q3map_surfacelight 1500
	{
		map textures/vega/ing1_squarelight01_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_squarelight01_yellow_glow.tga
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
		map textures/vega/ing1_controls01b_base.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_controls01b_glow.tga
		blendfunc add
	}
}

// control panel with small red digits
textures/vega/ing1_controls01c
{
	qer_editorimage textures/vega/ing1_controls01c
	q3map_lightimage textures/vega/ing1_controls01c_glow
	q3map_surfacelight 750
	q3map_lightstyle 2
	{
		map textures/vega/ing1_controls01c.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/vega/ing1_controls01c_glow.tga
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

// grate02
// polygonOffset fixes Z-fighting with the bottom of crates on top of grates
textures/vega/ing1_grate02
{
	qer_editorimage textures/vega/ing1_grate02.tga
	qer_trans .7
	surfaceparm nomarks
	surfaceparm metalsteps
	polygonOffset
	cull none
	{
		map textures/vega/ing1_grate02.tga
		alphafunc GE128
		blendfunc blend
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
		rgbGen identity
	}
}

// grate02 non-solid
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
		blendfunc blend
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
		blendfunc blend
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

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// plasma
textures/vega/ing1_plasma
{
	qer_editorimage textures/vega/ing1_plasma_radiant
	q3map_lightimage textures/vega/ing1_plasma_glow
	q3map_surfacelight 150
	qer_trans .7
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	cull none
        {
                map textures/vega/ing1_plasma.tga
                tcmod scroll 0.0 0.5
		blendfunc blend
        }
        {
                map textures/vega/ing1_plasma_glass.tga
		blendfunc filter
        }

}

// plasma surface
// rotate speed runs slightly behind in the ingame func_rotate entity
textures/vega/ing1_plasma_surface
{
	qer_editorimage textures/vega/ing1_plasma_surface_radiant.tga
        //qer_trans .7
        q3map_lightimage textures/vega/ing1_plasma_surface.tga
        q3map_surfacelight 150
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

// plasma content, has the slime surfaceparm, but doesn't draw anything
// taken from the map slimepunk by Taiyo.uk
textures/vega/ing1_plasma_nodraw
{
	qer_editorimage textures/vega/ing1_slime_radiant
	qer_trans 0.7
	surfaceparm noimpact
	surfaceparm slime

	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
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

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// water bubble (particle system)
textures/vega/water_bubble
{
	qer_editorimage textures/vega/ing1_bubble
        cull none
        // from http://www.quake3world.com/forum/viewtopic.php?f=10&t=11941&view=next
        //
        // entityMergable, allowing sprite surfaces from multiple entities
	// to be merged into one batch. This is a savings for smoke
	// puffs and blood, but can't be used for anything where the
	// shader calcs (not the surface function) reference the entity color or scroll
	//
	// As I understand it, this means multiple particle systems can be drawn in 
	// a batch. I don't know if this actuall works
        entityMergable
        {
                map textures/vega/ing1_bubble.tga
                blendfunc blend
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// smoke (particle system)
textures/vega/smoke
{
	qer_editorimage textures/vega/ing1_smoke
        cull none
        entityMergable
        {
                map textures/vega/ing1_smoke.tga
                //blendfunc blend
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                //rgbGen          vertex
                alphaGen        vertex
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// warning sign high voltage
textures/vega/ing1_warning01
{
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		map textures/vega/ing1_warning01.tga
//		alphafunc GE128
//		depthwrite
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
// warning sign radioactive
textures/vega/ing1_warning02
{
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		map textures/vega/ing1_warning02.tga
//		alphafunc GE128
//		depthwrite
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
// kyp name tag
textures/vega/ing1_vega_kyp
{
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	polygonOffset
	{
		map textures/vega/ing1_vega_kyp.tga
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
// vega industries logo with company motto decal
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
		blendfunc blend
		depthwrite
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// vega industries logo wide decal
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
		blendfunc blend
		depthwrite
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// elevator decal
textures/vega/ing1_vega_elevator
{
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_vega_elevator.tga
		alphafunc GE128
		blendfunc blend
		depthwrite
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// stairs decal
textures/vega/ing1_vega_stairs
{
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_vega_stairs.tga
		alphafunc GE128
		blendfunc blend
		depthwrite
	}
	{
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// workshop floor decal
textures/vega/ing1_vega_workshop
{
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_vega_workshop.tga
		alphafunc GE128
		blendfunc blend
		depthwrite
	}
	{	
		rgbGen identity
		map $lightmap
		depthfunc equal
		blendfunc filter		
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
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

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
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
	// animation sequence
	{
		animMap 8 textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right_broken.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga textures/vega/ing1_vega_gate2right.tga
		rgbGen identity
		blendfunc blend
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// workshop holo arrow right broken
textures/vega/ing1_vega_workshoparrow_broken
{
	qer_editorimage textures/vega/ing1_vega_workshoparrow_broken.tga
	qer_trans .7
	cull none
	q3map_surfacelight 100
	q3map_lightimage textures/vega/ing1_vega_workshoparrow.tga
	// scrolling background
	{
		map textures/vega/ing1_water01.tga
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
	// animation sequence
	{
		animMap 8 textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow_broken.tga textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow.tga textures/vega/ing1_vega_workshoparrow.tga
		rgbGen identity
		blendfunc blend
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// non-solid nocull metal
textures/vega/ing1_base02_nonsolid
{
	qer_editorimage textures/vega/ing1_base02
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	{
		map textures/vega/ing1_base02.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// non-solid nocull dark metal
textures/vega/ing1_base02a_nonsolid
{
	qer_editorimage textures/vega/ing1_base02a
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	{
		map textures/vega/ing1_base02a.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// non-solid metal
textures/vega/ing1_base01_nonsolid
{
	qer_editorimage textures/vega/ing1_base01
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map textures/vega/ing1_base01.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}	
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// metal steps floor
textures/vega/ing1_floor04:q3map
{
	surfaceparm metalsteps
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// no lightmap, always black
textures/vega/black
{
	qer_editorimage textures/vega/black
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/vega/black.tga
	}
}

// no lightmap, always white
textures/vega/white_nonsolid
{
	qer_editorimage textures/vega/white
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/vega/white.tga
	}
}
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// starcharts

textures/vega/ing1_starchart1
{
	q3map_surfacelight 150
	surfaceparm nolightmap
	{
		map textures/vega/ing1_starchart1.tga
	}
}

textures/vega/ing1_starchart2
{
	q3map_surfacelight 150
	surfaceparm nolightmap
	{
		map textures/vega/ing1_starchart2.tga
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// wheel tracks
textures/vega/ing1_wheeltracks
{
	qer_editorimage textures/vega/ing1_wheeltracks_radiant.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	{
		rgbGen identity
		map textures/vega/ing1_wheeltracks.tga
		blendfunc blend
		depthwrite
	}
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
		map models/mapobjects/vega/plant/leaf1.tga
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
		map models/mapobjects/vega/plant/leaf2.tga
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
		map models/mapobjects/vega/globe/globe.tga
		tcmod scroll .05 0.0
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// holo emitter model and textures by Ingar

models/mapobjects/vega/emitter/emitter
{
	surfaceparm nomarks
	{
		map models/mapobjects/vega/emitter/emitter.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/emitter/emitter_glow.tga
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
// vehicke nodel and textures by Ingar
models/mapobjects/vega/vehicle/suspension:q3map
{
	surfaceparm nomarks
	surfaceparm nonsolid
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// monitor model by f0rqu3, shaders and display textures by Ingar

// monitor body light
models/mapobjects/vega/monitor/monitor
{
	surfaceparm nomarks
	{
		map models/mapobjects/vega/monitor/monitor.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
	{
		map models/mapobjects/vega/monitor/monitor_light.tga
		blendfunc add
	}
}

// monitor display
models/mapobjects/vega/monitor/display_text
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_text.tga
	}
}

// monitor display - blue door
models/mapobjects/vega/monitor/display_door_blue
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_door_blue.tga
	}
}

// monitor display - red door
models/mapobjects/vega/monitor/display_door_red
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_door_red.tga
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// console model by Thorn

// console screens
models/mapobjects/vega/console/console_screens
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/console/console_screens.tga
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// ceiling light models and textures by Karvajalka

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
		map models/mapobjects/vega/terminal/terminal2_display.tga
		blendfunc add
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// animated pump model by Thorn

models/mapobjects/vega/pump/pump
{
	qer_editorimage models/mapobjects/vega/pump/pump
	{
		map models/mapobjects/vega/pump/pump.tga
		rgbGen lightingDiffuse
	}
	// fake lightmap
	{
                map textures/vega/ing1_base02a.tga
		blendfunc filter
	}
}

models/mapobjects/vega/pump/pipe
{
	qer_editorimage textures/vega/ing1_base03.tga
	{
		map textures/vega/ing1_base03.tga
		rgbGen lightingDiffuse
	}
	// fake lightmap
	{
                map textures/vega/ing1_base02a.tga
		blendfunc filter
	}
	
}

models/mapobjects/vega/pump/needle
{
	qer_editorimage models/mapobjects/vega/pump/needle.tga
	polygonOffset
        {
                map models/mapobjects/vega/pump/needle.tga
		blendfunc blend
        }
}
