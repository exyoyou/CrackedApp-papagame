package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import org.webrtc.haima.camerarecorder.egl.GlPreview;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(16)
public class f {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f85766k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f85767l = 20;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f85768m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f85769n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final float[] f85770o = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f85771p = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f85772q = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FloatBuffer f85773a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f85776d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f85778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f85779g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f85780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f85781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f85782j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f85774b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float[] f85775c = new float[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f85777e = -12345;

    public f(int rotation) {
        this.f85782j = rotation;
        float[] fArr = f85770o;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f85773a = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.f85775c, 0);
    }

    private int c(String vertexSource, String fragmentSource) {
        int iF;
        int iF2 = f(35633, vertexSource);
        if (iF2 == 0 || (iF = f(35632, fragmentSource)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        b("glCreateProgram");
        if (iGlCreateProgram == 0) {
            return 0;
        }
        GLES20.glAttachShader(iGlCreateProgram, iF2);
        b("glAttachShader");
        GLES20.glAttachShader(iGlCreateProgram, iF);
        b("glAttachShader");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        GLES20.glDeleteProgram(iGlCreateProgram);
        return 0;
    }

    private int f(int shaderType, String source) {
        int iGlCreateShader = GLES20.glCreateShader(shaderType);
        b("glCreateShader type=" + shaderType);
        GLES20.glShaderSource(iGlCreateShader, source);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    public void a(String fragmentShader) {
        GLES20.glDeleteProgram(this.f85776d);
        int iC = c(f85771p, fragmentShader);
        this.f85776d = iC;
        if (iC == 0) {
            throw new RuntimeException("failed creating program");
        }
    }

    public void b(String op) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        throw new RuntimeException(op + ": glError " + iGlGetError);
    }

    public void d(SurfaceTexture st, boolean invert) {
        b("onDrawFrame start");
        st.getTransformMatrix(this.f85775c);
        if (invert) {
            float[] fArr = this.f85775c;
            fArr[5] = -fArr[5];
            fArr[13] = 1.0f - fArr[13];
        }
        GLES20.glUseProgram(this.f85776d);
        b("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES, this.f85777e);
        this.f85773a.position(0);
        GLES20.glVertexAttribPointer(this.f85780h, 3, 5126, false, 20, (Buffer) this.f85773a);
        b("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.f85780h);
        b("glEnableVertexAttribArray maPositionHandle");
        this.f85773a.position(3);
        GLES20.glVertexAttribPointer(this.f85781i, 2, 5126, false, 20, (Buffer) this.f85773a);
        b("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.f85781i);
        b("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(this.f85779g, 1, false, this.f85775c, 0);
        GLES20.glUniformMatrix4fv(this.f85778f, 1, false, this.f85774b, 0);
        GLES20.glDrawArrays(5, 0, 4);
        b("glDrawArrays");
        GLES20.glFinish();
    }

    public int e() {
        return this.f85777e;
    }

    public void g() {
        int iC = c(f85771p, f85772q);
        this.f85776d = iC;
        if (iC == 0) {
            throw new RuntimeException("failed creating program");
        }
        this.f85780h = GLES20.glGetAttribLocation(iC, GlFilter.DEFAULT_ATTRIB_POSITION);
        b("glGetAttribLocation aPosition");
        if (this.f85780h == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.f85781i = GLES20.glGetAttribLocation(this.f85776d, GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE);
        b("glGetAttribLocation aTextureCoord");
        if (this.f85781i == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.f85778f = GLES20.glGetUniformLocation(this.f85776d, "uMVPMatrix");
        b("glGetUniformLocation uMVPMatrix");
        if (this.f85778f == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.f85779g = GLES20.glGetUniformLocation(this.f85776d, "uSTMatrix");
        b("glGetUniformLocation uSTMatrix");
        if (this.f85779g == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i10 = iArr[0];
        this.f85777e = i10;
        GLES20.glBindTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES, i10);
        b("glBindTexture mTextureID");
        GLES20.glTexParameterf(GlPreview.GL_TEXTURE_EXTERNAL_OES, 10241, 9728.0f);
        GLES20.glTexParameterf(GlPreview.GL_TEXTURE_EXTERNAL_OES, com.sigmob.sdk.archives.tar.d.f78732b, 9729.0f);
        GLES20.glTexParameteri(GlPreview.GL_TEXTURE_EXTERNAL_OES, 10242, 33071);
        GLES20.glTexParameteri(GlPreview.GL_TEXTURE_EXTERNAL_OES, 10243, 33071);
        b("glTexParameter");
        Matrix.setIdentityM(this.f85774b, 0);
        int i11 = this.f85782j;
        if (i11 != 0) {
            Matrix.rotateM(this.f85774b, 0, i11, 0.0f, 0.0f, 1.0f);
        }
    }
}
