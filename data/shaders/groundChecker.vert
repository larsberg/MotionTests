varying vec4 vertex;
varying vec3 lightDir;
varying vec3 ePos;
varying vec3 normal;

void main()
{
	vec4 lp = vec4(0.,3.,0.,1.);
//	lightPos =
	
	normal = normalize(gl_NormalMatrix * gl_Normal);
	
	vertex = gl_Vertex;
	
	vec4 ecPosition = gl_ModelViewMatrix * gl_Vertex;
	
	lightDir = vec3( gl_ModelViewMatrix * lp - ecPosition);
	
	
	ePos = normalize(ecPosition.xyz/ecPosition.w);
	
	gl_Position = gl_ProjectionMatrix * ecPosition;
}

