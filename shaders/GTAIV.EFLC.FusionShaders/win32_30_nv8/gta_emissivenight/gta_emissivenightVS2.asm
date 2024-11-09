//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorldViewProj;
//   float3 globalAnimUV0;
//   float3 globalAnimUV1;
//   float4 globalScreenSize;
//   float zShift;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorldViewProj   c8       4
//   globalScreenSize c44      1
//   globalAnimUV0    c208     1
//   globalAnimUV1    c209     1
//   zShift           c210     1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 2.9959761167e-42 // 2138
    def c0, 1, 0, 0.5, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_color o2
    mad r0.xyz, v2.xyxw, c0.xxyw, c0.yyxw
    dp3 o1.x, c208, r0
    dp3 o1.y, c209, r0
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mul r1.x, r0.w, c0.z
    mad o0.xy, c44.zwzw, r1.x, r0
    mov o10.x, c210.x
    add o0.z, r0.z, -c210.x
    add o10.z, r0.z, -c210.x
    mov o0.w, r0.w
    mov o10.w, r0.w
    mov o2, v1
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 12 instruction slots used
