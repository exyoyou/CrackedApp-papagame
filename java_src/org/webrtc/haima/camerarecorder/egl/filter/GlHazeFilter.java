package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GlHazeFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision mediump float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp float distance;uniform highp float slope;void main() {highp vec4 color = vec4(1.0);highp float  d = vTextureCoord.y * slope  +  distance;highp vec4 c = texture2D(sTexture, vTextureCoord);c = (c - d * color) / (1.0 -d);gl_FragColor = c;}";
    private float distance;
    private float slope;

    public GlHazeFilter() {
        super("attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", FRAGMENT_SHADER);
        this.distance = 0.2f;
        this.slope = 0.0f;
    }

    public float getDistance() {
        return this.distance;
    }

    public float getSlope() {
        return this.slope;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        GLES20.glUniform1f(getHandle("distance"), this.distance);
        GLES20.glUniform1f(getHandle("slope"), this.slope);
    }

    public void setDistance(float f10) {
        this.distance = f10;
    }

    public void setSlope(float f10) {
        this.slope = f10;
    }
}
