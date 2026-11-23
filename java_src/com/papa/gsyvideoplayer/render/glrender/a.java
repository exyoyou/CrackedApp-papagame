package com.papa.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLException;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.view.Surface;
import com.haima.hmcp.Constants;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.c;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;
import v7.e;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public abstract class a implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected w7.a f76830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected GLSurfaceView f76831d;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected w7.b f76840m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f76829b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected float[] f76832e = new float[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected float[] f76833f = new float[16];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f76834g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f76835h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f76836i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f76837j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f76838k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f76839l = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Handler f76841n = new Handler();

    /* JADX INFO: renamed from: com.papa.gsyvideoplayer.render.glrender.a$a, reason: collision with other inner class name */
    class RunnableC0994a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Surface f76842b;

        RunnableC0994a(Surface surface) {
            this.f76842b = surface;
        }

        @Override // java.lang.Runnable
        public void run() {
            w7.a aVar = a.this.f76830c;
            if (aVar != null) {
                aVar.onSurfaceAvailable(this.f76842b);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76844b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f76845c;

        b(String str, int i10) {
            this.f76844b = str;
            this.f76845c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            w7.b bVar = aVar.f76840m;
            if (bVar != null) {
                bVar.a(aVar, this.f76844b + ": glError " + this.f76845c, this.f76845c, a.this.f76839l);
            }
            a.this.f76839l = false;
        }
    }

    protected void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            c.e(str + ": glError " + iGlGetError);
            this.f76841n.post(new b(str, iGlGetError));
        }
    }

    protected Bitmap b(int i10, int i11, int i12, int i13, GL10 gl10) {
        int i14 = i12 * i13;
        int[] iArr = new int[i14];
        int[] iArr2 = new int[i14];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        try {
            gl10.glReadPixels(i10, i11, i12, i13, 6408, 5121, intBufferWrap);
            for (int i15 = 0; i15 < i13; i15++) {
                int i16 = i15 * i12;
                int i17 = ((i13 - i15) - 1) * i12;
                for (int i18 = 0; i18 < i12; i18++) {
                    int i19 = iArr[i16 + i18];
                    iArr2[i17 + i18] = (i19 & Constants.LEVEL_SDK) | ((i19 << 16) & 16711680) | ((i19 >> 16) & 255);
                }
            }
            return this.f76829b ? Bitmap.createBitmap(iArr2, i12, i13, Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(iArr2, i12, i13, Bitmap.Config.RGB_565);
        } catch (GLException unused) {
            return null;
        }
    }

    protected int c(String str, String str2) {
        int iK;
        int iK2 = k(35633, str);
        if (iK2 == 0 || (iK = k(35632, str2)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram != 0) {
            GLES20.glAttachShader(iGlCreateProgram, iK2);
            a("glAttachShader");
            GLES20.glAttachShader(iGlCreateProgram, iK);
            a("glAttachShader");
            GLES20.glLinkProgram(iGlCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                c.e("Could not link program: ");
                c.e(GLES20.glGetProgramInfoLog(iGlCreateProgram));
                GLES20.glDeleteProgram(iGlCreateProgram);
                return 0;
            }
        }
        return iGlCreateProgram;
    }

    public int d() {
        return this.f76837j;
    }

    public int e() {
        return this.f76836i;
    }

    public int f() {
        return this.f76835h;
    }

    public int g() {
        return this.f76834g;
    }

    public GSYVideoGLView.c h() {
        return null;
    }

    public float[] i() {
        return this.f76832e;
    }

    public void j() {
        int i10 = this.f76834g;
        if (i10 == 0 || this.f76835h == 0) {
            return;
        }
        Matrix.scaleM(this.f76832e, 0, i10 / this.f76831d.getWidth(), this.f76835h / this.f76831d.getHeight(), 1.0f);
    }

    protected int k(int i10, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        c.e("Could not compile shader " + i10 + ":");
        c.e(GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    public abstract void l();

    public void m(Surface surface) {
        this.f76841n.post(new RunnableC0994a(surface));
    }

    public void n(int i10) {
        this.f76837j = i10;
    }

    public void o(int i10) {
        this.f76836i = i10;
    }

    public void p(int i10) {
        this.f76835h = i10;
    }

    public void q(int i10) {
        this.f76834g = i10;
    }

    public void r(GSYVideoGLView.c cVar) {
    }

    public void s(w7.a aVar) {
        this.f76830c = aVar;
    }

    public void t(w7.b bVar) {
        this.f76840m = bVar;
    }

    public void u(e eVar, boolean z10) {
    }

    public void v(float[] fArr) {
        this.f76832e = fArr;
    }

    public void w(GLSurfaceView gLSurfaceView) {
        this.f76831d = gLSurfaceView;
    }

    public void x() {
    }
}
