#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out float VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v2 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v3 = vec4(0.0);
    v3.x = v2.x;
    vec4 v4 = v3;
    v4.y = v2.y;
    vec4 v5 = v4;
    v5.z = v2.z;
    vec4 v6 = v5;
    v6.w = 0.0;
    vec4 v7 = vec4(POSITION.xyz, 0.0);
    v7.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v8 = vec4(v0, 0.0);
    v8.w = inversesqrt(COLOR1.y * 0.174534320831298828125);
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = max(0.0500000007450580596923828125, COLOR1.w * 0.0039215688593685626983642578125);
    VARYING2 = COLOR0;
    VARYING3 = v6;
    VARYING4 = vec4(CB0[11].xyz - POSITION.xyz, v1.w);
    VARYING5 = v8;
    VARYING6 = v7;
}

