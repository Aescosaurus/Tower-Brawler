varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vFadeColor;

void main()
{
    vec4 col = v_vColour * texture2D( gm_BaseTexture,v_vTexcoord );
	if( col.a > 0.0 )
	{
		// col = mix( col,vec4( 1.0,1.0,1.0,1.0 ),0.6 );
		col = mix( col,v_vFadeColor,0.6 );
	}
	gl_FragColor = col;
}
