
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Color;
attribute vec4 gtf_Vertex;
uniform mat4 gtf_ModelViewProjectionMatrix;
varying vec4 color;

void main (void)
{
	vec3 c = -gtf_Color.rgb;
	color = vec4(exp2(5.0 * c), 1.0);
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
}
