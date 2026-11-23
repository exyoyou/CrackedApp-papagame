package org.hmwebrtc;

import android.graphics.Matrix;
import android.opengl.GLES20;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes10.dex */
class GlWatermarkDrawer {
    public static final int BASE_TERNARY = 3;
    private static final String FRAGMENT_SHADER_STRING = "precision mediump float;\nvarying vec4 out_color;\nvoid main() {\n  gl_FragColor =  out_color;\n}\n";
    private static final String INPUT_MVP_MATRIX_NAME = "in_mvp_mat";
    private static final String INPUT_TEXTURE_COORDINATE_NAME = "in_color";
    private static final String INPUT_VERTEX_COORDINATE_NAME = "in_pos";
    private static final String TAG = "GlWatermarkDrawer";
    private static final String VERTEX_SHADER_STRING = "precision mediump float;\nattribute vec4 in_pos;\nattribute vec4 in_color;\nvarying vec4 out_color;\nuniform mat4 in_mvp_mat;\nvoid main() {\n  gl_Position = in_mvp_mat*in_pos;\n  out_color = in_color;\n}\n";
    private int mBase;

    @Nullable
    private GlShader mCurrentShader;
    private float[] mIdentityMatrix;
    private int mInColorLocation;
    private int mInMvpLocation;
    private int mInPosLocation;
    private static final FloatBuffer FULL_RECTANGLE_BUFFER = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer COLOR_R = GlUtil.createFloatBuffer(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f});
    private static final FloatBuffer COLOR_G = GlUtil.createFloatBuffer(new float[]{0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f});
    private static final FloatBuffer COLOR_B = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    private static final FloatBuffer COLOR_WHITE = GlUtil.createFloatBuffer(new float[]{1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f});

    public GlWatermarkDrawer() {
        this(3);
    }

    private FloatBuffer getColor(int i10) {
        if (i10 == 0) {
            return COLOR_R;
        }
        if (i10 == 1) {
            return COLOR_G;
        }
        return i10 == 2 ? COLOR_B : COLOR_WHITE;
    }

    private void prepareShader(int i10, int i11, int i12, int i13) {
        if (this.mCurrentShader == null) {
            GlShader glShader = new GlShader(VERTEX_SHADER_STRING, FRAGMENT_SHADER_STRING);
            this.mCurrentShader = glShader;
            glShader.useProgram();
            GlUtil.checkNoGLES2Error("Create shader");
            this.mInPosLocation = glShader.getAttribLocation(INPUT_VERTEX_COORDINATE_NAME);
            this.mInColorLocation = glShader.getAttribLocation(INPUT_TEXTURE_COORDINATE_NAME);
            this.mInMvpLocation = glShader.getUniformLocation(INPUT_MVP_MATRIX_NAME);
        }
        GlShader glShader2 = this.mCurrentShader;
        if (glShader2 == null) {
            return;
        }
        glShader2.useProgram();
        GLES20.glEnableVertexAttribArray(this.mInPosLocation);
        GLES20.glVertexAttribPointer(this.mInPosLocation, 2, 5126, false, 0, (Buffer) FULL_RECTANGLE_BUFFER);
        GlUtil.checkNoGLES2Error("Prepare shader");
    }

    public void drawCaptureId(int i10, int i11, int i12, int i13, int i14, int i15, float[] fArr) {
    }

    public void release() {
        GlShader glShader = this.mCurrentShader;
        if (glShader != null) {
            glShader.release();
            this.mCurrentShader = null;
        }
    }

    public GlWatermarkDrawer(int i10) {
        i10 = i10 <= 1 ? 3 : i10;
        this.mBase = i10;
        if (i10 > 3) {
            this.mBase = 3;
        }
        Matrix matrix = new Matrix();
        matrix.reset();
        this.mIdentityMatrix = RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrix);
    }

    public void drawCaptureId(int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        if (i11 < 1 || i10 < 0) {
            return;
        }
        prepareShader(0, 0, i14, i15);
        GLES20.glUniformMatrix4fv(this.mInMvpLocation, 1, false, this.mIdentityMatrix, 0);
        GLES20.glEnableVertexAttribArray(this.mInColorLocation);
        int i16 = i11 * 2;
        int i17 = i14 / i16;
        int i18 = i12 + i14;
        int i19 = i16 + 1;
        int[] iArr = new int[i19];
        int i20 = i10;
        for (int i21 = 0; i21 < i11; i21++) {
            int i22 = i21 * 2;
            iArr[i22] = 4;
            int i23 = this.mBase;
            iArr[i22 + 1] = i20 % i23;
            i20 /= i23;
        }
        iArr[i19 - 1] = 4;
        for (int i24 = 0; i24 < i19; i24++) {
            i18 -= i17;
            GLES20.glVertexAttribPointer(this.mInColorLocation, 4, 5126, false, 0, (Buffer) (z10 ? getColor(iArr[(i19 - i24) - 1]) : getColor(iArr[i24])));
            GLES20.glViewport(i18, i13, i17, i15);
            GLES20.glDrawArrays(5, 0, 4);
        }
        GLES20.glBindTexture(3553, 0);
    }
}
