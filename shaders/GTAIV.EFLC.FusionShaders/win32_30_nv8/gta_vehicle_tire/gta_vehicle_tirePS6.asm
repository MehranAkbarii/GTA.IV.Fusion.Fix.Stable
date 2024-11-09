// Summary: Added slope scale depth bias
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 1.0397634605e-42 // 742
    def c0, 1, 0, 0, 6 // w = slope scale bias factor
    dcl_texcoord v0.x
	// sqrt((dsx(v0.x))^2 + (dsy(v0.x))^2) * factor
	dsx r0.x, v0.x
	dsy r0.y, v0.x
	mul r0.x, r0.x, r0.x
	mad r0.x, r0.y, r0.y, r0.x
	rsq r0.x, r0.x
	rcp r0.x, r0.x
	mad r0.x, r0.x, -c0.w, v0.x
    mad oC0, r0.x, c0.xxxy, c0.yyyx

// approximately 1 instruction slot used
