//
// Unvanquished shader file for the map
// Vega industries: Research Outpust 13
//

// -----------------------------------------------------------------
// MODEL SHADERS

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
// globe model by Ingar, planet texture "Sedna" by Jestr

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
// vehicle model by Ingar, texture courtesy of TRaK

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
models/mapobjects/vega/monitor/display_text
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/monitor/display_text
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
// console model by Thorn

// console screens
models/mapobjects/vega/console/console_screens
{
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map models/mapobjects/vega/console/console_screens
	}
	{
		blendfunc blend
		map models/mapobjects/vega/console/console_waveform
		tcmod scroll -0.5 0.0
	}
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// ceiling light models and textures by Karvajalka

// rectangular ceiling light
models/mapobjects/vega/ceilinglight/ceilinglight1
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight1_p
	
	diffuseMap 	models/mapobjects/vega/ceilinglight/ceilinglight1_d
	normalMap	models/mapobjects/vega/ceilinglight/ceilinglight1_n
	specularMap	models/mapobjects/vega/ceilinglight/ceilinglight1_s
	glowMap		models/mapobjects/vega/ceilinglight/ceilinglight1_a
}

// tubular ceiling light
models/mapobjects/vega/ceilinglight/ceilinglight2
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight2_p
	
	diffuseMap 	models/mapobjects/vega/ceilinglight/ceilinglight2_d
	normalMap	models/mapobjects/vega/ceilinglight/ceilinglight2_n
	specularMap	models/mapobjects/vega/ceilinglight/ceilinglight2_s
	glowMap		models/mapobjects/vega/ceilinglight/ceilinglight2_a
}

// tubular ceiling light (brown)
models/mapobjects/vega/ceilinglight/ceilinglight2a
{
	qer_editorimage models/mapobjects/vega/ceilinglight/ceilinglight2a_p
	
	diffuseMap 	models/mapobjects/vega/ceilinglight/ceilinglight2_d
	normalMap	models/mapobjects/vega/ceilinglight/ceilinglight2_n
	specularMap	models/mapobjects/vega/ceilinglight/ceilinglight2_s
	glowMap		models/mapobjects/vega/ceilinglight/ceilinglight2a_a
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// terminal models and textures by Karvajalka, display textures by Ingar

models/mapobjects/vega/terminal/terminal1
{
	qer_editorimage models/mapobjects/vega/terminal/terminal1_p
	
	diffuseMap 	models/mapobjects/vega/terminal/terminal1_d
	normalMap	models/mapobjects/vega/terminal/terminal1_n
	specularMap	models/mapobjects/vega/terminal/terminal1_s
	glowMap 	models/mapobjects/vega/terminal/terminal1_a
}

models/mapobjects/vega/terminal/terminal2
{
	qer_editorimage models/mapobjects/vega/terminal/terminal2_p
	
	diffuseMap 	models/mapobjects/vega/terminal/terminal2_d
	normalMap	models/mapobjects/vega/terminal/terminal2_n
	specularMap	models/mapobjects/vega/terminal/terminal2_s
	glowMap 	models/mapobjects/vega/terminal/terminal2_a
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// cannister model and textures by Ingar

models/mapobjects/vega/cannister/cannister01
{
	qer_editorimage models/mapobjects/vega/cannister/cannister01
	
	diffusemap models/mapobjects/vega/cannister/cannister01
}

models/mapobjects/vega/cannister/cannister01_nocull
{
	qer_editorimage models/mapobjects/vega/cannister/cannister01
	
	cull none
	
	diffusemap models/mapobjects/vega/cannister/cannister01
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// cardboard box model and textures by Ingar

models/mapobjects/vega/box/box02
{
	qer_editorimage models/mapobjects/vega/box/box01
	
	// this box is open, the inside and thus the backside of the faces will be visible
	cull none
	polygonOffset
	
	diffuseMap models/mapobjects/vega/box/box01
}

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// animated pump model by Thorn

models/mapobjects/vega/pump/pump
{
	qer_editorimage models/mapobjects/vega/pump/pump
	{
		map models/mapobjects/vega/pump/pump
		rgbGen lightingDiffuse
	}
	// fake lightmap
	{
                map textures/shared_vega_src/base03a_d
		blendfunc filter
	}
}

models/mapobjects/vega/pump/pipe
{
	qer_editorimage textures/shared_vega_src/rust01_d
	{
		map textures/shared_vega_src/rust01_d
		rgbGen lightingDiffuse
	}
	// fake lightmap
	{
                map textures/shared_vega_src/base03a_d
		blendfunc filter
	}
	
}

models/mapobjects/vega/pump/needle
{
	qer_editorimage models/mapobjects/vega/pump/needle
	polygonOffset
        {
                map models/mapobjects/vega/pump/needle
		blendfunc blend
        }
}
