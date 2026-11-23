package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class e implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f76796a;

    public e(float f10) {
        f10 = f10 < 0.1f ? 0.1f : f10;
        this.f76796a = f10 > 2.0f ? 2.0f : f10;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  contrast =" + this.f76796a + ";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n";
    }
}
