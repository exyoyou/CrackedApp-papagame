package org.webrtc.haima.camerarecorder.egl;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes10.dex */
public class DefaultContextFactory implements GLSurfaceView.EGLContextFactory {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final String TAG = "DefaultContextFactory";
    private int EGLContextClientVersion;

    public DefaultContextFactory(int i10) {
        this.EGLContextClientVersion = i10;
    }

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        int i10 = this.EGLContextClientVersion;
        return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, i10 != 0 ? new int[]{EGL_CONTEXT_CLIENT_VERSION, i10, 12344} : null);
    }

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("display:");
        sb2.append(eGLDisplay);
        sb2.append(" context: ");
        sb2.append(eGLContext);
        throw new RuntimeException("eglDestroyContext" + egl10.eglGetError());
    }
}
