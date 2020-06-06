#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec3 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(0.0);
    v2.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v3 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = vec4(POSITION.xyz, 0.0);
    v4.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v5 = vec4(v0, 0.0);
    v5.w = 0.0;
    gl_Position = v3;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, v3.w);
    VARYING5 = v5;
    VARYING6 = vec4(v1.x, v1.y, v1.z, v2.w);
    VARYING7 = v4;
    VARYING8 = NORMAL.w;
}

