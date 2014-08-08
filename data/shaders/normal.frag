varying vec3 ePos;
varying vec3 normal;
varying vec2 uv;

void main()
{
	float fr = max(0., dot( normalize(normal), -normalize(ePos)) );
	gl_FragColor = vec4(normal * .5 + .5 + pow(fr, 16.), 1.);
}