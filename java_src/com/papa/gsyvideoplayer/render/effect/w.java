package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;

/* JADX INFO: loaded from: classes2.dex */
public class w implements GSYVideoGLView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f76822c;

    public w(float f10) {
        this.f76822c = 0.0f;
        f10 = f10 < 0.0f ? 0.0f : f10;
        this.f76822c = f10 > 1.0f ? 1.0f : f10;
    }

    private void b(GLSurfaceView gLSurfaceView) {
        this.f76820a = gLSurfaceView.getWidth();
        this.f76821b = gLSurfaceView.getHeight();
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        b(gLSurfaceView);
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float scale;\n float stepsizeX;\n float stepsizeY;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + ("stepsizeX = " + (1.0f / this.f76820a) + ";\n") + ("stepsizeY = " + (1.0f / this.f76821b) + ";\n") + ("scale = " + this.f76822c + ";\n") + "  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n";
    }
}
