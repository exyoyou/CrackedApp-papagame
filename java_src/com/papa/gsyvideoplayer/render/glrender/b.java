package com.papa.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.sigmob.sdk.archives.tar.d;
import com.uc.crashsdk.export.LogType;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;
import v7.e;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class b extends a {
    private static final int C = 4;
    private static final int D = 20;
    private static final int E = 0;
    private static final int F = 3;
    protected static final int G = 36197;
    private e A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float[] f76847o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f76849q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f76851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f76852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f76853u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f76854v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private FloatBuffer f76857y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private SurfaceTexture f76858z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f76848p = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f76850r = new int[2];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f76855w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f76856x = false;
    private GSYVideoGLView.c B = new q();

    public b() {
        float[] fArr = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.f76847o = fArr;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f76857y = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.f76833f, 0);
        Matrix.setIdentityM(this.f76832e, 0);
    }

    public int A() {
        return this.f76853u;
    }

    public int B() {
        return this.f76854v;
    }

    public int C() {
        return this.f76851s;
    }

    public int D() {
        return this.f76852t;
    }

    public int E() {
        return this.f76849q;
    }

    public float[] F() {
        return this.f76833f;
    }

    public int[] G() {
        return this.f76850r;
    }

    protected String H() {
        return "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    }

    protected void I() {
        if (this.f76838k) {
            this.f76849q = c(H(), z());
            this.f76838k = false;
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(LogType.UNEXP_RESTART);
        GLES20.glUseProgram(this.f76849q);
        a("glUseProgram");
    }

    protected void J() {
        this.f76857y.position(0);
        GLES20.glVertexAttribPointer(this.f76853u, 3, 5126, false, 20, (Buffer) this.f76857y);
        a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.f76853u);
        a("glEnableVertexAttribArray maPositionHandle");
        this.f76857y.position(3);
        GLES20.glVertexAttribPointer(this.f76854v, 3, 5126, false, 20, (Buffer) this.f76857y);
        a("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.f76854v);
        a("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(this.f76851s, 1, false, this.f76832e, 0);
        GLES20.glUniformMatrix4fv(this.f76852t, 1, false, this.f76833f, 0);
        GLES20.glDrawArrays(5, 0, 4);
        a("glDrawArrays");
    }

    protected void K(GL10 gl10) {
        if (this.f76856x) {
            this.f76856x = false;
            if (this.A != null) {
                this.A.a(b(0, 0, this.f76831d.getWidth(), this.f76831d.getHeight(), gl10));
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public GSYVideoGLView.c h() {
        return this.B;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void l() {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.f76855w) {
                this.f76858z.updateTexImage();
                this.f76858z.getTransformMatrix(this.f76833f);
                this.f76855w = false;
            }
        }
        I();
        y();
        J();
        K(gl10);
        GLES20.glFinish();
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f76855w = true;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
        GLES20.glViewport(0, 0, i10, i11);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int iC = c(H(), z());
        this.f76849q = iC;
        if (iC == 0) {
            return;
        }
        this.f76853u = GLES20.glGetAttribLocation(iC, GlFilter.DEFAULT_ATTRIB_POSITION);
        a("glGetAttribLocation aPosition");
        if (this.f76853u == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.f76854v = GLES20.glGetAttribLocation(this.f76849q, GlFilter.DEFAULT_ATTRIB_TEXTURE_COORDINATE);
        a("glGetAttribLocation aTextureCoord");
        if (this.f76854v == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.f76851s = GLES20.glGetUniformLocation(this.f76849q, "uMVPMatrix");
        a("glGetUniformLocation uMVPMatrix");
        if (this.f76851s == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.f76852t = GLES20.glGetUniformLocation(this.f76849q, "uSTMatrix");
        a("glGetUniformLocation uSTMatrix");
        if (this.f76852t == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        GLES20.glGenTextures(2, this.f76850r, 0);
        GLES20.glBindTexture(36197, this.f76850r[0]);
        a("glBindTexture mTextureID");
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, d.f78732b, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f76850r[0]);
        this.f76858z = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        m(new Surface(this.f76858z));
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void r(GSYVideoGLView.c cVar) {
        if (cVar != null) {
            this.B = cVar;
        }
        this.f76838k = true;
        this.f76839l = true;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void u(e eVar, boolean z10) {
        this.A = eVar;
        this.f76829b = z10;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void x() {
        this.f76856x = true;
    }

    protected void y() {
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f76850r[0]);
    }

    protected String z() {
        return this.B.a(this.f76831d);
    }
}
