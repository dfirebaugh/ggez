#version 330 core

layout(location=0)in vec3 position;
layout(location=1)in vec2 texCoord;

out vec2 TexCoord;

uniform mat4 world;
uniform mat4 view;
uniform mat4 project;

void main()
{
  gl_Position=project*view*world*vec4(position,1.);
  TexCoord=texCoord;// pass the texture coords on to the fragment shader
}
