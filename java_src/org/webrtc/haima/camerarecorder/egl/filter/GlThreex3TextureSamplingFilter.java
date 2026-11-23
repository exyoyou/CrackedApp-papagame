package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GlThreex3TextureSamplingFilter extends GlFilter {
    private static final String THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER = "attribute vec4 aPosition;attribute vec4 aTextureCoord;uniform highp float texelWidth;uniform highp float texelHeight;varying highp vec2 textureCoordinate;varying highp vec2 leftTextureCoordinate;varying highp vec2 rightTextureCoordinate;varying highp vec2 topTextureCoordinate;varying highp vec2 topLeftTextureCoordinate;varying highp vec2 topRightTextureCoordinate;varying highp vec2 bottomTextureCoordinate;varying highp vec2 bottomLeftTextureCoordinate;varying highp vec2 bottomRightTextureCoordinate;void main() {gl_Position = aPosition;vec2 widthStep = vec2(texelWidth, 0.0);vec2 heightStep = vec2(0.0, texelHeight);vec2 widthHeightStep = vec2(texelWidth, texelHeight);vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);textureCoordinate = aTextureCoord.xy;leftTextureCoordinate = textureCoordinate - widthStep;rightTextureCoordinate = textureCoordinate + widthStep;topTextureCoordinate = textureCoordinate - heightStep;topLeftTextureCoordinate = textureCoordinate - widthHeightStep;topRightTextureCoordinate = textureCoordinate + widthNegativeHeightStep;bottomTextureCoordinate = textureCoordinate + heightStep;bottomLeftTextureCoordinate = textureCoordinate - widthNegativeHeightStep;bottomRightTextureCoordinate = textureCoordinate + widthHeightStep;}";
    private float texelHeight;
    private float texelWidth;

    public GlThreex3TextureSamplingFilter(String str) {
        super(THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER, str);
    }

    public float getTexelHeight() {
        return this.texelHeight;
    }

    public float getTexelWidth() {
        return this.texelWidth;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        GLES20.glUniform1f(getHandle("texelWidth"), this.texelWidth);
        GLES20.glUniform1f(getHandle("texelHeight"), this.texelHeight);
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setFrameSize(int i10, int i11) {
        this.texelWidth = 1.0f / i10;
        this.texelHeight = 1.0f / i11;
    }

    public void setTexelHeight(float f10) {
        this.texelHeight = f10;
    }

    public void setTexelWidth(float f10) {
        this.texelWidth = f10;
    }
}
