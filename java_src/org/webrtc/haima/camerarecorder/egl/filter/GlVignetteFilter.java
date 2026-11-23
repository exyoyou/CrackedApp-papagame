package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GlVignetteFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision mediump float;varying vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp vec2 vignetteCenter;uniform lowp vec3 vignetteColor;uniform highp float vignetteStart;uniform highp float vignetteEnd;void main() {lowp vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;lowp float d = distance(vTextureCoord, vec2(vignetteCenter.x, vignetteCenter.y));lowp float percent = smoothstep(vignetteStart, vignetteEnd, d);gl_FragColor = vec4(mix(rgb.x, vignetteColor.x, percent), mix(rgb.y, vignetteColor.y, percent), mix(rgb.z, vignetteColor.z, percent), 1.0);}";
    private float vignetteCenterX;
    private float vignetteCenterY;
    private float[] vignetteColor;
    private float vignetteEnd;
    private float vignetteStart;

    public GlVignetteFilter() {
        super("attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", FRAGMENT_SHADER);
        this.vignetteCenterX = 0.5f;
        this.vignetteCenterY = 0.5f;
        this.vignetteColor = new float[]{0.0f, 0.0f, 0.0f};
        this.vignetteStart = 0.2f;
        this.vignetteEnd = 0.85f;
    }

    public float getVignetteEnd() {
        return this.vignetteEnd;
    }

    public float getVignetteStart() {
        return this.vignetteStart;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        GLES20.glUniform2f(getHandle("vignetteCenter"), this.vignetteCenterX, this.vignetteCenterY);
        GLES20.glUniform3fv(getHandle("vignetteColor"), 0, this.vignetteColor, 0);
        GLES20.glUniform1f(getHandle("vignetteStart"), this.vignetteStart);
        GLES20.glUniform1f(getHandle("vignetteEnd"), this.vignetteEnd);
    }

    public void setVignetteEnd(float f10) {
        this.vignetteEnd = f10;
    }

    public void setVignetteStart(float f10) {
        this.vignetteStart = f10;
    }
}
