//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferTextureSampler0;
//   float4 gooDeferredLightScreenSize;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   gooDeferredLightScreenSize c66      1
//   GBufferTextureSampler0     s0       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 5.0446744716e-44 // 36
    def c0, 0.50999999, 0, 0, 0
    dcl vPos.xy
    dcl_2d s0
    add r0.xy, c0.x, vPos
    mul r0.xy, r0, c66.zwzw
    texld oC0, r0, s0

// approximately 3 instruction slots used (1 texture, 2 arithmetic)
