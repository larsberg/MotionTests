varying vec3 ePos;
varying vec3 normal;
varying vec2 uv;

void main()
{
	normal = normalize(gl_NormalMatrix * gl_Normal);
	
	uv = gl_MultiTexCoord0.xy;
	
	vec4 ecPosition = gl_ModelViewMatrix * gl_Vertex;
	ePos = normalize(ecPosition.xyz/ecPosition.w);
	gl_Position = gl_ProjectionMatrix * ecPosition;
	
	
}

