#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = -CB0[11].xyz;
    float v2 = dot(v0, v1);
    vec3 v3 = CB0[7].xyz - POSITION.xyz;
    vec4 v4 = vec4(POSITION.xyz, 1.0);
    vec4 v5 = v4 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v6 = vec4(dot(CB0[20], v4), dot(CB0[21], v4), dot(CB0[22], v4), 0.0);
    v6.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v7 = COLOR1.y * 0.50359570980072021484375;
    float v8 = clamp(v2, 0.0, 1.0);
    vec3 v9 = (CB0[10].xyz * v8) + (CB0[12].xyz * clamp(-v2, 0.0, 1.0));
    vec4 v10 = vec4(v9.x, v9.y, v9.z, vec4(0.0).w);
    v10.w = (v8 * CB0[23].w) * (COLOR1.y * exp2((v7 * dot(v0, normalize(v1 + normalize(v3)))) - v7));
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(v3, v5.w);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v10;
    VARYING7 = v6;
    VARYING8 = NORMAL.w;
}

