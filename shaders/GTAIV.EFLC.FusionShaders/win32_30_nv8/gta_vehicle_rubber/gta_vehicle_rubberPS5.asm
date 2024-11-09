// Summary: Disabled PC parameters that cause the dirt level in vehicle.ide to affect reflection intensity
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DirtSampler;
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float3 dirtColor;
//   float dirtLevel;
//   float4 globalScalars;
//   float3 matDiffuseColor;
//   float4 matDiffuseColor2;
//   float reflectivePowerED;
//   float3 specMapIntMask;
//   float specularColorFactor;
//   float specularFactor;
//   float4 stencil;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   globalScalars       c39      1
//   stencil             c52      1
//   matDiffuseColor     c66      1
//   matDiffuseColor2    c72      1
//   dirtLevel           c73      1
//   dirtColor           c74      1
//   specularFactor      c75      1
//   specularColorFactor c76      1
//   specMapIntMask      c77      1
//   reflectivePowerED   c78      1
//   LuminanceConstants  c79      1
//   TextureSampler      s0       1
//   DirtSampler         s1       1
//   SpecSampler         s2       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 1.0215465805e-42 // 729
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 9.99999975e-006, 0, 1, 0.5
    def c1, 0.001953125, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_color v2
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s0
    add r1.xyz, c0.x, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    texld r2, v0, s2
    mul r2.w, r2.w, c75.x
    mul r2.w, r2.w, c0.z
    dp3 r2.x, r2, c77
    mul r2.x, r2.x, c76.x
    mul r2.x, r2.x, c0.z
    mul r0.xyz, r0, c66
    mul r0, r0, v2
    dp3 r2.y, v2, c79
    mul oC2.z, r2.y, c39.z
    mov r2.yz, c0
    if_lt -c73.x, r2.y
      texld r3, v0, s1
      mul r3.y, r3.x, c73.x
      mad r4.x, r3.x, -c73.x, r2.z
      lrp r4.yzw, r3.y, c74.xxyz, r0.xxyz
      mad r5, r0.xxyz, c0.yzzz, c0.zyyy
      cmp r3, -r3.x, r5, r4
      mov r0.xyz, r3.yzww
    else
      mov r3.x, c0.z
    endif
    mul r2.x, r2.x, r3.x
    mul r2.xw, r2, c72.w
    mad r1.xyz, r1, r1.w, c0.z
    mul oC1.xyz, r1, c0.w
    mul oC2.x, r2.x, c0.w
    mul r1.x, r2.w, c1.x
    rsq r1.x, r1.x
    rcp oC2.y, r1.x
    mul r0.w, r0.w, c39.x
    mov oC0, r0
    mov oC1.w, r0.w
    mov oC2.w, r0.w
    mul oC3, r2.zyyy, c52.x
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	if_ne v9.y, c127.y
		rcp r20.z, c128.x
		mul r20.x, v9.w, r20.z
		mul r20.y, c128.y, r20.z
		log r20.x, r20.x
		log r20.y, r20.y
		rcp r20.y, r20.y
	else
		mov r20.x, v9.z
		rcp r20.y, v9.w
	endif
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 41 instruction slots used (3 texture, 38 arithmetic)
