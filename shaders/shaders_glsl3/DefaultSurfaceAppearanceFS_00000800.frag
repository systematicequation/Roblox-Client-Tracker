#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    float f2 = f1.w;
    vec4 f3 = vec4(mix(VARYING2.xyz, f1.xyz, vec3(f2)), VARYING2.w);
    vec4 f4 = vec4(f1.xyz, VARYING2.w * f2);
    bvec4 f5 = bvec4(!(CB3[0].x == 0.0));
    vec4 f6 = vec4(f5.x ? f3.x : f4.x, f5.y ? f3.y : f4.y, f5.z ? f3.z : f4.z, f5.w ? f3.w : f4.w);
    vec3 f7 = f6.xyz;
    vec3 f8 = f7 * f7;
    vec4 f9 = f6;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec3 f12 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec4 f18 = texture(ShadowMapTexture, f12.xy);
    float f19 = f12.z;
    float f20 = (1.0 - ((step(f18.x, f19) * clamp(CB0[29].z + (CB0[29].w * abs(f19 - 0.5)), 0.0, 1.0)) * f18.y)) * f17.y;
    vec3 f21 = (((VARYING5.xyz * f20) + min((f16.xyz * (f16.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f17.x)), vec3(CB0[21].w))) * f11.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f11.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f20));
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = f6.w;
    float f26 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f27 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f0)), 0.0).xyz, max(CB0[18].y, f26) * 5.0).xyz;
    bvec3 f28 = bvec3(!(CB0[18].w == 0.0));
    vec3 f29 = mix(vec3(f28.x ? CB0[19].xyz.x : f27.x, f28.y ? CB0[19].xyz.y : f27.y, f28.z ? CB0[19].xyz.z : f27.z), f25.xyz, vec3(f26));
    vec4 f30 = f25;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec3 f33 = max(vec3(0.0), f32.xyz);
    vec4 f34 = f32;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    _entryPointOutput = f36;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
