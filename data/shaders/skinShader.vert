//uniform mat4 bones[10];
uniform mat4 n0;
uniform mat4 n1;

attribute vec2 mIndices;
attribute vec3 color;
//attribute vec3 vertex;
//attribute vec3 normal;
//attribute vec3 boneIndices;
//attribute vec3 boneWeights;

//varying vec3 norm;
varying vec3 ePos;
varying vec3 col;

void main()
{
	vec4 v = vec4(0.);
	
	v += (n0 * gl_Vertex) * mIndices[0];
	v += (n1 * gl_Vertex) * mIndices[1];

	vec4 ecPosition = gl_ModelViewMatrix * vec4(v.xyz, 1.);
	ePos = normalize(ecPosition.xyz/ecPosition.w);
	gl_Position = gl_ProjectionMatrix * ecPosition;
	
	col = color * vec3(mIndices, 1.);
}

