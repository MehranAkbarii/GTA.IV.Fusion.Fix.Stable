//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D SmartBlitSampler;
//   float4 gShadowParam14151617;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gShadowParam14151617 c56      1
//   SmartBlitSampler     s0       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 1.1883010977e-42 // 848
    def c0, 0.5, 2, -1, 1
    dcl_texcoord v0.xy
    dcl_2d s0
    rcp r0.x, c56.w
    mad r0.xy, r0.x, -c0.x, v0
    mad r0.xy, r0, c0.y, c0.z
    max r1.x, r0_abs.x, r0_abs.y
    add r0.x, -r1.x, c0.w
    rcp r0.x, r0.x
    add r0.x, r0.x, r0.x
    texld r1, v0, s0
    mul oC0, r0.x, r1.x

// approximately 9 instruction slots used (1 texture, 8 arithmetic)
