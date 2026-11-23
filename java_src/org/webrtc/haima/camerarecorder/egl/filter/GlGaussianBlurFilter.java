package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GlGaussianBlurFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision mediump float;const lowp int GAUSSIAN_SAMPLES = 9;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];uniform lowp sampler2D sTexture;void main() {lowp vec4 sum = vec4(0.0);sum += texture2D(sTexture, blurCoordinates[0]) * 0.05;sum += texture2D(sTexture, blurCoordinates[1]) * 0.09;sum += texture2D(sTexture, blurCoordinates[2]) * 0.12;sum += texture2D(sTexture, blurCoordinates[3]) * 0.15;sum += texture2D(sTexture, blurCoordinates[4]) * 0.18;sum += texture2D(sTexture, blurCoordinates[5]) * 0.15;sum += texture2D(sTexture, blurCoordinates[6]) * 0.12;sum += texture2D(sTexture, blurCoordinates[7]) * 0.09;sum += texture2D(sTexture, blurCoordinates[8]) * 0.05;gl_FragColor = sum;}";
    private static final String VERTEX_SHADER = "attribute vec4 aPosition;attribute vec4 aTextureCoord;const lowp int GAUSSIAN_SAMPLES = 9;uniform highp float texelWidthOffset;uniform highp float texelHeightOffset;uniform highp float blurSize;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];void main() {gl_Position = aPosition;highp vec2 vTextureCoord = aTextureCoord.xy;int multiplier = 0;highp vec2 blurStep;highp vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset) * blurSize;for (lowp int i = 0; i < GAUSSIAN_SAMPLES; i++) {multiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));blurStep = float(multiplier) * singleStepOffset;blurCoordinates[i] = vTextureCoord.xy + blurStep;}}";
    private float blurSize;
    private float texelHeightOffset;
    private float texelWidthOffset;

    public GlGaussianBlurFilter() {
        super(VERTEX_SHADER, FRAGMENT_SHADER);
        this.texelWidthOffset = 0.01f;
        this.texelHeightOffset = 0.01f;
        this.blurSize = 0.2f;
    }

    public float getBlurSize() {
        return this.blurSize;
    }

    public float getTexelHeightOffset() {
        return this.texelHeightOffset;
    }

    public float getTexelWidthOffset() {
        return this.texelWidthOffset;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        GLES20.glUniform1f(getHandle("texelWidthOffset"), this.texelWidthOffset);
        GLES20.glUniform1f(getHandle("texelHeightOffset"), this.texelHeightOffset);
        GLES20.glUniform1f(getHandle("blurSize"), this.blurSize);
    }

    public void setBlurSize(float f10) {
        this.blurSize = f10;
    }

    public void setTexelHeightOffset(float f10) {
        this.texelHeightOffset = f10;
    }

    public void setTexelWidthOffset(float f10) {
        this.texelWidthOffset = f10;
    }
}
