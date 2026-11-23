package org.webrtc.haima.camerarecorder.capture;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.Matrix;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import org.webrtc.haima.camerarecorder.egl.GLES20FramebufferObject;
import org.webrtc.haima.camerarecorder.egl.GlPreview;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public class EncodeRenderHandler implements Runnable {
    private static final String TAG = "CameraRecorder";
    private final float XMatrixScale;
    private final float YMatrixScale;
    private EGLBase egl;
    private final float fileHeight;
    private final float fileWidth;
    private GLES20FramebufferObject filterFramebufferObject;
    private GLES20FramebufferObject framebufferObject;
    private GlFilter glFilter;
    private EglSurface inputSurface;
    private boolean isRecordable;
    private GlFilter normalFilter;
    private GlPreview previewShader;
    private final boolean recordNoFilter;
    private int requestDraw;
    private boolean requestRelease;
    private boolean requestSetEglContext;
    private EGLContext sharedContext;
    private Object surface;
    private final Object sync = new Object();
    private int texId = -1;
    private float[] MVPMatrix = new float[16];
    private float[] STMatrix = new float[16];
    private float aspectRatio = 1.0f;

    private EncodeRenderHandler(boolean z10, boolean z11, float f10, float f11, float f12, float f13, boolean z12, GlFilter glFilter) {
        this.fileWidth = f12;
        this.fileHeight = f13;
        this.recordNoFilter = z12;
        this.glFilter = glFilter;
        if (f10 == f11) {
            this.XMatrixScale = z11 ? -1 : 1;
            this.YMatrixScale = z10 ? -1.0f : 1.0f;
            return;
        }
        if (f10 < f11) {
            this.XMatrixScale = z11 ? -1 : 1;
            float f14 = (z10 ? -1 : 1) * (f11 / f10);
            this.YMatrixScale = f14;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cameraAspect: ");
            sb2.append(f11);
            sb2.append(" YMatrixScale :");
            sb2.append(f14);
            return;
        }
        float f15 = (z11 ? -1 : 1) * (f10 / f11);
        this.XMatrixScale = f15;
        float f16 = z10 ? -1 : 1;
        this.YMatrixScale = f16;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("cameraAspect: ");
        sb3.append(f11);
        sb3.append(" YMatrixScale :");
        sb3.append(f16);
        sb3.append(" XMatrixScale :");
        sb3.append(f15);
    }

    static EncodeRenderHandler createHandler(String str, boolean z10, boolean z11, float f10, float f11, float f12, boolean z12, GlFilter glFilter) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("fileAspect:");
        float f13 = f12 / f11;
        sb2.append(f13);
        sb2.append(" viewAcpect: ");
        sb2.append(f10);
        EncodeRenderHandler encodeRenderHandler = new EncodeRenderHandler(z10, z11, f13, f10, f11, f12, z12, glFilter);
        synchronized (encodeRenderHandler.sync) {
            new Thread(encodeRenderHandler, !TextUtils.isEmpty(str) ? str : TAG).start();
            try {
                encodeRenderHandler.sync.wait();
            } catch (InterruptedException unused) {
            }
        }
        return encodeRenderHandler;
    }

    private void internalPrepare() {
        internalRelease();
        EGLBase eGLBase = new EGLBase(this.sharedContext, false, this.isRecordable);
        this.egl = eGLBase;
        EglSurface eglSurfaceCreateFromSurface = eGLBase.createFromSurface(this.surface);
        this.inputSurface = eglSurfaceCreateFromSurface;
        eglSurfaceCreateFromSurface.makeCurrent();
        GlPreview glPreview = new GlPreview(GlPreview.GL_TEXTURE_EXTERNAL_OES);
        this.previewShader = glPreview;
        glPreview.setup();
        if (isRecordFilter()) {
            GLES20FramebufferObject gLES20FramebufferObject = new GLES20FramebufferObject();
            this.framebufferObject = gLES20FramebufferObject;
            gLES20FramebufferObject.setup((int) this.fileWidth, (int) this.fileHeight);
            GLES20FramebufferObject gLES20FramebufferObject2 = new GLES20FramebufferObject();
            this.filterFramebufferObject = gLES20FramebufferObject2;
            gLES20FramebufferObject2.setup((int) this.fileWidth, (int) this.fileHeight);
            GlFilter glFilter = new GlFilter();
            this.normalFilter = glFilter;
            glFilter.setup();
        }
        this.surface = null;
        this.sync.notifyAll();
    }

    private void internalRelease() {
        EglSurface eglSurface = this.inputSurface;
        if (eglSurface != null) {
            eglSurface.release();
            this.inputSurface = null;
        }
        EGLBase eGLBase = this.egl;
        if (eGLBase != null) {
            eGLBase.release();
            this.egl = null;
        }
        GlFilter glFilter = this.normalFilter;
        if (glFilter != null) {
            glFilter.release();
            this.normalFilter = null;
        }
        GLES20FramebufferObject gLES20FramebufferObject = this.filterFramebufferObject;
        if (gLES20FramebufferObject != null) {
            gLES20FramebufferObject.release();
            this.filterFramebufferObject = null;
        }
        GLES20FramebufferObject gLES20FramebufferObject2 = this.framebufferObject;
        if (gLES20FramebufferObject2 != null) {
            gLES20FramebufferObject2.release();
            this.framebufferObject = null;
        }
    }

    private boolean isRecordFilter() {
        return (this.glFilter == null || this.recordNoFilter) ? false : true;
    }

    public final void draw(int i10, float[] fArr, float[] fArr2, float f10) {
        synchronized (this.sync) {
            if (this.requestRelease) {
                return;
            }
            this.texId = i10;
            System.arraycopy(fArr, 0, this.STMatrix, 0, 16);
            System.arraycopy(fArr2, 0, this.MVPMatrix, 0, 16);
            Matrix.scaleM(this.MVPMatrix, 0, this.XMatrixScale, this.YMatrixScale, 1.0f);
            this.aspectRatio = f10;
            this.requestDraw++;
            this.sync.notifyAll();
        }
    }

    final void prepareDraw() {
        synchronized (this.sync) {
            if (this.requestRelease) {
                return;
            }
            this.requestDraw++;
            this.sync.notifyAll();
        }
    }

    public final void release() {
        synchronized (this.sync) {
            if (this.requestRelease) {
                return;
            }
            this.requestRelease = true;
            this.sync.notifyAll();
            try {
                this.sync.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        if (r4 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
    
        if (r6.egl == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003a, code lost:
    
        if (r6.texId < 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
    
        r6.inputSurface.makeCurrent();
        android.opengl.GLES20.glClear(16384);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
    
        if (isRecordFilter() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        r6.framebufferObject.enable();
        r6.filterFramebufferObject.enable();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        r6.previewShader.draw(r6.texId, r6.MVPMatrix, r6.STMatrix, r6.aspectRatio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (isRecordFilter() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
    
        r6.framebufferObject.enable();
        r6.glFilter.draw(r6.filterFramebufferObject.getTexName(), r6.framebufferObject);
        android.opengl.GLES20.glBindFramebuffer(36160, 0);
        android.opengl.GLES20.glViewport(0, 0, r6.framebufferObject.getWidth(), r6.framebufferObject.getHeight());
        android.opengl.GLES20.glClear(com.uc.crashsdk.export.LogType.UNEXP_RESTART);
        r6.normalFilter.draw(r6.framebufferObject.getTexName(), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        r6.inputSurface.swap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a8, code lost:
    
        r0 = r6.sync;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
    
        monitor-enter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
    
        r6.sync.wait();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
    
        monitor-exit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b3, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c9, code lost:
    
        throw r1;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.haima.camerarecorder.capture.EncodeRenderHandler.run():void");
    }

    final void setEglContext(EGLContext eGLContext, int i10, Object obj) {
        if (!(obj instanceof Surface) && !(obj instanceof SurfaceTexture) && !(obj instanceof SurfaceHolder)) {
            throw new RuntimeException("unsupported window type:" + obj);
        }
        synchronized (this.sync) {
            if (this.requestRelease) {
                return;
            }
            this.sharedContext = eGLContext;
            this.texId = i10;
            this.surface = obj;
            this.isRecordable = true;
            this.requestSetEglContext = true;
            this.sync.notifyAll();
            try {
                this.sync.wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
