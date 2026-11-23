package org.webrtc.haima.camerarecorder.egl;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.uc.crashsdk.export.LogType;
import java.util.LinkedList;
import java.util.Queue;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public abstract class GlFrameBufferObjectRenderer implements GLSurfaceView.Renderer {
    private GLES20FramebufferObject framebufferObject;
    private GlFilter normalShader;
    private final Queue<Runnable> runOnDraw = new LinkedList();

    protected GlFrameBufferObjectRenderer() {
    }

    protected void finalize() throws Throwable {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        synchronized (this.runOnDraw) {
            while (!this.runOnDraw.isEmpty()) {
                this.runOnDraw.poll().run();
            }
        }
        this.framebufferObject.enable();
        onDrawFrame(this.framebufferObject);
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glClear(LogType.UNEXP_RESTART);
        this.normalShader.draw(this.framebufferObject.getTexName(), null);
    }

    public abstract void onDrawFrame(GLES20FramebufferObject gLES20FramebufferObject);

    public abstract void onSurfaceChanged(int i10, int i11);

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i10, int i11) {
        this.framebufferObject.setup(i10, i11);
        this.normalShader.setFrameSize(i10, i11);
        onSurfaceChanged(i10, i11);
        GLES20.glViewport(0, 0, this.framebufferObject.getWidth(), this.framebufferObject.getHeight());
    }

    public abstract void onSurfaceCreated(EGLConfig eGLConfig);

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.framebufferObject = new GLES20FramebufferObject();
        GlFilter glFilter = new GlFilter();
        this.normalShader = glFilter;
        glFilter.setup();
        onSurfaceCreated(eGLConfig);
    }
}
