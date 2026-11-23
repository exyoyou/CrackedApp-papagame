package org.webrtc.haima.camerarecorder.egl;

import android.opengl.GLES20;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public class GlPreview extends GlFilter {
    public static final int GL_TEXTURE_EXTERNAL_OES = 36197;
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private final int texTarget;

    public GlPreview(int i10) {
        super(VERTEX_SHADER, createFragmentShaderSourceOESIfNeed(i10));
        this.texTarget = i10;
    }

    private static String createFragmentShaderSourceOESIfNeed(int i10) {
        if (i10 != 36197) {
            return "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        }
        return "#extension GL_OES_EGL_image_external : require\n" + "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n".replace("sampler2D", "samplerExternalOES");
    }

    public void draw(int i10, float[] fArr, float[] fArr2, float f10) {
        useProgram();
        GLES20.glUniformMatrix4fv(getHandle("uMVPMatrix"), 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(getHandle("uSTMatrix"), 1, false, fArr2, 0);
        GLES20.glUniform1f(getHandle("uCRatio"), f10);
        GLES20.glBindBuffer(34962, getVertexBufferName());
        GLES20.glEnableVertexAttribArray(getHandle(GlFilter.DEFAULT_ATTRIB_POSITION));
        GLES20.glVertexAttribPointer(getHandle(GlFilter.DEFAULT_ATTRIB_POSITION), 3, 5126, false, 20, 0);
        GLES20.glEnableVertexAttribArray(getHandle(GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE));
        GLES20.glVertexAttribPointer(getHandle(GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE), 2, 5126, false, 20, 12);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(this.texTarget, i10);
        GLES20.glUniform1i(getHandle(GlFilter.DEFAULT_UNIFORM_SAMPLER), 0);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(getHandle(GlFilter.DEFAULT_ATTRIB_POSITION));
        GLES20.glDisableVertexAttribArray(getHandle(GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE));
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setup() {
        super.setup();
        getHandle("uMVPMatrix");
        getHandle("uSTMatrix");
        getHandle("uCRatio");
        getHandle(GlFilter.DEFAULT_ATTRIB_POSITION);
        getHandle(GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE);
    }
}
