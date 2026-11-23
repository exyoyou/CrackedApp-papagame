package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class z implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f76827c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76825a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76826b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f76828d = 0.85f;

    public z(float f10) {
        this.f76827c = 0.0f;
        f10 = f10 < 0.0f ? 0.0f : f10;
        this.f76827c = f10 > 1.0f ? 1.0f : f10;
    }

    private void b(GLSurfaceView gLSurfaceView) {
        this.f76825a = gLSurfaceView.getWidth();
        this.f76826b = gLSurfaceView.getHeight();
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        b(gLSurfaceView);
        float[] fArr = new float[2];
        int i10 = this.f76825a;
        int i11 = this.f76826b;
        if (i10 > i11) {
            fArr[0] = 1.0f;
            fArr[1] = i11 / i10;
        } else {
            fArr[0] = i10 / i11;
            fArr[1] = 1.0f;
        }
        float f10 = fArr[0];
        float f11 = fArr[1];
        float fSqrt = ((float) Math.sqrt((f10 * f10) + (f11 * f11))) * 0.5f;
        String[] strArr = {"scale[0] = " + fArr[0] + ";\n", "scale[1] = " + fArr[1] + ";\n"};
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float range;\n float inv_max_dist;\n float shade;\n vec2 scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + strArr[0] + strArr[1] + ("inv_max_dist = " + (1.0f / fSqrt) + ";\n") + "shade = 0.85;\n" + ("range = " + (1.3f - (((float) Math.sqrt(this.f76827c)) * 0.7f)) + ";\n") + "  const float slope = 20.0;\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n";
    }
}
