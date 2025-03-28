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

// -----
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

// ------------------
// CUSTOM MAP SHADERS

// ===
// plain colors

// white (nonsolid, glowing)
textures/vega_custom/white_nonsolid_glow
{
	qer_editorImage textures/vega_custom_src/white_d

	{
		diffuseMap textures/vega_custom_src/white_d
		glowMap textures/vega_custom_src/white_d
	}

	surfaceparm nomarks
	surfaceparm nolightmap
}

// white (nonsolid, light)
textures/vega_custom/white_nonsolid_150
{
	qer_editorImage textures/vega_custom_src/white_d

	{
		diffuseMap textures/vega_custom_src/white_d
	}

	surfaceparm nomarks
	surfaceparm nolightmap

	q3map_surfacelight 150
}

// ===
// vega industries logos

textures/vega_custom/vega_banner
{
	qer_editorImage textures/vega_custom_src/vega_banner_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 384

	{
		diffuseMap textures/vega_custom_src/vega_banner_b
		alphafunc GE128
		depthwrite
	}
}

textures/vega_custom/vega_motto
{
	qer_editorImage textures/vega_custom_src/vega_motto_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/vega_motto_b
		alphafunc GE128
		depthwrite
	}
}


// ===
// arrows

textures/vega_custom/arrow_elevator
{
	qer_editorImage textures/vega_custom_src/arrow_elevator_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/arrow_elevator_b
		alphafunc GE128
		depthwrite
	}
}

textures/vega_custom/arrow_stairs
{
	qer_editorImage textures/vega_custom_src/arrow_stairs_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/arrow_stairs_b
		alphafunc GE128
		depthwrite
	}
}

// ===
// panel signs

textures/vega_custom/sign_gate1
{
	qer_editorImage textures/vega_custom_src/sign_gate1_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/sign_gate1_b
		alphafunc GE128
		depthwrite
	}
}

textures/vega_custom/sign_gate2
{
	qer_editorImage textures/vega_custom_src/sign_gate2_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/sign_gate2_b
		alphafunc GE128
		depthwrite
	}
}

textures/vega_custom/sign_hatch
{
	qer_editorImage textures/vega_custom_src/sign_hatch_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/sign_hatch_b
		alphafunc GE128
		depthwrite
	}
}

textures/vega_custom/sign_workshop
{
	qer_editorImage textures/vega_custom_src/sign_workshop_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	imageMinDimension 256

	{
		diffuseMap textures/vega_custom_src/sign_workshop_b
		alphafunc GE128
		depthwrite
	}
}

// ===
// holo signs

textures/vega_custom/holo_gate1
{
	qer_editorImage textures/vega_custom_src/arrow_gate1_p
	qer_trans .7

	cull none

	q3map_surfacelight 150

	// blue light #00baff
	q3map_lightRGB 0 .7924 1

	imageMinDimension 256

	// scrolling background
	{
		map textures/vega_custom_src/arrow_holo_b
		tcmod scroll 0 .25
		blendFunc filter
	}

	// arrow sign
	{
		map textures/vega_custom_src/arrow_gate1_b
		rgbGen identity
		blendFunc blend
	}
}

textures/vega_custom/holo_gate2_broken
{
	qer_editorImage textures/vega_custom_src/arrow_gate2_p
	qer_trans .7

	cull none

	q3map_surfacelight 150

	// blue light #00baff
	q3map_lightRGB 0 .7924 1

	imageMinDimension 256

	// scrolling background
	{
		map textures/vega_custom_src/arrow_holo_b
		tcmod scroll 0 .25
		blendFunc filter
	}

	// arrow sign
	{
		animmap 8 textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_b textures/vega_custom_src/arrow_gate2_distort_b

		rgbGen identity
		blendFunc blend
	}
}

textures/vega_custom/holo_workshop_broken
{
	qer_editorImage textures/vega_custom_src/arrow_workshop_p
	qer_trans .7

	cull none

	q3map_surfacelight 150

	// blue light #00baff
	q3map_lightRGB 0 .7924 1

	imageMinDimension 256

	// scrolling background
	{
		map textures/vega_custom_src/arrow_holo_b
		tcmod scroll 0 .25
		blendFunc filter
	}

	// arrow sign
	{
		animmap 8 textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_b textures/vega_custom_src/arrow_workshop_distort_b

		rgbGen identity
		blendFunc blend
	}
}

textures/vega_custom/holo_observatory
{
	qer_editorImage textures/vega_custom_src/arrow_observatory_p
	qer_trans .7

	cull none

	q3map_surfacelight 150

	// blue light #00baff
	q3map_lightRGB 0 .7924 1

	imageMinDimension 256

	// scrolling background
	{
		map textures/vega_custom_src/arrow_holo_b
		tcmod scroll 0 .25
		blendFunc filter
	}

	// arrow sign
	{
		map textures/vega_custom_src/arrow_observatory_b
		rgbGen identity
		blendFunc blend
	}
}

// ===
// starcharts

textures/vega_custom/starchart01
{
	qer_editorImage textures/vega_custom_src/starchart01_d

	q3map_surfacelight 150

	surfaceparm nolightmap

	{
		map textures/vega_custom_src/starchart01_d
	}
}

textures/vega_custom/starchart02
{
	qer_editorImage textures/vega_custom_src/starchart02_d

	q3map_surfacelight 150

	surfaceparm nolightmap

	{
		map textures/vega_custom_src/starchart02_d
	}

}

// ===
// overlays

textures/vega_custom/roadstrip
{
	qer_editorImage textures/vega_custom_src/roadstrip_b
	qer_alphaFunc greater .5

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	{
		diffuseMap textures/vega_custom_src/roadstrip_b
		alphafunc GE128
		depthwrite
	}
}

// wheeltracks
textures/vega_custom/wheeltracks
{
	qer_editorImage textures/vega_custom_src/wheeltracks_b
	qer_alphaFunc greater .135

	surfaceparm nomarks
	surfaceparm nonsolid

	polygonOffset
	sort decal
	noShadows

	{
		rgbGen identity
		map textures/vega_custom_src/wheeltracks_b
		blendFunc blend
		depthwrite
	}
}

// ===
// custom lights

textures/vega_custom/squarelight01_red_150
{
	qer_editorImage textures/shared_vega_src/squarelight01_red_p

	// red
	q3map_lightRGB 1 0 0
	q3map_surfacelight 150

	{
		diffuseMap textures/shared_vega_src/squarelight01_d
		normalMap textures/shared_vega_src/squarelight01_n
		normalFormat -X -Y Z
		specularMap textures/shared_vega_src/squarelight01_s
	}
	{
		map textures/shared_vega_src/squarelight01_a
		blendFunc add
		red 1
		green 0
		blue 0
	}
}

// ===
// misc effects

// holo projector beam
textures/vega_custom/holo_projector
{
	qer_editorImage textures/vega_custom_src/holo_projector_p
	qer_trans .7

	q3map_surfacelight 25
	q3map_lightRGB 1 1 1

	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks
	cull none

	{
		map textures/vega_custom_src/holo_projector_b
		tcmod scroll .10 .25

		blendFunc blend
	}
}


// ===
// Particle systems

// water bubble
textures/vega_custom/water_bubble
{
	qer_editorImage textures/vega_custom_src/bubble_b

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

	imageMinDimension 8

	{
		map textures/vega_custom_src/bubble_b
		blendFunc blend
	}
}

// ===
// smoke
textures/vega_custom/smoke
{
	qer_editorImage textures/vega_custom_src/smoke_b
	cull none
	entityMergable

	{
		map textures/vega_custom_src/smoke_b
		// blendFunc blend
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		// rgbGen vertex
		alphaGen vertex
	}
}
