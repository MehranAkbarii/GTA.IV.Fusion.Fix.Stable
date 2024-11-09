//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D SkyMapSampler;
//   float4 TexelSize;
//
//
// Registers:
//
//   Name          Reg   Size
//   ------------- ----- ----
//   TexelSize     c64      1
//   SkyMapSampler s0       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 1.0747959221e-42 // 767
    def c0, -1.5, -0.5, 0.5, 0.25
    def c1, 0.5, -1.5, 1.5, -0.5
    def c2, 0.111111112, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    mov r0.xyz, c0
    mad r1, c64.xyxy, r0.xxyx, v0.xyxy
    texld r2, r1.zwzw, s0
    texld r1, r1, s0
    mul r2, r2, c0.z
    mad r1, r1, c0.w, r2
    mov r2.xy, c64
    mad r3, r2.xyxy, c1.xyzy, v0.xyxy
    texld r4, r3, s0
    texld r3, r3.zwzw, s0
    mad r1, r4, c0.z, r1
    mad r1, r3, c0.w, r1
    mad r3, c64.xyxy, r0.xyyy, v0.xyxy
    texld r4, r3, s0
    texld r3, r3.zwzw, s0
    mad r1, r4, c0.z, r1
    add r1, r3, r1
    mad r3, c64.xyxy, -r0.yzxz, v0.xyxy
    texld r4, r3, s0
    texld r3, r3.zwzw, s0
    add r1, r1, r4
    mad r1, r3, c0.z, r1
    mad r3, c64.xyxy, r0.xzyz, v0.xyxy
    texld r4, r3, s0
    texld r3, r3.zwzw, s0
    mad r1, r4, c0.z, r1
    add r1, r3, r1
    mad r3, c64.xyxy, -r0.yyxy, v0.xyxy
    texld r4, r3, s0
    texld r3, r3.zwzw, s0
    add r1, r1, r4
    mad r1, r3, c0.z, r1
    mad r2, r2.xyxy, c1.yzwz, v0.xyxy
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    mad r1, r3, c0.w, r1
    mad r1, r2, c0.z, r1
    mad r0, c64.xyxy, -r0.yxxx, v0.xyxy
    texld r2, r0, s0
    texld r0, r0.zwzw, s0
    mad r1, r2, c0.z, r1
    mad r0, r0, c0.w, r1
    mul oC0, r0, c2.x

// approximately 43 instruction slots used (16 texture, 27 arithmetic)
