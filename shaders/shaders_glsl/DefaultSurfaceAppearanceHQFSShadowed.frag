#version 110

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlags;
};

struct SAParams
{
    float overlay;
    float unused1;
    float unused2;
    float unused3;
};

uniform vec4 CB0[47];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = VARYING4.w * CB0[23].y;
    float f1 = clamp(1.0 - f0, 0.0, 1.0);
    vec4 f2 = texture2D(DiffuseMapTexture, VARYING0.xy);
    float f3 = f2.w;
    vec4 f4 = vec4(mix(VARYING2.xyz, f2.xyz, vec3(f3)), VARYING2.w);
    vec4 f5 = vec4(f2.xyz, VARYING2.w * f3);
    bvec4 f6 = bvec4(CB3[0].x != 0.0);
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec2 f8 = texture2D(NormalMapTexture, VARYING0.xy).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f1;
    vec4 f12 = texture2D(SpecularMapTexture, VARYING0.xy);
    vec3 f13 = normalize(((VARYING6.xyz * f11.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f11.y)) + (VARYING5.xyz * f10));
    vec3 f14 = f7.xyz;
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f21 = (1.0 - ((step(f20.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y;
    vec3 f22 = (f14 * f14).xyz;
    float f23 = CB0[26].w * f1;
    float f24 = max(f12.y, 0.04500000178813934326171875);
    float f25 = f12.x * f23;
    vec3 f26 = -CB0[11].xyz;
    vec3 f27 = normalize(f26 + normalize(VARYING4.xyz));
    float f28 = clamp(dot(f13, f26), 0.0, 1.0);
    float f29 = f24 * f24;
    float f30 = max(0.001000000047497451305389404296875, dot(f13, f27));
    float f31 = dot(f26, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (mix(vec3(0.039999999105930328369140625), f22, vec3(f25)) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f25;
    vec3 f39 = ((((((vec3(f38) - (f35 * (f23 * f38))) * CB0[10].xyz) * f28) * f21) + min((f18.xyz * (f18.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f19.x)), vec3(CB0[16].w))) * f22) + (((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[10].xyz) * f21);
    vec4 f40 = vec4(f39.x, f39.y, f39.z, vec4(0.0).w);
    f40.w = f7.w;
    vec2 f41 = min(VARYING0.wz, VARYING1.wz);
    float f42 = min(f41.x, f41.y) / f0;
    vec3 f43 = mix(CB0[14].xyz, (sqrt(clamp((f40.xyz * clamp((clamp((f0 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f42)) + f42, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f43.x, f43.y, f43.z, f40.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
