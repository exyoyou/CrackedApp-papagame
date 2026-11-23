package com.papa.gsyvideoplayer.render.effect;

import android.graphics.Color;
import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class h implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76801b;

    public h(int i10, int i11) {
        this.f76800a = i10;
        this.f76801b = i11;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        float[] fArr = {Color.red(this.f76800a) / 255.0f, Color.green(this.f76800a) / 255.0f, Color.blue(this.f76800a) / 255.0f};
        float[] fArr2 = {Color.red(this.f76801b) / 255.0f, Color.green(this.f76801b) / 255.0f, Color.blue(this.f76801b) / 255.0f};
        String[] strArr = {"first[0] = " + fArr[0] + ";\n", "first[1] = " + fArr[1] + ";\n", "first[2] = " + fArr[2] + ";\n"};
        String[] strArr2 = {"second[0] = " + fArr2[0] + ";\n", "second[1] = " + fArr2[1] + ";\n", "second[2] = " + fArr2[2] + ";\n"};
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 first;\n vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + strArr[0] + strArr[1] + strArr[2] + strArr2[0] + strArr2[1] + strArr2[2] + "  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n";
    }
}
