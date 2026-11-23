package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(16)
public class d implements SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f85749o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f85750p = 12440;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGL10 f85751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EGLDisplay f85752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EGLContext f85753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EGLSurface f85754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SurfaceTexture f85755f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Surface f85756g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f85757h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f85758i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f85759j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f85760k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f85761l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f85762m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ByteBuffer f85763n;

    public d(int width, int height, int rotate) {
        this.f85752c = null;
        this.f85753d = null;
        this.f85754e = null;
        this.f85757h = new Object();
        this.f85762m = 0;
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException();
        }
        this.f85760k = width;
        this.f85761l = height;
        this.f85762m = rotate;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(width * height * 4);
        this.f85763n = byteBufferAllocateDirect;
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        e(width, height);
        h();
        j();
    }

    private void c(String msg) {
        if (this.f85751b.eglGetError() != 12288) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    private void e(int width, int height) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f85751b = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f85752c = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL10 display");
        }
        if (!this.f85751b.eglInitialize(eGLDisplayEglGetDisplay, null)) {
            this.f85752c = null;
            throw new RuntimeException("unable to initialize EGL10");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!this.f85751b.eglChooseConfig(this.f85752c, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        this.f85753d = this.f85751b.eglCreateContext(this.f85752c, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{f85750p, 2, 12344});
        c("eglCreateContext");
        if (this.f85753d == null) {
            throw new RuntimeException("null context");
        }
        this.f85754e = this.f85751b.eglCreatePbufferSurface(this.f85752c, eGLConfigArr[0], new int[]{12375, width, 12374, height, 12344});
        c("eglCreatePbufferSurface");
        if (this.f85754e == null) {
            throw new RuntimeException("surface was null");
        }
    }

    private void j() {
        f fVar = new f(this.f85762m);
        this.f85759j = fVar;
        fVar.g();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f85759j.e());
        this.f85755f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.f85756g = new Surface(this.f85755f);
    }

    public void a() {
        synchronized (this.f85757h) {
            while (!this.f85758i) {
                try {
                    this.f85757h.wait(5000L);
                    if (!this.f85758i) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e10) {
                    throw new RuntimeException(e10);
                }
            }
            this.f85758i = false;
        }
        this.f85759j.b("before updateTexImage");
        this.f85755f.updateTexImage();
    }

    public void b(String fragmentShader) {
        this.f85759j.a(fragmentShader);
    }

    public void d(boolean invert) {
        this.f85759j.d(this.f85755f, invert);
    }

    public ByteBuffer f() {
        this.f85763n.rewind();
        GLES20.glReadPixels(0, 0, this.f85760k, this.f85761l, 6408, 5121, this.f85763n);
        return this.f85763n;
    }

    public Surface g() {
        return this.f85756g;
    }

    public void h() {
        if (this.f85751b == null) {
            throw new RuntimeException("not configured for makeCurrent");
        }
        c("before makeCurrent");
        EGL10 egl10 = this.f85751b;
        EGLDisplay eGLDisplay = this.f85752c;
        EGLSurface eGLSurface = this.f85754e;
        if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f85753d)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void i() {
        EGL10 egl10 = this.f85751b;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.f85753d)) {
                EGL10 egl11 = this.f85751b;
                EGLDisplay eGLDisplay = this.f85752c;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl11.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f85751b.eglDestroySurface(this.f85752c, this.f85754e);
            this.f85751b.eglDestroyContext(this.f85752c, this.f85753d);
        }
        this.f85756g.release();
        this.f85752c = null;
        this.f85753d = null;
        this.f85754e = null;
        this.f85751b = null;
        this.f85759j = null;
        this.f85756g = null;
        this.f85755f = null;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture st) {
        synchronized (this.f85757h) {
            if (this.f85758i) {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
            this.f85758i = true;
            this.f85757h.notifyAll();
        }
    }

    public d() {
        this.f85752c = null;
        this.f85753d = null;
        this.f85754e = null;
        this.f85757h = new Object();
        this.f85762m = 0;
        j();
    }
}
