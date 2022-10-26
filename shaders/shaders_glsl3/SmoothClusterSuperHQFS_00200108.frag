#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
in vec3 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec3 f5;
    if (VARYING8.w < 1.0)
    {
        ivec3 f6 = ivec3(VARYING8.xyz + vec3(0.5));
        int f7 = f6.x;
        int f8 = f6.y;
        int f9 = f6.z;
        float f10 = dot(VARYING0.xyz, vec3(CB5[f7 * 1 + 0].z, CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z));
        vec3 f11 = vec3(0.0);
        f11.x = clamp((f1.w * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f12 = f11;
        f12.y = clamp((f3.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.z = clamp((f4.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = VARYING0.xyz * f13;
        float f15 = 1.0 / f10;
        float f16 = 0.5 * f10;
        float f17 = f14.x;
        float f18 = f14.y;
        float f19 = f14.z;
        float f20 = clamp(((f17 - max(f18, f19)) + f16) * f15, 0.0, 1.0);
        float f21 = clamp(((f18 - max(f17, f19)) + f16) * f15, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f17, f18)) + f16) * f15, 0.0, 1.0);
        vec2 f23 = dFdx(VARYING1.xy);
        vec2 f24 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f20, f21, f22) / vec3((f20 + f21) + f22), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f23, f23), dot(f24, f24))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f25 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f26 = texture(AlbedoMapTexture, f0);
    vec4 f27 = texture(AlbedoMapTexture, f2);
    vec4 f28 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f29 = int(VARYING9.x + 0.5);
    int f30 = int(VARYING9.y + 0.5);
    int f31 = int(VARYING9.z + 0.5);
    vec2 f32 = f26.xz - vec2(0.5);
    float f33 = f32.x;
    vec4 f34 = f26.yxzw;
    f34.y = f33;
    float f35 = f32.y;
    vec4 f36 = f34;
    f36.z = f35;
    vec2 f37 = f27.xz - vec2(0.5);
    float f38 = f37.x;
    vec4 f39 = f27.yxzw;
    f39.y = f38;
    float f40 = f37.y;
    vec4 f41 = f39;
    f41.z = f40;
    vec2 f42 = f28.xz - vec2(0.5);
    float f43 = f42.x;
    vec4 f44 = f28.yxzw;
    f44.y = f43;
    float f45 = f42.y;
    vec4 f46 = f44;
    f46.z = f45;
    vec4 f47 = f36;
    f47.x = CB4[f29 * 1 + 0].x * f26.y;
    vec4 f48 = f47;
    f48.y = (CB4[f29 * 1 + 0].y * f33) - (CB4[f29 * 1 + 0].z * f35);
    vec4 f49 = f48;
    f49.z = (CB4[f29 * 1 + 0].z * f33) + (CB4[f29 * 1 + 0].y * f35);
    vec4 f50 = f41;
    f50.x = CB4[f30 * 1 + 0].x * f27.y;
    vec4 f51 = f50;
    f51.y = (CB4[f30 * 1 + 0].y * f38) - (CB4[f30 * 1 + 0].z * f40);
    vec4 f52 = f51;
    f52.z = (CB4[f30 * 1 + 0].z * f38) + (CB4[f30 * 1 + 0].y * f40);
    vec4 f53 = f46;
    f53.x = CB4[f31 * 1 + 0].x * f28.y;
    vec4 f54 = f53;
    f54.y = (CB4[f31 * 1 + 0].y * f43) - (CB4[f31 * 1 + 0].z * f45);
    vec4 f55 = f54;
    f55.z = (CB4[f31 * 1 + 0].z * f43) + (CB4[f31 * 1 + 0].y * f45);
    vec4 f56 = ((f49 * f5.x) + (f52 * f5.y)) + (f55 * f5.z);
    float f57 = f56.x;
    float f58 = f57 - f56.z;
    vec3 f59 = vec4(vec3(f58, f57, f58) + (vec3(f56.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f60 = CB0[11].xyz - VARYING5.xyz;
    float f61 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f62 = texture(NormalMapTexture, f0);
    vec4 f63 = texture(NormalMapTexture, f2);
    vec4 f64 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f65 = (((f62 * f5.x) + (f63 * f5.y)) + (f64 * f5.z)).wy * 2.0;
    vec2 f66 = f65 - vec2(1.0);
    vec3 f67 = normalize(((vec3(f66, sqrt(clamp(1.0 + dot(vec2(1.0) - f65, f66), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f68 = vec3(dot(VARYING7, f5));
    vec3 f69 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f68) * f67.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f68) * f67.y)) + (VARYING6 * f67.z)), 0.0).xyz;
    vec3 f70 = -CB0[16].xyz;
    float f71 = dot(f69, f70);
    vec3 f72 = normalize(f60);
    float f73 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f74 = CB0[31].w * f61;
    vec3 f75 = reflect(-f72, f69);
    vec3 f76 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f77 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f78 = VARYING4.yzx - (VARYING4.yzx * f77);
    vec4 f79 = texture(LightMapTexture, f78);
    vec4 f80 = texture(LightGridSkylightTexture, f78);
    vec4 f81 = vec4(clamp(f77, 0.0, 1.0));
    vec4 f82 = mix(f79, vec4(0.0), f81);
    vec4 f83 = mix(f80, vec4(1.0), f81);
    float f84 = f83.x;
    float f85 = f83.y;
    vec3 f86 = f76 - CB0[46].xyz;
    vec3 f87 = f76 - CB0[47].xyz;
    vec3 f88 = f76 - CB0[48].xyz;
    vec4 f89 = vec4(f76, 1.0) * mat4(CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f90 = textureLod(ShadowAtlasTexture, f89.xy, 0.0);
    vec2 f91 = vec2(0.0);
    f91.x = CB0[51].z;
    vec2 f92 = f91;
    f92.y = CB0[51].w;
    float f93 = (2.0 * f89.z) - 1.0;
    float f94 = exp(CB0[51].z * f93);
    float f95 = -exp((-CB0[51].w) * f93);
    vec2 f96 = (f92 * CB0[52].y) * vec2(f94, f95);
    vec2 f97 = f96 * f96;
    float f98 = f90.x;
    float f99 = max(f90.y - (f98 * f98), f97.x);
    float f100 = f94 - f98;
    float f101 = f90.z;
    float f102 = max(f90.w - (f101 * f101), f97.y);
    float f103 = f95 - f101;
    vec3 f104 = normalize(f72 - CB0[16].xyz);
    float f105 = clamp((f71 * CB0[14].w) * (((f71 * CB0[52].x) > 0.0) ? mix(min((f94 <= f98) ? 1.0 : clamp(((f99 / (f99 + (f100 * f100))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f95 <= f101) ? 1.0 : clamp(((f102 / (f102 + (f103 * f103))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f85, clamp((length(f76 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f85), 0.0, 1.0);
    float f106 = f73 * f73;
    float f107 = max(0.001000000047497451305389404296875, dot(f69, f104));
    float f108 = dot(f70, f104);
    float f109 = 1.0 - f108;
    float f110 = f109 * f109;
    float f111 = (f110 * f110) * f109;
    vec3 f112 = vec3(f111) + (vec3(0.039999999105930328369140625) * (1.0 - f111));
    float f113 = f106 * f106;
    float f114 = (((f107 * f113) - f107) * f107) + 1.0;
    float f115 = f73 * 5.0;
    vec3 f116 = vec4(f75, f115).xyz;
    vec3 f117 = textureLod(PrefilteredEnvIndoorTexture, f116, f115).xyz;
    vec3 f118;
    if (CB0[32].w == 0.0)
    {
        f118 = f117;
    }
    else
    {
        f118 = mix(f117, textureLod(PrefilteredEnvBlendTargetTexture, f116, f115).xyz, vec3(CB0[32].w));
    }
    vec4 f119 = texture(PrecomputedBRDFTexture, vec2(f73, max(9.9999997473787516355514526367188e-05, dot(f69, f72))));
    float f120 = f119.x;
    float f121 = f119.y;
    vec3 f122 = ((vec3(0.039999999105930328369140625) * f120) + vec3(f121)) / vec3(f120 + f121);
    vec3 f123 = f69 * f69;
    bvec3 f124 = lessThan(f69, vec3(0.0));
    vec3 f125 = vec3(f124.x ? f123.x : vec3(0.0).x, f124.y ? f123.y : vec3(0.0).y, f124.z ? f123.z : vec3(0.0).z);
    vec3 f126 = f123 - f125;
    float f127 = f126.x;
    float f128 = f126.y;
    float f129 = f126.z;
    float f130 = f125.x;
    float f131 = f125.y;
    float f132 = f125.z;
    vec3 f133 = (((((((f82.xyz * (f82.w * 120.0)) * 1.0) + (((vec3(1.0) - (f112 * f74)) * CB0[15].xyz) * f105)) + ((vec3(1.0) - (f122 * f74)) * (((((((CB0[40].xyz * f127) + (CB0[42].xyz * f128)) + (CB0[44].xyz * f129)) + (CB0[41].xyz * f130)) + (CB0[43].xyz * f131)) + (CB0[45].xyz * f132)) + (((((((CB0[34].xyz * f127) + (CB0[36].xyz * f128)) + (CB0[38].xyz * f129)) + (CB0[35].xyz * f130)) + (CB0[37].xyz * f131)) + (CB0[39].xyz * f132)) * f84)))) + ((CB0[32].xyz + (CB0[33].xyz * (f84 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f61)) * (f59 * f59)) + (((((f112 * (((f113 + (f113 * f113)) / max(((f114 * f114) * ((f108 * 3.0) + 0.5)) * ((f107 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f105)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f61 * VARYING0.w)) + ((mix(f118, textureLod(PrefilteredEnvTexture, f116, f115).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f75.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f84)) * f122) * f74));
    vec4 f134 = vec4(0.0);
    f134.x = f133.x;
    vec4 f135 = f134;
    f135.y = f133.y;
    vec4 f136 = f135;
    f136.z = f133.z;
    vec4 f137 = f136;
    f137.w = 1.0;
    float f138 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f139 = textureLod(PrefilteredEnvTexture, vec4(-f60, 0.0).xyz, max(CB0[18].y, f138) * 5.0).xyz;
    bvec3 f140 = bvec3(!(CB0[18].w == 0.0));
    vec3 f141 = mix(vec3(f140.x ? CB0[19].xyz.x : f139.x, f140.y ? CB0[19].xyz.y : f139.y, f140.z ? CB0[19].xyz.z : f139.z), f137.xyz, vec3(f138));
    vec4 f142 = f137;
    f142.x = f141.x;
    vec4 f143 = f142;
    f143.y = f141.y;
    vec4 f144 = f143;
    f144.z = f141.z;
    vec3 f145 = sqrt(clamp(f144.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f146 = f144;
    f146.x = f145.x;
    vec4 f147 = f146;
    f147.y = f145.y;
    vec4 f148 = f147;
    f148.z = f145.z;
    _entryPointOutput = f148;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
