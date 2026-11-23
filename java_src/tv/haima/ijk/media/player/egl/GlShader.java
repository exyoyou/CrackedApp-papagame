package tv.haima.ijk.media.player.egl;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes10.dex */
public class GlShader {
    private static final String TAG = "GlShader";
    private int fragmentShader;
    private int program;
    private int vertexShader;

    public GlShader(String str, String str2) {
        this.vertexShader = compileShader(35633, str);
        this.fragmentShader = compileShader(35632, str2);
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.program = iGlCreateProgram;
        if (iGlCreateProgram == 0) {
            throw new RuntimeException("glCreateProgram() failed. GLES20 error: " + GLES20.glGetError());
        }
        GLES20.glAttachShader(iGlCreateProgram, this.vertexShader);
        GLES20.glAttachShader(this.program, this.fragmentShader);
        GLES20.glLinkProgram(this.program);
        int[] iArr = {0};
        GLES20.glGetProgramiv(this.program, 35714, iArr, 0);
        if (iArr[0] == 1) {
            GlUtil.checkNoGLES2Error("Creating GlShader");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Could not link program: ");
        sb2.append(GLES20.glGetProgramInfoLog(this.program));
        throw new RuntimeException(GLES20.glGetProgramInfoLog(this.program));
    }

    private static int compileShader(int i10, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        if (iGlCreateShader == 0) {
            throw new RuntimeException("glCreateShader() failed. GLES20 error: " + GLES20.glGetError());
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] == 1) {
            GlUtil.checkNoGLES2Error("compileShader");
            return iGlCreateShader;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Compile error ");
        sb2.append(GLES20.glGetShaderInfoLog(iGlCreateShader));
        sb2.append(" in shader:\n");
        sb2.append(str);
        throw new RuntimeException(GLES20.glGetShaderInfoLog(iGlCreateShader));
    }

    public int getAttribLocation(String str) {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(i10, str);
        if (iGlGetAttribLocation >= 0) {
            return iGlGetAttribLocation;
        }
        throw new RuntimeException("Could not locate '" + str + "' in program");
    }

    public int getUniformLocation(String str) {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(i10, str);
        if (iGlGetUniformLocation >= 0) {
            return iGlGetUniformLocation;
        }
        throw new RuntimeException("Could not locate uniform '" + str + "' in program");
    }

    public void release() {
        int i10 = this.program;
        if (i10 != -1) {
            GLES20.glDeleteProgram(i10);
            this.program = -1;
        }
        int i11 = this.vertexShader;
        if (i11 != -1) {
            GLES20.glDeleteShader(i11);
            this.vertexShader = -1;
        }
        int i12 = this.fragmentShader;
        if (i12 != -1) {
            GLES20.glDeleteShader(i12);
            this.fragmentShader = -1;
        }
        try {
            GlUtil.checkNoGLES2Error("release Shader");
        } catch (Exception unused) {
        }
    }

    public void setVertexAttribArray(String str, int i10, FloatBuffer floatBuffer) {
        setVertexAttribArray(str, i10, 0, floatBuffer);
    }

    public void useProgram() {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        GLES20.glUseProgram(i10);
        GlUtil.checkNoGLES2Error("glUseProgram");
    }

    public void setVertexAttribArray(String str, int i10, int i11, FloatBuffer floatBuffer) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int attribLocation = getAttribLocation(str);
        GLES20.glEnableVertexAttribArray(attribLocation);
        GLES20.glVertexAttribPointer(attribLocation, i10, 5126, false, i11, (Buffer) floatBuffer);
        GlUtil.checkNoGLES2Error("setVertexAttribArray");
    }
}
