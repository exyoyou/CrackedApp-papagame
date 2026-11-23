package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class i implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f76802a;

    public i(float f10) {
        this.f76802a = 0.0f;
        f10 = f10 < 0.0f ? 0.0f : f10;
        this.f76802a = f10 > 1.0f ? 1.0f : f10;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        float f10 = 1.0f / (((1.0f - this.f76802a) * 0.7f) + 0.3f);
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float mult;\n float igamma;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n" + ("mult = " + f10 + ";\n") + ("igamma = " + (1.0f / ((0.7f * f10) + 0.3f)) + ";\n") + "  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n";
    }
}
