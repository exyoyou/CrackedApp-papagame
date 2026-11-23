package org.webrtc.haima.camerarecorder.capture;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLSurface;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"NewApi"})
public class EglSurface {
    private static final boolean DEBUG = false;
    private static final String TAG = "EGLBase";
    private final EGLBase egl;
    private EGLSurface eglSurface;
    private final int height;
    private final int width;

    @SuppressLint({"InlinedApi"})
    EglSurface(EGLBase eGLBase, Object obj) {
        this.eglSurface = EGL14.EGL_NO_SURFACE;
        if (!(obj instanceof SurfaceView) && !(obj instanceof Surface) && !(obj instanceof SurfaceHolder) && !(obj instanceof SurfaceTexture)) {
            throw new IllegalArgumentException("unsupported surface");
        }
        this.egl = eGLBase;
        EGLSurface eGLSurfaceCreateWindowSurface = eGLBase.createWindowSurface(obj);
        this.eglSurface = eGLSurfaceCreateWindowSurface;
        this.width = eGLBase.querySurface(eGLSurfaceCreateWindowSurface, 12375);
        this.height = eGLBase.querySurface(this.eglSurface, 12374);
    }

    public EGLContext getContext() {
        return this.egl.getContext();
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void makeCurrent() {
        this.egl.makeCurrent(this.eglSurface);
    }

    @SuppressLint({"InlinedApi"})
    public void release() {
        this.egl.makeDefault();
        this.egl.destroyWindowSurface(this.eglSurface);
        this.eglSurface = EGL14.EGL_NO_SURFACE;
    }

    public void swap() {
        this.egl.swap(this.eglSurface);
    }
}
