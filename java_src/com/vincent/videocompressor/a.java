package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(18)
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f85724e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f85725f = 12610;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f85726g = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EGLDisplay f85727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGLContext f85728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EGLSurface f85729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Surface f85730d;

    public a(Surface surface) {
        surface.getClass();
        this.f85730d = surface;
        b();
    }

    private void a(String msg) {
        boolean z10 = false;
        while (EGL14.eglGetError() != 12288) {
            z10 = true;
        }
        if (z10) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    private void b() {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.f85727a = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.f85727a = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.f85727a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        this.f85728b = EGL14.eglCreateContext(this.f85727a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        a("eglCreateContext");
        if (this.f85728b == null) {
            throw new RuntimeException("null context");
        }
        this.f85729c = EGL14.eglCreateWindowSurface(this.f85727a, eGLConfigArr[0], this.f85730d, new int[]{12344}, 0);
        a("eglCreateWindowSurface");
        if (this.f85729c == null) {
            throw new RuntimeException("surface was null");
        }
    }

    public Surface c() {
        return this.f85730d;
    }

    public void d() {
        EGLDisplay eGLDisplay = this.f85727a;
        EGLSurface eGLSurface = this.f85729c;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f85728b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void e() {
        if (EGL14.eglGetCurrentContext().equals(this.f85728b)) {
            EGLDisplay eGLDisplay = this.f85727a;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(this.f85727a, this.f85729c);
        EGL14.eglDestroyContext(this.f85727a, this.f85728b);
        this.f85730d.release();
        this.f85727a = null;
        this.f85728b = null;
        this.f85729c = null;
        this.f85730d = null;
    }

    public void f(long nsecs) {
        EGLExt.eglPresentationTimeANDROID(this.f85727a, this.f85729c, nsecs);
    }

    public boolean g() {
        return EGL14.eglSwapBuffers(this.f85727a, this.f85729c);
    }
}
