package org.webrtc.haima.camerarecorder.egl;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLException;
import android.opengl.GLUtils;
import com.sigmob.sdk.archives.tar.d;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes10.dex */
public class EglUtil {
    private static final int FLOAT_SIZE_BYTES = 4;
    public static final int NO_TEXTURE = -1;

    private EglUtil() {
    }

    public static int createBuffer(float[] fArr) {
        return createBuffer(toFloatBuffer(fArr));
    }

    public static int createProgram(int i10, int i11) throws GLException {
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            throw new RuntimeException("Could not create program");
        }
        GLES20.glAttachShader(iGlCreateProgram, i10);
        GLES20.glAttachShader(iGlCreateProgram, i11);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        GLES20.glDeleteProgram(iGlCreateProgram);
        throw new RuntimeException("Could not link program");
    }

    public static int loadShader(String str, int i10) {
        int[] iArr = new int[1];
        int iGlCreateShader = GLES20.glCreateShader(i10);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Compilation\n");
        sb2.append(GLES20.glGetShaderInfoLog(iGlCreateShader));
        return 0;
    }

    public static int loadTexture(Bitmap bitmap, int i10, boolean z10) {
        int[] iArr = new int[1];
        if (i10 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, d.f78732b, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            GLES20.glBindTexture(3553, i10);
            GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            iArr[0] = i10;
        }
        if (z10) {
            bitmap.recycle();
        }
        return iArr[0];
    }

    public static void setupSampler(int i10, int i11, int i12) {
        GLES20.glTexParameterf(i10, d.f78732b, i11);
        GLES20.glTexParameterf(i10, 10241, i12);
        GLES20.glTexParameteri(i10, 10242, 33071);
        GLES20.glTexParameteri(i10, 10243, 33071);
    }

    public static FloatBuffer toFloatBuffer(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr).position(0);
        return floatBufferAsFloatBuffer;
    }

    public static void updateBufferData(int i10, FloatBuffer floatBuffer) {
        GLES20.glBindBuffer(34962, i10);
        GLES20.glBufferData(34962, floatBuffer.capacity() * 4, floatBuffer, 35044);
        GLES20.glBindBuffer(34962, 0);
    }

    public static int createBuffer(FloatBuffer floatBuffer) {
        int[] iArr = new int[1];
        GLES20.glGenBuffers(1, iArr, 0);
        updateBufferData(iArr[0], floatBuffer);
        return iArr[0];
    }
}
