//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4x3 gBoneMtx[48];
//   float4 gDayNightEffects;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorldViewProj   c8       4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//   gBoneMtx         c64    144
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 2.9469306705e-42 // 2103
    def c0, 765.005859, 1, 0, -1
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_normal v4
    dcl_tangent v5
    dcl_color v6
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord4 o3.xyz
    dcl_texcoord5 o4.xyz
    dcl_color o5
    dcl_texcoord6 o6
    mul r0, c0.x, v2
    mova a0, r0
    mul r0, v1.y, c64[a0.y]
    mad r0, c64[a0.x], v1.x, r0
    mad r0, c64[a0.z], v1.z, r0
    mad r0, c64[a0.w], v1.w, r0
    dp3 r1.x, v4, r0
    mul r2, v1.y, c65[a0.y]
    mad r2, c65[a0.x], v1.x, r2
    mad r2, c65[a0.z], v1.z, r2
    mad r2, c65[a0.w], v1.w, r2
    dp3 r1.y, v4, r2
    mul r3, v1.y, c66[a0.y]
    mad r3, c66[a0.x], v1.x, r3
    mad r3, c66[a0.z], v1.z, r3
    mad r3, c66[a0.w], v1.w, r3
    dp3 r1.z, v4, r3
    dp3 r4.x, v5, r0
    dp3 r4.y, v5, r2
    dp3 r4.z, v5, r3
    mul r5.xyz, r1.yzxw, r4.zxyw
    mad r5.xyz, r4.yzxw, r1.zxyw, -r5
    mov o2.xyz, r1
    mov o3.xyz, r4
    mul o4.xyz, r5, v5.w
    mul r1.xy, c45, v6
    add r1.x, r1.y, r1.x
    mov r1.yw, c0
    mad r1.x, r1.x, c39.z, r1.w
    mad o5.xy, c40.z, r1.x, r1.y
    mad r1, v0.xyzx, c0.yyyz, c0.zzzy
    dp4 r2.y, r1, r2
    mul r4, r2.y, c9
    dp4 r2.x, r1, r0
    dp4 r2.z, r1, r3
    mad r0, r2.x, c8, r4
    mov o6.xyz, r2
    mad r0, r2.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o10.zw, r0
    mov o2.w, r0.w
    mov o1.xy, v3
    mov o5.zw, v6
    mov o6.w, c0.y
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 44 instruction slots used
