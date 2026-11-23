package org.webrtc.haima.camerarecorder.capture;

import android.annotation.SuppressLint;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"NewApi"})
public class EGLBase {
    private static final boolean DEBUG = false;
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    private static final String TAG = "EGLBase";
    private EGLConfig eglConfig;
    private EGLContext eglContext = EGL14.EGL_NO_CONTEXT;
    private EGLDisplay eglDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLContext defaultContext = EGL14.EGL_NO_CONTEXT;

    EGLBase(EGLContext eGLContext, boolean z10, boolean z11) {
        init(eGLContext, z10, z11);
    }

    @SuppressLint({"InlinedApi"})
    private void checkEglError(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
    }

    @SuppressLint({"InlinedApi"})
    private EGLContext createContext(EGLContext eGLContext) {
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.eglDisplay, this.eglConfig, eGLContext, new int[]{12440, 2, 12344}, 0);
        checkEglError("eglCreateContext");
        return eGLContextEglCreateContext;
    }

    private void destroyContext() {
        if (!EGL14.eglDestroyContext(this.eglDisplay, this.eglContext)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("display:");
            sb2.append(this.eglDisplay);
            sb2.append(" context: ");
            sb2.append(this.eglContext);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("eglDestroyContex:");
            sb3.append(EGL14.eglGetError());
        }
        EGLContext eGLContext = EGL14.EGL_NO_CONTEXT;
        this.eglContext = eGLContext;
        EGLContext eGLContext2 = this.defaultContext;
        if (eGLContext2 != eGLContext) {
            if (!EGL14.eglDestroyContext(this.eglDisplay, eGLContext2)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("display:");
                sb4.append(this.eglDisplay);
                sb4.append(" context: ");
                sb4.append(this.defaultContext);
                StringBuilder sb5 = new StringBuilder();
                sb5.append("eglDestroyContex:");
                sb5.append(EGL14.eglGetError());
            }
            this.defaultContext = EGL14.EGL_NO_CONTEXT;
        }
    }

    @SuppressLint({"InlinedApi"})
    private EGLConfig getConfig(boolean z10, boolean z11) {
        int[] iArr = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12344, 12344, 12344, 12344, 12344, 12344, 12344};
        int i10 = 10;
        if (z10) {
            iArr[10] = 12325;
            iArr[11] = 16;
            i10 = 12;
        }
        if (z11) {
            int i11 = i10 + 1;
            iArr[i10] = 12610;
            i10 = i11 + 1;
            iArr[i11] = 1;
        }
        for (int i12 = 16; i12 >= i10; i12--) {
            iArr[i12] = 12344;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.eglDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        return null;
    }

    @SuppressLint({"InlinedApi"})
    private void init(EGLContext eGLContext, boolean z10, boolean z11) {
        if (this.eglDisplay != EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("EGL already set up");
        }
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.eglDisplay = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("eglGetDisplay failed");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.eglDisplay = null;
            throw new RuntimeException("eglInitialize failed");
        }
        if (eGLContext == null) {
            eGLContext = EGL14.EGL_NO_CONTEXT;
        }
        if (this.eglContext == EGL14.EGL_NO_CONTEXT) {
            EGLConfig config = getConfig(z10, z11);
            this.eglConfig = config;
            if (config == null) {
                throw new RuntimeException("chooseConfig failed");
            }
            this.eglContext = createContext(eGLContext);
        }
        EGL14.eglQueryContext(this.eglDisplay, this.eglContext, 12440, new int[1], 0);
        makeDefault();
    }

    EglSurface createFromSurface(Object obj) {
        EglSurface eglSurface = new EglSurface(this, obj);
        eglSurface.makeCurrent();
        return eglSurface;
    }

    @SuppressLint({"InlinedApi"})
    EGLSurface createWindowSurface(Object obj) {
        try {
            return EGL14.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, obj, new int[]{12344}, 0);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    void destroyWindowSurface(EGLSurface eGLSurface) {
        EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
        if (eGLSurface != eGLSurface2) {
            EGL14.eglMakeCurrent(this.eglDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.eglDisplay, eGLSurface);
        }
        EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
    }

    public EGLContext getContext() {
        return this.eglContext;
    }

    boolean makeCurrent(EGLSurface eGLSurface) {
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLSurface == null || eGLSurface == EGL14.EGL_NO_SURFACE) {
            EGL14.eglGetError();
            return false;
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("eglMakeCurrent:");
        sb2.append(EGL14.eglGetError());
        return false;
    }

    void makeDefault() {
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("makeDefault");
        sb2.append(EGL14.eglGetError());
    }

    int querySurface(EGLSurface eGLSurface, int i10) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.eglDisplay, eGLSurface, i10, iArr, 0);
        return iArr[0];
    }

    public void release() {
        if (this.eglDisplay != EGL14.EGL_NO_DISPLAY) {
            destroyContext();
            EGL14.eglTerminate(this.eglDisplay);
            EGL14.eglReleaseThread();
        }
        this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        this.eglContext = EGL14.EGL_NO_CONTEXT;
    }

    @SuppressLint({"InlinedApi"})
    int swap(EGLSurface eGLSurface) {
        if (EGL14.eglSwapBuffers(this.eglDisplay, eGLSurface)) {
            return 12288;
        }
        return EGL14.eglGetError();
    }
}
