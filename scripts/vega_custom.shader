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
// misc overlays

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

// custom lights

textures/vega_custom/squarelight01_red_150
{
	qer_editorimage textures/vega_custom_src/squarelight01_red_qer
	
	// red
	q3map_lightRGB 1.0 0.0 0.0
	q3map_surfacelight 150

	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular	
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
            red 1.0
            green 0.0
            blue 0.0
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// water bubble (particle system)
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
// smoke (particle system)
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

// ------------------------------------------------------------
// TEXTURE PACK SHADERS


// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// base

// base blue metal
textures/vega_custom/base01
{
	qer_editorimage textures/vega_custom_src/base01_diffuse
	
	diffusemap	textures/vega_custom_src/base01_diffuse
	normalmap	textures/vega_custom_src/base01_normal
	specularmap	textures/vega_custom_src/base01_specular
}

// base blue metal (nonsolid)
textures/vega_custom/base01_nonsolid
{
	qer_editorimage textures/vega_custom_src/base01_diffuse
	
	diffusemap	textures/vega_custom_src/base01_diffuse
	normalmap	textures/vega_custom_src/base01_normal
	specularmap	textures/vega_custom_src/base01_specular
	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
}

// base black metal
textures/vega_custom/base01a
{
	qer_editorimage textures/vega_custom_src/base01a_diffuse
	
	diffusemap	textures/vega_custom_src/base01a_diffuse
	normalmap	textures/vega_custom_src/base01_normal
	specularmap	textures/vega_custom_src/base01_specular
}

// base black metal (nonsolid)
textures/vega_custom/base01a_nonsolid
{
	qer_editorimage textures/vega_custom_src/base01a_diffuse
	
	diffusemap	textures/vega_custom_src/base01a_diffuse
	normalmap	textures/vega_custom_src/base01_normal
	specularmap	textures/vega_custom_src/base01_specular
	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
}

textures/vega_custom/base02
{
	qer_editorimage textures/vega_custom_src/base02_diffuse
	
	diffusemap	textures/vega_custom_src/base02_diffuse
	normalmap	textures/vega_custom_src/base02_normal
	specularmap	textures/vega_custom_src/base02_specular
}

textures/vega_custom/base02_nonsolid
{
	qer_editorimage textures/vega_custom_src/base02_diffuse
	
	diffusemap	textures/vega_custom_src/base02_diffuse
	normalmap	textures/vega_custom_src/base02_normal
	specularmap	textures/vega_custom_src/base02_specular
	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
}

textures/vega_custom/base03
{
	qer_editorimage textures/vega_custom_src/base03_diffuse
	
	diffusemap	textures/vega_custom_src/base03_diffuse
	normalmap	textures/vega_custom_src/base03_normal
	specularmap	textures/vega_custom_src/base03_specular
}

textures/vega_custom/base03_nonsolid
{
	qer_editorimage textures/vega_custom_src/base03_diffuse
	
	diffusemap	textures/vega_custom_src/base03_diffuse
	normalmap	textures/vega_custom_src/base03_normal
	specularmap	textures/vega_custom_src/base03_specular
	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
}

textures/vega_custom/base03a
{
	qer_editorimage textures/vega_custom_src/base03a_diffuse
	
	diffusemap	textures/vega_custom_src/base03a_diffuse
	normalmap	textures/vega_custom_src/base03_normal
	specularmap	textures/vega_custom_src/base03_specular
}

textures/vega_custom/base03a_nonsolid
{
	qer_editorimage textures/vega_custom_src/base03a_diffuse
	
	diffusemap	textures/vega_custom_src/base03a_diffuse
	normalmap	textures/vega_custom_src/base03_normal
	specularmap	textures/vega_custom_src/base03_specular
	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// concrete

textures/vega_custom/concrete01
{
	qer_editorimage textures/vega_custom_src/concrete01_diffuse
	
	diffusemap	textures/vega_custom_src/concrete01_diffuse
	normalmap	textures/vega_custom_src/concrete01_normal
	specularmap	textures/vega_custom_src/concrete01_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// asphalt

textures/vega_custom/asphalt01
{
	qer_editorimage textures/vega_custom_src/asphalt01_diffuse
	
	diffusemap	textures/vega_custom_src/asphalt01_diffuse
	normalmap	textures/vega_custom_src/asphalt01_normal
	specularmap	textures/vega_custom_src/asphalt01_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// panels

textures/vega_custom/panel01
{
	qer_editorimage textures/vega_custom_src/panel01_diffuse
	
	diffusemap	textures/vega_custom_src/panel01_diffuse
	normalmap	textures/vega_custom_src/panel01_normal
	specularmap	textures/vega_custom_src/panel01_specular
}

textures/vega_custom/panel01_nocull
{
	qer_editorimage textures/vega_custom_src/panel01_diffuse
	
	diffusemap	textures/vega_custom_src/panel01_diffuse
	normalmap	textures/vega_custom_src/panel01_normal
	specularmap	textures/vega_custom_src/panel01_specular
	
	cull none
}

textures/vega_custom/panel01a
{
	qer_editorimage textures/vega_custom_src/panel01a_diffuse
	
	diffusemap	textures/vega_custom_src/panel01a_diffuse
	normalmap	textures/vega_custom_src/panel01_normal
	specularmap	textures/vega_custom_src/panel01_specular
}

textures/vega_custom/panel02
{
	qer_editorimage textures/vega_custom_src/panel02_diffuse
	
	diffusemap	textures/vega_custom_src/panel02_diffuse
	normalmap	textures/vega_custom_src/panel02_normal
	specularmap	textures/vega_custom_src/panel02_specular
}

textures/vega_custom/panel02a
{
	qer_editorimage textures/vega_custom_src/panel02a_diffuse
	
	diffusemap	textures/vega_custom_src/panel02a_diffuse
	normalmap	textures/vega_custom_src/panel02_normal
	specularmap	textures/vega_custom_src/panel02_specular
}

textures/vega_custom/panel03
{
	qer_editorimage textures/vega_custom_src/panel03_diffuse
	
	diffusemap	textures/vega_custom_src/panel03_diffuse
	normalmap	textures/vega_custom_src/panel03_normal
	specularmap	textures/vega_custom_src/panel03_specular
}

textures/vega_custom/panel03a
{
	qer_editorimage textures/vega_custom_src/panel03a_diffuse
	
	diffusemap	textures/vega_custom_src/panel03a_diffuse
	normalmap	textures/vega_custom_src/panel03_normal
	specularmap	textures/vega_custom_src/panel03_specular
}

textures/vega_custom/panel04
{
	qer_editorimage textures/vega_custom_src/panel04_diffuse
	
	diffusemap	textures/vega_custom_src/panel04_diffuse
	normalmap	textures/vega_custom_src/panel04_normal
	specularmap	textures/vega_custom_src/panel04_specular
}

textures/vega_custom/panel04a
{
	qer_editorimage textures/vega_custom_src/panel04a_diffuse
	
	diffusemap	textures/vega_custom_src/panel04a_diffuse
	normalmap	textures/vega_custom_src/panel04_normal
	specularmap	textures/vega_custom_src/panel04_specular
}

// panel with lights side)
textures/vega_custom/panel05_300
{
	qer_editorimage textures/vega_custom_src/panel05_diffuse
	
	diffusemap	textures/vega_custom_src/panel05_diffuse
	normalmap	textures/vega_custom_src/panel05_normal
	specularmap	textures/vega_custom_src/panel05_specular
	glowmap         textures/vega_custom_src/panel05_glow
	
	q3map_surfacelight 300
}

textures/vega_custom/panel05_500
{
	qer_editorimage textures/vega_custom_src/panel05_diffuse
	
	diffusemap	textures/vega_custom_src/panel05_diffuse
	normalmap	textures/vega_custom_src/panel05_normal
	specularmap	textures/vega_custom_src/panel05_specular
	glowmap         textures/vega_custom_src/panel05_glow
	
	q3map_surfacelight 500
}

// panel with lights (centered)
textures/vega_custom/panel06_300
{
	qer_editorimage textures/vega_custom_src/panel06_diffuse
	
	diffusemap	textures/vega_custom_src/panel06_diffuse
	normalmap	textures/vega_custom_src/panel06_normal
	specularmap	textures/vega_custom_src/panel06_specular
	glowmap         textures/vega_custom_src/panel06_glow
	
	q3map_surfacelight 300
}

textures/vega_custom/panel06_500
{
	qer_editorimage textures/vega_custom_src/panel06_diffuse
	
	diffusemap	textures/vega_custom_src/panel06_diffuse
	normalmap	textures/vega_custom_src/panel06_normal
	specularmap	textures/vega_custom_src/panel06_specular
	glowmap         textures/vega_custom_src/panel06_glow
	
	q3map_surfacelight 500
}

textures/vega_custom/panel06broken
{
	qer_editorimage textures/vega_custom_src/panel06broken_diffuse
	
	diffusemap	textures/vega_custom_src/panel06broken_diffuse
	normalmap	textures/vega_custom_src/panel06_normal
	specularmap	textures/vega_custom_src/panel06_specular
	
	q3map_surfacelight 100
	
	// -- lightmap style does not work
	// q3map_lightstyle 1	
	// -- add the following to worldspawn
	// _style1rgbGen wave sawtooth 0.0 1.0 0 0.5
	
	{
		map textures/vega_custom_src/panel06_glow
		blendfunc add
		rgbGen wave sawtooth 0.0 1.0 0 0.5
	}
}

textures/vega_custom/panel07
{
	qer_editorimage textures/vega_custom_src/panel07_diffuse
	
	diffusemap	textures/vega_custom_src/panel07_diffuse
	normalmap	textures/vega_custom_src/panel07_normal
	specularmap	textures/vega_custom_src/panel07_specular
}

textures/vega_custom/panel07a
{
	qer_editorimage textures/vega_custom_src/panel07a_diffuse
	
	diffusemap	textures/vega_custom_src/panel07a_diffuse
	normalmap	textures/vega_custom_src/panel07_normal
	specularmap	textures/vega_custom_src/panel07_specular
}

textures/vega_custom/panel07b
{
	qer_editorimage textures/vega_custom_src/panel07b_diffuse
	
	diffusemap	textures/vega_custom_src/panel07b_diffuse
	normalmap	textures/vega_custom_src/panel07_normal
	specularmap	textures/vega_custom_src/panel07_specular
}

textures/vega_custom/panel07c
{
	qer_editorimage textures/vega_custom_src/panel07c_diffuse
	
	diffusemap	textures/vega_custom_src/panel07c_diffuse
	normalmap	textures/vega_custom_src/panel07_normal
	specularmap	textures/vega_custom_src/panel07_specular
}

// beige panels
textures/vega_custom/panel08
{
	qer_editorimage textures/vega_custom_src/panel08_diffuse
	
	diffusemap	textures/vega_custom_src/panel08_diffuse
	normalmap	textures/vega_custom_src/panel08_normal
	specularmap	textures/vega_custom_src/panel08_specular
}

// beige panels with light strips
textures/vega_custom/panel08a_300
{
	qer_editorimage textures/vega_custom_src/panel08a_diffuse
	
	diffusemap	textures/vega_custom_src/panel08a_diffuse
	normalmap	textures/vega_custom_src/panel08_normal
	specularmap	textures/vega_custom_src/panel08_specular
	glowmap         textures/vega_custom_src/panel08a_glow
	
	q3map_surfacelight 300
	q3map_lightRGB 1.0 1.0 0.93
}

// metal panel with round blue lights
textures/vega_custom/light01_300
{
	qer_editorimage textures/vega_custom_src/light01_diffuse
	
	diffusemap	textures/vega_custom_src/light01_diffuse
	normalmap	textures/vega_custom_src/light01_normal
	specularmap	textures/vega_custom_src/light01_specular
	glowmap         textures/vega_custom_src/light01_glow
	
	q3map_surfacelight 300
	// blue #73C0D7
	q3map_lightRGB 0.6078 0.7529 0.8431
}

// metal panel (dark) with round blue lights
textures/vega_custom/light01a_300
{
	qer_editorimage textures/vega_custom_src/light01a_diffuse
	
	diffusemap	textures/vega_custom_src/light01a_diffuse
	normalmap	textures/vega_custom_src/light01_normal
	specularmap	textures/vega_custom_src/light01_specular
	glowmap         textures/vega_custom_src/light01_glow
	
	q3map_surfacelight 300
	// blue #73C0D7
	q3map_lightRGB 0.6078 0.7529 0.8431
}

// metal panel with round brown lights
textures/vega_custom/light02_300
{
	qer_editorimage textures/vega_custom_src/light02_qer
	
	diffusemap	textures/vega_custom_src/light02_diffuse
	normalmap	textures/vega_custom_src/light02_normal
	specularmap	textures/vega_custom_src/light02_specular
	glowmap         textures/vega_custom_src/light02_glow
	
	q3map_surfacelight 300
	// brown #BEB39A
	q3map_lightRGB 0.745098 0.701961 0.603922
}

// metal panel with round brown lights (no light)
textures/vega_custom/light02
{
	qer_editorimage textures/vega_custom_src/light02_diffuse
	
	diffusemap	textures/vega_custom_src/light02_diffuse
	normalmap	textures/vega_custom_src/light02_normal
	specularmap	textures/vega_custom_src/light02_specular
}

// metal panel (dark) with round brown lights
textures/vega_custom/light02a_300
{
	qer_editorimage textures/vega_custom_src/light02a_qer
	
	diffusemap	textures/vega_custom_src/light02a_diffuse
	normalmap	textures/vega_custom_src/light02_normal
	specularmap	textures/vega_custom_src/light02_specular
	glowmap         textures/vega_custom_src/light02_glow
	
	q3map_surfacelight 300
	// brown #BEB39A
	q3map_lightRGB 0.745098 0.701961 0.603922
}

// metal panel (dark) with round brown lights (no light)
textures/vega_custom/light02a
{
	qer_editorimage textures/vega_custom_src/light02a_diffuse
	
	diffusemap	textures/vega_custom_src/light02a_diffuse
	normalmap	textures/vega_custom_src/light02_normal
	specularmap	textures/vega_custom_src/light02_specular
}

// small round blue light (blue metal background)
textures/vega_custom/light03_1500
{
	qer_editorimage textures/vega_custom_src/light03_diffuse
	
	diffusemap	textures/vega_custom_src/light03_diffuse
	normalmap	textures/vega_custom_src/light03_normal
	specularmap	textures/vega_custom_src/light03_specular
	glowmap         textures/vega_custom_src/light03_glow
	
	q3map_surfacelight 1500
	// blue #73C0D7
	q3map_lightRGB 0.6078 0.7529 0.8431
}

// small round blue light (dark metal background)
textures/vega_custom/light03a_1500
{
	qer_editorimage textures/vega_custom_src/light03a_diffuse
	
	diffusemap	textures/vega_custom_src/light03a_diffuse
	normalmap	textures/vega_custom_src/light03_normal
	specularmap	textures/vega_custom_src/light03_specular
	glowmap         textures/vega_custom_src/light03_glow
	
	q3map_surfacelight 1500
	// blue #73C0D7
	q3map_lightRGB 0.6078 0.7529 0.8431
}

// small round brown light (blue metal background)
textures/vega_custom/light04_1500
{
	qer_editorimage textures/vega_custom_src/light04_diffuse
	
	diffusemap	textures/vega_custom_src/light04_diffuse
	normalmap	textures/vega_custom_src/light04_normal
	specularmap	textures/vega_custom_src/light04_specular
	glowmap         textures/vega_custom_src/light04_glow
	
	q3map_surfacelight 1500
	// brown #BEB39A
	q3map_lightRGB 0.745098 0.701961 0.603922
}

// small round brown light (dark metal background)
textures/vega_custom/light04a_1500
{
	qer_editorimage textures/vega_custom_src/light04a_diffuse
	
	diffusemap	textures/vega_custom_src/light04a_diffuse
	normalmap	textures/vega_custom_src/light04_normal
	specularmap	textures/vega_custom_src/light04_specular
	glowmap         textures/vega_custom_src/light04_glow
	
	q3map_surfacelight 1500
	// brown #BEB39A
	q3map_lightRGB 0.745098 0.701961 0.603922
}

// small square light
textures/vega_custom/squarelight01_off
{
	qer_editorimage textures/vega_custom_src/squarelight01_off_diffuse
	
	diffusemap	textures/vega_custom_src/squarelight01_off_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular
}

textures/vega_custom/squarelight01_white_1500
{
	qer_editorimage textures/vega_custom_src/squarelight01_white_qer
	
	q3map_surfacelight 1500
	
	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
        }
}

textures/vega_custom/squarelight01_blue_1500
{
	qer_editorimage textures/vega_custom_src/squarelight01_blue_qer
	
	// blue #73C0D7
	q3map_lightRGB 0.6078 0.7529 0.8431
	q3map_surfacelight 1500
	
	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular	
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
            red 0.6078 
            green 0.7529 
            blue 0.8431
        }
}

textures/vega_custom/squarelight01_red_1500
{
	qer_editorimage textures/vega_custom_src/squarelight01_red_qer
	
	// red
	q3map_lightRGB 1.0 0.0 0.0
	q3map_surfacelight 1500

	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular	
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
            red 1.0
            green 0.0
            blue 0.0
        }
}

textures/vega_custom/squarelight01_green_1500
{
	qer_editorimage textures/vega_custom_src/squarelight01_green_qer
	
	// green
	q3map_lightRGB 0.0 1.0 0.0
	q3map_surfacelight 1500

	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular	
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
            red 0.0
            green 1.0
            blue 0.0
        }
}

textures/vega_custom/squarelight01_yellow_1500
{
	qer_editorimage textures/vega_custom_src/squarelight01_yellow_qer
	
	// yellow
	q3map_lightRGB 1.0 1.0 0.0
	q3map_surfacelight 1500

	diffusemap	textures/vega_custom_src/squarelight01_diffuse
	normalmap	textures/vega_custom_src/squarelight01_normal
	specularmap	textures/vega_custom_src/squarelight01_specular	
	{
            map textures/vega_custom_src/squarelight01_glow
            blend add
            red 1.0
            green 1.0
            blue 0.0
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// dirt

textures/vega_custom/dirt01
{
	qer_editorimage textures/vega_custom_src/dirt01_diffuse
	
	diffusemap	textures/vega_custom_src/dirt01_diffuse
	normalmap	textures/vega_custom_src/dirt01_normal
	specularmap	textures/vega_custom_src/dirt01_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// glass

textures/vega_custom/glass01
{
	qer_editorimage textures/vega_custom_src/glass01_blend
	qer_blend .7
	
	cull none
	
	{
                map textures/vega_custom_src/glass01_env
		blendFunc gl_dst_color gl_one
		tcGen environment
	}
        {
                map textures/vega_custom_src/glass01_blend
		blendfunc filter
        }
        {
                map $lightmap
                blendFunc gl_dst_color gl_one
        }
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// rust

textures/vega_custom/rust01
{
	qer_editorimage textures/vega_custom_src/rust01_diffuse
	
	diffusemap	textures/vega_custom_src/rust01_diffuse
	normalmap	textures/vega_custom_src/rust01_normal
	specularmap	textures/vega_custom_src/rust01_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// tiles

textures/vega_custom/tile01
{
	qer_editorimage textures/vega_custom_src/tile01_diffuse
	
	diffusemap	textures/vega_custom_src/tile01_diffuse
	normalmap	textures/vega_custom_src/tile01_normal
	specularmap	textures/vega_custom_src/tile01_specular
}

textures/vega_custom/tile01a
{
	qer_editorimage textures/vega_custom_src/tile01a_diffuse
	
	diffusemap	textures/vega_custom_src/tile01a_diffuse
	normalmap	textures/vega_custom_src/tile01_normal
	specularmap	textures/vega_custom_src/tile01_specular
}

textures/vega_custom/tile02
{
	qer_editorimage textures/vega_custom_src/tile02_diffuse
	
	diffusemap	textures/vega_custom_src/tile02_diffuse
	normalmap	textures/vega_custom_src/tile02_normal
	specularmap	textures/vega_custom_src/tile02_specular
}

textures/vega_custom/tile02a
{
	qer_editorimage textures/vega_custom_src/tile02a_diffuse
	
	diffusemap	textures/vega_custom_src/tile02a_diffuse
	normalmap	textures/vega_custom_src/tile02_normal
	specularmap	textures/vega_custom_src/tile02_specular
}

textures/vega_custom/tile03
{
	qer_editorimage textures/vega_custom_src/tile03_diffuse
	
	diffusemap	textures/vega_custom_src/tile03_diffuse
	normalmap	textures/vega_custom_src/tile03_normal
	specularmap	textures/vega_custom_src/tile03_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// trims

textures/vega_custom/trim01
{
	qer_editorimage textures/vega_custom_src/trim01_diffuse
	
	diffusemap	textures/vega_custom_src/trim01_diffuse
	normalmap	textures/vega_custom_src/trim01_normal
	specularmap	textures/vega_custom_src/trim01_specular
}

textures/vega_custom/trim01a
{
	qer_editorimage textures/vega_custom_src/trim01a_diffuse
	
	diffusemap	textures/vega_custom_src/trim01a_diffuse
	normalmap	textures/vega_custom_src/trim01_normal
	specularmap	textures/vega_custom_src/trim01_specular
}

textures/vega_custom/trim02
{
	qer_editorimage textures/vega_custom_src/trim02_diffuse
	
	diffusemap	textures/vega_custom_src/trim02_diffuse
	normalmap	textures/vega_custom_src/trim02_normal
	specularmap	textures/vega_custom_src/trim02_specular
}

textures/vega_custom/trim02a
{
	qer_editorimage textures/vega_custom_src/trim02a_diffuse
	
	diffusemap	textures/vega_custom_src/trim02a_diffuse
	normalmap	textures/vega_custom_src/trim02_normal
	specularmap	textures/vega_custom_src/trim02_specular
}

textures/vega_custom/trim03
{
	qer_editorimage textures/vega_custom_src/trim03_diffuse
	
	diffusemap	textures/vega_custom_src/trim03_diffuse
	normalmap	textures/vega_custom_src/trim03_normal
	specularmap	textures/vega_custom_src/trim03_specular
}

textures/vega_custom/trim03a
{
	qer_editorimage textures/vega_custom_src/trim03a_diffuse
	
	diffusemap	textures/vega_custom_src/trim03a_diffuse
	normalmap	textures/vega_custom_src/trim03_normal
	specularmap	textures/vega_custom_src/trim03_specular
}

textures/vega_custom/trim03b
{
	qer_editorimage textures/vega_custom_src/trim03b_diffuse
	
	diffusemap	textures/vega_custom_src/trim03b_diffuse
	normalmap	textures/vega_custom_src/trim03_normal
	specularmap	textures/vega_custom_src/trim03_specular
}

textures/vega_custom/trim03b_white_1000
{
	qer_editorimage textures/vega_custom_src/trim03b_white_qer
	
	normalmap	textures/vega_custom_src/trim03_normal
	diffusemap	textures/vega_custom_src/trim03b_light_diffuse
	specularmap	textures/vega_custom_src/trim03b_light_specular
	glowmap         textures/vega_custom_src/trim03b_white_glow
	
	q3map_surfacelight 1000
}

textures/vega_custom/trim03b_green_1000
{
	qer_editorimage textures/vega_custom_src/trim03b_green_qer
	
	normalmap	textures/vega_custom_src/trim03_normal
	diffusemap	textures/vega_custom_src/trim03b_light_diffuse	
	specularmap	textures/vega_custom_src/trim03b_light_specular
	glowmap         textures/vega_custom_src/trim03b_green_glow
		
        // green #b3ffb3
        q3map_lightRGB 0.7020 1.0 0.7020
        
	q3map_surfacelight 1000
}

textures/vega_custom/trim04
{
	qer_editorimage textures/vega_custom_src/trim04_diffuse
	
	diffusemap	textures/vega_custom_src/trim04_diffuse
	normalmap	textures/vega_custom_src/trim04_normal
	specularmap	textures/vega_custom_src/trim04_specular
}

textures/vega_custom/trim05
{
	qer_editorimage textures/vega_custom_src/trim05_diffuse
	
	diffusemap	textures/vega_custom_src/trim05_diffuse
	normalmap	textures/vega_custom_src/trim05_normal
	specularmap	textures/vega_custom_src/trim05_specular
}

textures/vega_custom/trim06
{
	qer_editorimage textures/vega_custom_src/trim06_diffuse
	
	diffusemap	textures/vega_custom_src/trim06_diffuse
	normalmap	textures/vega_custom_src/trim06_normal
	specularmap	textures/vega_custom_src/trim06_specular
}

textures/vega_custom/trim07
{
	qer_editorimage textures/vega_custom_src/trim07_diffuse
	
	diffusemap	textures/vega_custom_src/trim07_diffuse
	normalmap	textures/vega_custom_src/trim07_normal
	specularmap	textures/vega_custom_src/trim07_specular
}

// elevator light strip
textures/vega_custom/trim08
{
	qer_editorimage textures/vega_custom_src/trim08_qer
	
	diffusemap	textures/vega_custom_src/trim08_diffuse
	normalmap	textures/vega_custom_src/trim08_normal
	specularmap	textures/vega_custom_src/trim08_specular
	
	q3map_surfacelight 500
	// yellow #ffff80
	q3map_lightRGB  1.0 1.0 0.5020
	
	{
		map textures/vega_custom_src/trim08_glow_1
		blendfunc add
		// rgbGen wave <func> <base> <amp> <phase> <freq>
		rgbGen wave square .25 0.75 0 1
	}
	{
		map textures/vega_custom_src/trim08_glow_2
		blendfunc add
		// rgbGen wave <func> <base> <amp> <phase> <freq>
		rgbGen wave square .25 0.75 .5 1
	}
}

// ---- floors

textures/vega_custom/floor01
{
	qer_editorimage textures/vega_custom_src/floor01_diffuse
	
	diffusemap	textures/vega_custom_src/floor01_diffuse
	normalmap	textures/vega_custom_src/floor01_normal
	specularmap	textures/vega_custom_src/floor01_specular
}

textures/vega_custom/floor02
{
	qer_editorimage textures/vega_custom_src/floor02_diffuse
	
	diffusemap	textures/vega_custom_src/floor02_diffuse
	normalmap	textures/vega_custom_src/floor02_normal
	specularmap	textures/vega_custom_src/floor02_specular
	
	surfaceparm metalsteps
}

// ---- pipes

textures/vega_custom/pipe01
{
	qer_editorimage textures/vega_custom_src/pipe01_diffuse
	
	diffusemap	textures/vega_custom_src/pipe01_diffuse
	normalmap	textures/vega_custom_src/pipe01_normal
	specularmap	textures/vega_custom_src/pipe01_specular
}

textures/vega_custom/pipe01a
{
	qer_editorimage textures/vega_custom_src/pipe01a_diffuse
	
	diffusemap	textures/vega_custom_src/pipe01_diffuse
	normalmap	textures/vega_custom_src/pipe01_normal
	specularmap	textures/vega_custom_src/pipe01_specular
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// wood

textures/vega_custom/wood01
{
	qer_editorimage textures/vega_custom_src/wood01_diffuse
	
	diffusemap	textures/vega_custom_src/wood01_diffuse
	normalmap	textures/vega_custom_src/wood01_normal
	specularmap	textures/vega_custom_src/wood01_specular
}

// ---- controls

textures/vega_custom/controls01
{
	qer_editorimage textures/vega_custom_src/controls01_diffuse
	
	diffusemap	textures/vega_custom_src/controls01_diffuse
	normalmap	textures/vega_custom_src/controls01_normal
	specularmap	textures/vega_custom_src/controls01_specular
	
	{
		map textures/vega_custom_src/controls01_glow
		blendfunc add
		rgbGen wave square 0.0 1.0 0 1
	}
}

textures/vega_custom/controls02
{
	qer_editorimage textures/vega_custom_src/controls02_qer
	
	diffusemap	textures/vega_custom_src/controls02_diffuse
	normalmap	textures/vega_custom_src/controls02_normal
	specularmap	textures/vega_custom_src/controls02_specular
	glowmap		textures/vega_custom_src/controls02_glow
	
	q3map_surfacelight 50
	q3map_lightRGB 1.0 1.0 0.93
}

textures/vega_custom/controls03
{
	qer_editorimage textures/vega_custom_src/controls03_diffuse
	
	diffusemap	textures/vega_custom_src/controls03_diffuse
	normalmap	textures/vega_custom_src/controls03_normal
	specularmap	textures/vega_custom_src/controls03_specular
	
	q3map_surfacelight 50
	q3map_lightRGB 1.0 0.0 0.0
	
	{
		map textures/vega_custom_src/controls03_glow
		blendfunc add
		rgbGen wave square 0.0 1.0 0 1
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// posters

textures/vega_custom/poster_radioactive
{
	qer_editorimage textures/vega_custom_src/poster_radioactive_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/poster_radioactive_diffuse
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

textures/vega_custom/poster_vodka
{
	qer_editorimage textures/vega_custom_src/poster_vodka_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/poster_vodka_diffuse
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

// kyp name tag
textures/vega_custom/poster_kyp
{
	qer_editorimage textures/vega_custom_src/poster_kyp_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/poster_kyp_diffuse
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

// easter eggs drawing by Josky=KCT=
textures/vega_custom/poster_eastereggs
{
	qer_editorimage textures/vega_custom_src/poster_eastereggs_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/poster_eastereggs_diffuse
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

textures/vega_custom/poster_voltage
{
	qer_editorimage textures/vega_custom_src/poster_voltage_diffuse

        surfaceparm nomarks
	surfaceparm nonsolid
	
	polygonOffset
	sort decal
        noShadows
        
	{
		map textures/vega_custom_src/poster_voltage_diffuse
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
// safebox

textures/vega_custom/safebox41
{
        qer_editorimage textures/vega_custom_src/safebox41_diffuse
    
        diffusemap	textures/vega_custom_src/safebox41_diffuse
	normalmap	textures/vega_custom_src/safebox_normal
	specularmap	textures/vega_custom_src/safebox41_specular
}

textures/vega_custom/safebox42
{
        qer_editorimage textures/vega_custom_src/safebox42_diffuse
    
        diffusemap	textures/vega_custom_src/safebox42_diffuse
	normalmap	textures/vega_custom_src/safebox_small_normal
	specularmap	textures/vega_custom_src/safebox42_specular
}

textures/vega_custom/safebox46
{
        qer_editorimage textures/vega_custom_src/safebox46_diffuse
    
        diffusemap	textures/vega_custom_src/safebox46_diffuse
	normalmap	textures/vega_custom_src/safebox_small_normal
	specularmap	textures/vega_custom_src/safebox46_specular
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
// water surface

textures/vega_custom/water
{
	qer_editorimage textures/vega_custom_src/water_qer
        qer_trans .5
  
        surfaceparm nonsolid
        surfaceparm water
        cull none
        
        q3map_globaltexture
        
        deformVertexes wave 64 sin .25 .25 0 .5
        {
                map textures/vega_custom_src/water_blend
                blendFunc GL_dst_color GL_one
                rgbgen identity
                tcmod scale .5 .5
		tcmod scroll .01 .01
        }
}
    
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// plasma

// plasma in glass pipe
textures/vega_custom/plasma_pipe
{
	qer_editorimage textures/vega_custom_src/plasma_pipe_qer
	qer_trans .7
	
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	cull none
	
	q3map_surfacelight 150	
	// radioactive green #00f200
	q3map_lightRGB 0.0 0.95 0.0
	
        {
                map textures/vega_custom_src/plasma_pipe_blend
                tcmod scroll 0.0 0.5
		blendfunc blend
        }
        {
                map textures/vega_custom_src/glass01_blend
		blendfunc filter
        }

}

// plasma whirlpool
textures/vega_custom/plasma_whirl
{
	qer_editorimage textures/vega_custom_src/plasma_whirl_qer
        
        q3map_surfacelight 150
        // radioactive green #00f200
	q3map_lightRGB 0.0 0.95 0.0
	q3map_globaltexture

	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks        
	
        cull none

        // deformVertexes wave <div> <func> <base> <amplitude> <phase> <freq>
        deformVertexes wave 64 sin .25 .25 0 .5
        
        {
                map textures/vega_custom_src/plasma_whirl_blend
		//tcmod scale .5 .5
                //tcmod turb 1.0 0.5 0.0 0.1
                tcmod rotate 20
                blendfunc blend
        }
}

// plasma content, has the slime surfaceparm, but doesn't draw anything
// base in a shader from the Tremulous map slimepunk by Taiyo.uk
textures/vega_custom/plasma_nodraw
{
	qer_editorimage textures/vega_custom_src/plasma_nodraw_qer
	qer_trans 0.7
	
	surfaceparm noimpact
	surfaceparm slime
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
}

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

// grate01
textures/vega_custom/grate01
{
	qer_editorimage textures/vega_custom_src/grate01_blend
	qer_trans .7
	
	surfaceparm nomarks
	surfaceparm metalsteps
	
	// polygonOffset fixes Z-fighting with objects on top of the grate
	polygonOffset
	cull none
	
	{
		map textures/vega_custom_src/grate01_blend
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

textures/vega_custom/grate01_nonsolid
{
	qer_editorimage textures/vega_custom_src/grate01_blend
	qer_trans .7
	
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm metalsteps
	
	cull none
	
	{
		map textures/vega_custom_src/grate01_blend
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

// grate02
textures/vega_custom/grate02
{
	qer_editorimage textures/vega_custom_src/grate02_blend
	qer_trans .7
	
	surfaceparm nomarks
	surfaceparm metalsteps
	
	// polygonOffset fixes Z-fighting with objects on top of the grate
	polygonOffset
	cull none
	
	{
		map textures/vega_custom_src/grate02_blend
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

textures/vega_custom/grate02_nonsolid
{
	qer_editorimage textures/vega_custom_src/grate02_blend
	qer_trans .7
	
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm metalsteps
	
	cull none
	
	{
		map textures/vega_custom_src/grate02_blend
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
