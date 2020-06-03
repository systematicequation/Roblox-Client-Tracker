#version 150

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
    vec4 Exposure_DoFDistance;
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

struct AdvancedUIShadingParams
{
    vec4 UvDesc;
    vec4 RcDesc;
};

uniform vec4 CB0[47];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) - CB3[0].y, (VARYING0.y * CB3[0].z) - CB3[0].w)) - CB3[1].xy;
    float f5 = f3.w * clamp(CB3[1].z - (length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0)), 0.0, 1.0);
    vec4 f6 = f3;
    f6.w = f5;
    vec4 f7 = f6;
    f7.w = f5;
    float f8 = clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f9 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[13].y, f8) * 5.0).xyz;
    bvec3 f10 = bvec3(CB0[13].w != 0.0);
    vec3 f11 = sqrt(clamp(mix(vec3(f10.x ? CB0[14].xyz.x : f9.x, f10.y ? CB0[14].xyz.y : f9.y, f10.z ? CB0[14].xyz.z : f9.z), (f7.xyz * f7.xyz).xyz, vec3(f8)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f11.x, f11.y, f11.z, f7.w);
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
