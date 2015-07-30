//
// Unvanquished shader file for the map
// Vega industries: Research Outpust 13
//
// This conversion is a complete rework of the original
// Vega texture set. Some textures have been replaced,
// others have been updated, with higher resolution versions
// were possible.
// 
// http://ingar.satgnu.net
// ingar@telenet.be
//

// ------------------------------------------------------------
// Notes 

// To preserve compatibility with the Xonotic conversion,
// shader names should match with the name of the diffuse map
// if no corresponding xonotic shader exists.
//
// If a corresponding xonotic shader does exist,
// shader name and diffuse map name should differ to prevent
// conflicting filenames.
//
// q3map_lightimage and q3map_lightstyle don't work
//

// ------------------------------------------------------------
// CUSTOM MAP SHADERS

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// plain colors

// black
textures/vega_custom/black
{
	qer_editorimage textures/vega_custom_src/black
	
	diffusemap textures/vega_custom_src/black
	
	surfaceparm nomarks
	surfaceparm nolightmap
}

// black (nonsolid)
textures/vega_custom/black_nonsolid
{
	qer_editorimage textures/vega_custom_src/black
	
	diffusemap textures/vega_custom_src/black
	
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
}

// white
textures/vega_custom/white
{
        diffusemap textures/vega_custom_src/white
        
	qer_editorimage textures/vega_custom_src/white
	
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
}

// white (nonsolid)
textures/vega_custom/white_nonsolid
{
        diffusemap textures/vega_custom_src/white
        
	qer_editorimage textures/vega_custom_src/white
	
	surfaceparm nomarks
	surfaceparm nolightmap
}

// white (nonsolid, light)
textures/vega_custom/white_nonsolid_150
{
        diffusemap textures/vega_custom_src/white
        
	qer_editorimage textures/vega_custom_src/white
	
	surfaceparm nomarks
	surfaceparm nolightmap
	
	q3map_surfacelight 150
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// vega industries logos

textures/vega_custom/vega_banner
{
	qer_editorimage textures/vega_custom_src/vega_banner_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/vega_banner_blend
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

textures/vega_custom/vega_motto
{
	qer_editorimage textures/vega_custom_src/vega_motto_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/vega_motto_blend
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
// arrows

textures/vega_custom/arrow_elevator
{
	qer_editorimage textures/vega_custom_src/arrow_elevator_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/arrow_elevator_blend
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

textures/vega_custom/arrow_stairs
{
	qer_editorimage textures/vega_custom_src/arrow_stairs_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/arrow_stairs_blend
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
// panel signs

textures/vega_custom/sign_gate1
{
	qer_editorimage textures/vega_custom_src/sign_gate1_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/sign_gate1_blend
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

textures/vega_custom/sign_gate2
{
	qer_editorimage textures/vega_custom_src/sign_gate2_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/sign_gate2_blend
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

textures/vega_custom/sign_hatch
{
	qer_editorimage textures/vega_custom_src/sign_hatch_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/sign_hatch_blend
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

textures/vega_custom/sign_workshop
{
        qer_editorimage textures/vega_custom_src/sign_workshop_blend

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/sign_workshop_blend
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
// holo signs

textures/vega_custom/holo_gate1
{
	qer_editorimage textures/vega_custom_src/arrow_gate1_blend
	qer_trans .7
	
	cull none
	
	q3map_surfacelight 150
	
	// blue light #00baff
        q3map_lightRGB 0.0 0.7924 1.0
        
        // scrolling background
	{
		map textures/vega_custom_src/arrow_holo_blend
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
	
	// arrow sign
        {
                map textures/vega_custom_src/arrow_gate1_blend
                rgbGen identity
		blendfunc blend
        }
}

textures/vega_custom/holo_gate2_broken
{
	qer_editorimage textures/vega_custom_src/arrow_gate2_distort
	qer_trans .7
	
	cull none
	
	q3map_surfacelight 150
	
	// blue light #00baff
        q3map_lightRGB 0.0 0.7924 1.0
        
        // scrolling background
	{
		map textures/vega_custom_src/arrow_holo_blend
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
	
	// arrow sign
        {
                animmap 8 textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_blend textures/vega_custom_src/arrow_gate2_distort
                
                rgbGen identity
		blendfunc blend
        }
}

textures/vega_custom/holo_workshop_broken
{
	qer_editorimage textures/vega_custom_src/arrow_workshop_distort
	qer_trans .7
	
	cull none
	
	q3map_surfacelight 150
	
	// blue light #00baff
        q3map_lightRGB 0.0 0.7924 1.0
        
        // scrolling background
	{
		map textures/vega_custom_src/arrow_holo_blend
		tcmod scroll 0.0 0.25
		blendfunc filter
	}
	
	// arrow sign
        {
                animmap 8 textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_blend textures/vega_custom_src/arrow_workshop_distort
                
                rgbGen identity
		blendfunc blend
        }
}


// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// starcharts

textures/vega_custom/starchart01
{
        qer_editorimage textures/vega_custom_src/starchart01_diffuse
        
        q3map_surfacelight 150
        
	surfaceparm nolightmap
	
	{
		map textures/vega_custom_src/starchart01_diffuse
	}
}

textures/vega_custom/starchart02
{
        qer_editorimage textures/vega_custom_src/starchart02_diffuse
    
	q3map_surfacelight 150
	
	surfaceparm nolightmap
	
	{
		map textures/vega_custom_src/starchart02_diffuse
	}
	
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// overlays

textures/vega_custom/roadstrip
{
	qer_editorimage textures/vega_custom_src/roadstrip_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
	{
		map textures/vega_custom_src/roadstrip_diffuse
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

// wheeltracks
textures/vega_custom/wheeltracks
{
	qer_editorimage textures/vega_custom_src/wheeltracks_qer
	
	surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
	
	{
		rgbGen identity
		map textures/vega_custom_src/wheeltracks_blend
		blendfunc blend
		depthwrite
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// custom lights

textures/vega_custom/squarelight01_red_150
{
	qer_editorimage textures/shared_vega_src/squarelight01_red_qer
	
	// red
	q3map_lightRGB 1.0 0.0 0.0
	q3map_surfacelight 150

	diffusemap	textures/shared_vega_src/squarelight01_diffuse
	normalmap	textures/shared_vega_src/squarelight01_normal
	specularmap	textures/shared_vega_src/squarelight01_specular	
	{
            map textures/shared_vega_src/squarelight01_glow
            blend add
            red 1.0
            green 0.0
            blue 0.0
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// misc effects

// holo projector beam
textures/vega_custom/holo_projector
{
	qer_editorimage textures/vega_custom_src/holo_projector_qer
	qer_trans .7
	
	q3map_surfacelight 25
	q3map_lightRGB 1.0 1.0 1.0
	
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	cull none
	
        {
                map textures/vega_custom_src/holo_projector_blend
                tcmod scroll 0.10 0.25
                
		blendfunc blend
        }
}


// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// Particle systems

// water bubble
textures/vega_custom/water_bubble
{
	qer_editorimage textures/vega_custom_src/bubble
        cull none
        // from http://www.quake3world.com/forum/viewtopic.php?f=10&t=11941&view=next
        //
        // entityMergable, allowing sprite surfaces from multiple entities
	// to be merged into one batch. This is a savings for smoke
	// puffs and blood, but can't be used for anything where the
	// shader calcs (not the surface function) reference the entity color or scroll
	//
	// As I understand it, this means multiple particle systems can be drawn in 
	// a batch. I don't know if this actually works
        entityMergable
        {
                map textures/vega_custom_src/bubble
                blendfunc blend
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// smoke
textures/vega_custom/smoke
{
	qer_editorimage textures/vega_custom_src/smoke
        cull none
        entityMergable
        {
                map textures/vega_custom_src/smoke
                //blendfunc blend
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                //rgbGen          vertex
                alphaGen        vertex
        }
}
