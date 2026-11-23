package org.ppsspp.ppsspp;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes10.dex */
public class NativeRenderer implements GLSurfaceView.Renderer {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f95882d = "NativeRenderer";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeActivity f95883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f95884c;

    NativeRenderer(NativeActivity nativeActivity) {
        this.f95883b = nativeActivity;
    }

    public boolean a() {
        return this.f95884c;
    }

    public native void displayInit();

    public native void displayRender();

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        this.f95884c = true;
        displayRender();
        this.f95884c = false;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        displayInit();
    }
}
