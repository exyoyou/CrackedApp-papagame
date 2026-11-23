package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GlMonochromeFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision lowp float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform float intensity;uniform vec3 filterColor;const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);void main() {lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);float luminance = dot(textureColor.rgb, luminanceWeighting);lowp vec4 desat = vec4(vec3(luminance), 1.0);lowp vec4 outputColor = vec4((desat.r < 0.5 ? (2.0 * desat.r * filterColor.r) : (1.0 - 2.0 * (1.0 - desat.r) * (1.0 - filterColor.r))),(desat.g < 0.5 ? (2.0 * desat.g * filterColor.g) : (1.0 - 2.0 * (1.0 - desat.g) * (1.0 - filterColor.g))),(desat.b < 0.5 ? (2.0 * desat.b * filterColor.b) : (1.0 - 2.0 * (1.0 - desat.b) * (1.0 - filterColor.b))),1.0);gl_FragColor = vec4(mix(textureColor.rgb, outputColor.rgb, intensity), textureColor.a);}";
    private float[] filterColor;
    private float intensity;

    public GlMonochromeFilter() {
        super("attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", FRAGMENT_SHADER);
        this.intensity = 1.0f;
        this.filterColor = new float[]{0.6f, 0.45f, 0.3f};
    }

    public float getIntensity() {
        return this.intensity;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        GLES20.glUniform1f(getHandle("intensity"), this.intensity);
        GLES20.glUniform3fv(getHandle("filterColor"), 0, this.filterColor, 0);
    }

    public void setIntensity(float f10) {
        this.intensity = f10;
    }
}
