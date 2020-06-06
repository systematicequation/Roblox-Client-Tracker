#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = ((((((texture(Texture0Texture, VARYING0) * CB1[3].x) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].w)) + VARYING0) * CB1[3].w)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].z)) + VARYING0) * CB1[3].z)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].y)) + VARYING0) * CB1[3].y)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].y)) + VARYING0) * CB1[3].y)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].z)) + VARYING0) * CB1[3].z)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].w)) + VARYING0) * CB1[3].w);
}

//$$Texture0Texture=s0
