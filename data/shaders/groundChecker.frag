varying vec4 vertex;
varying vec3 lightDir;
varying vec4 ecPosition;
varying vec3 ePos;
varying vec3 normal;

void main()
{
	float fr = max(0., dot( normalize(normal), normalize(lightDir)) );
	
	float check = mod( floor((vertex.x + 1.) * .5 * 50.), 2.);
	check += mod( floor((vertex.z + 1.) * .5 * 50.), 2.);
	check = mod(check, 2.);
	
	vec4 c1 = vec4( 0., 1., 1., 1.);
	vec4 c2 = vec4( 1., 1., 1., 1.);
	gl_FragColor = vec4( mix(c1.xyz, c2.xyz, check) * pow(fr, 100.), 1.);
}