function shader_set_fade( fade_r,fade_g,fade_b,fade_a )
{
	shader_set( color_fade_shader )
	var param = shader_get_uniform( color_fade_shader,"u_fadeCol" )
	shader_set_uniform_f( param,fade_r,fade_g,fade_b,fade_a )
}

function shader_set_highlight()
{
	shader_set_fade( 1.0,1.0,1.0,1.0 )
}

function shader_set_grayed_out()
{
	shader_set_fade( 0.4,0.4,0.4,1.0 )
}

function shader_set_transparent()
{
	shader_set_fade( 0.9,0.9,0.9,0.6 )
}

function shader_set_red()
{
	shader_set_fade( 0.7,0.2,0.2,1.0 )
}

function shader_set_darken()
{
	shader_set_fade( 0.8,0.7,0.6,1.0 )
}