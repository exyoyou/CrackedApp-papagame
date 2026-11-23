package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class j implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f76803a;

    public j(float f10) {
        f10 = f10 < 0.0f ? 0.0f : f10;
        this.f76803a = f10 > 2.0f ? 2.0f : f10;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nfloat gamma=" + this.f76803a + ";\nvoid main() {\nvec4 textureColor = texture2D(sTexture, vTextureCoord);\ngl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n";
    }
}
