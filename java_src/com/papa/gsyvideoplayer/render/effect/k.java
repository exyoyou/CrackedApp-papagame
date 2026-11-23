package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class k implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f76804c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f76805d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f76806e = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f76807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76808b;

    public k(float f10) {
        this.f76808b = "vec2(1.0,0.0)";
        this.f76807a = f10;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nconst float resolution=1024.0;\nconst float radius = " + this.f76807a + ";\nvec2 dir =" + this.f76808b + "; //若为x模糊，可传入（1.0,0.0）  y模糊  （0.0,1.0）\n\nvoid main() {\n    //this will be our RGBA sum\n    vec4 sum = vec4(0.0);\n    \n    //our original texcoord for this fragment\n    vec2 tc = vTextureCoord;\n    \n    //the amount to blur, i.e. how far off center to sample from \n    //1.0 -> blur by one pixel\n    //2.0 -> blur by two pixels, etc.\n    float blur = radius/resolution; \n    \n    //the direction of our blur\n    //(1.0, 0.0) -> x-axis blur\n    //(0.0, 1.0) -> y-axis blur\n    float hstep = dir.x;\n    float vstep = dir.y;\n    \n    \n    //apply blurring, using a 9-tap filter with predefined gaussian weights\n    \n    sum += texture2D(sTexture, vec2(tc.x - 4.0*blur*hstep, tc.y - 4.0*blur*vstep)) * 0.0162162162;\n    sum += texture2D(sTexture, vec2(tc.x - 3.0*blur*hstep, tc.y - 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x - 2.0*blur*hstep, tc.y - 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x - 1.0*blur*hstep, tc.y - 1.0*blur*vstep)) * 0.1945945946;\n    \n    sum += texture2D(sTexture, vec2(tc.x, tc.y)) * 0.2270270270;\n    \n    sum += texture2D(sTexture, vec2(tc.x + 1.0*blur*hstep, tc.y + 1.0*blur*vstep)) * 0.1945945946;\n    sum += texture2D(sTexture, vec2(tc.x + 2.0*blur*hstep, tc.y + 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x + 3.0*blur*hstep, tc.y + 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x + 4.0*blur*hstep, tc.y + 4.0*blur*vstep)) * 0.0162162162;\n\n    vec4 cc= texture2D(sTexture,vTextureCoord );\n\n    //discard alpha for our simple demo, multiply by vertex color and return\n    gl_FragColor =vec4(sum.rgb, cc.a);\n}";
    }

    public k(float f10, int i10) {
        this.f76808b = "vec2(1.0,0.0)";
        this.f76807a = f10;
        if (i10 == 1) {
            this.f76808b = "vec2(1.0,0.0)";
        } else if (i10 == 2) {
            this.f76808b = "vec2(0.0,1.0)";
        } else {
            if (i10 != 3) {
                return;
            }
            this.f76808b = "vec2(1.0,1.0)";
        }
    }
}
