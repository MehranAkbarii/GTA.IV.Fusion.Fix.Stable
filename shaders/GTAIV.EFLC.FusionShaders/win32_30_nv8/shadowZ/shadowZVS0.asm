// Summary: Disconnected night shadow fix by robi29 & _CP_
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float2 facetMask[4];
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam891113;
//   row_major float4x4 gWorld;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gWorld               c0       4
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   facetMask            c208     4
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.9642733556e-42 // 2829
    def c4, -0.55, 2, -1, 0.5
    def c5, 0, -3, 1, 0
    dcl_position v0
    dcl_position o0
    dcl_texcoord1 o1
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add r0.xyz, r0, c3
    abs r0.w, c56.x
    sge r1.x, -r0.w, r0.w
    if_ge -r0.w, r0.w // non-static objects
      mul r1.yzw, r0.y, c61.xxyz
      mad r1.yzw, r0.x, c60.xxyz, r1
      mad r1.yzw, r0.z, c62.xxyz, r1
      add r2.xyz, r1.yzww, c63
      add r0.w, r2.z, c59.z
      abs r1.y, c56.y
      sge r1.y, -r1.y, r1.y
      add r1.y, r1.y, -c4.w
      mul r0.w, r0.w, r1.y
      add r2.w, r0.w, r0.w
      dp3 r1.y, r2.xyww, r2.xyww
      rsq r1.y, r1.y
      rcp r1.y, r1.y
      mad r0.w, r0.w, -c4.y, r1.y
      rcp r0.w, r0.w
      mul r3.xy, r2, r0.w
      mul r3.w, r2.w, -c57.w
      mul r3.z, r1.y, -c57.w
    else
      mov r2.x, c56.x
      add r0.w, r2.x, c4.z
      if_ge -r0_abs.w, r0_abs.w // static
        mul r1.yzw, r0.y, c61.xxyz
        mad r1.yzw, r0.x, c60.xxyz, r1
        mad r1.yzw, r0.z, c62.xxyz, r1
        add r2.xyz, r1.yzww, c63
        mul r4.z, r2.z, c57.w
        mov r2.w, c4.w
        mov r4.xy, c57.z
        mul r3.xyz, r2.xyww, r4
        frc r0.w, c56.y
        add r0.w, -r0.w, c56.y
        mova a0.x, r0.w
        mul r1.yz, r3.xxyw, c208[a0.x].xxyw
        add r0.w, r1.z, r1.y
        add r3.w, r0.w, c4.y
        max r3.z, r3.z, c5.x
      else // static
        mul r1.yzw, r0.y, c61.xxyz
        mad r1.yzw, r0.x, c60.xxyz, r1
        mad r1.yzw, r0.z, c62.xxyz, r1
        add r1.yzw, r1, c63.xxyz
        mov r3.z, c57.z
        add r3.z, r3.z, c4.x
        mul r3.xy, r1.yzzw, r3.z
        mov r3.w, -r1.w
        mov r2.x, c57.x
        add r0.w, r2.x, -c59.w
        rcp r0.w, r0.w
        mul r1.y, r0.w, c59.w
        mul r1.z, r2.x, c59.w
        mul r0.w, r0.w, r1.z
        mad r3.z, r1.w, r1.y, r0.w
      endif
    endif
    mov r1.y, c5.y
    add r0.w, r1.y, c56.x
    sge r0.w, -r0_abs.w, r0_abs.w
    mad r1.y, r3.w, -c57.w, -r3.w
    mad r2.z, r0.w, r1.y, r3.w
    mov r2.x, r3.w
    mov r2.y, r0.z
    mad r1.yzw, r3.xwwz, c5.xxzz, c5.xzxx
    lrp r4.xyz, r1.x, r1.yzww, r2
    mov o0.xyz, r3
    mov o0.w, r4.x
    mov o1.xy, r0
    mov o1.zw, r4.xyyz

// approximately 79 instruction slots used
