package org.webrtc.haima.camerarecorder.egl;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import javax.microedition.khronos.egl.EGLConfig;
import org.webrtc.haima.HmCameraWrapper;
import org.webrtc.haima.camerarecorder.LensFacing;
import org.webrtc.haima.camerarecorder.Resolution;
import org.webrtc.haima.camerarecorder.capture.MediaVideoEncoder;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public class GlPreviewRenderer extends GlFrameBufferObjectRenderer implements SurfaceTexture.OnFrameAvailableListener {
    private static final String TAG = "GlPreviewRenderer";
    private int angle;
    private float aspectRatio;
    private Resolution cameraResolution;
    private float drawScale;
    private GLES20FramebufferObject filterFramebufferObject;
    private float gestureScale;
    private GlFilter glFilter;
    private final GLSurfaceView glView;
    private boolean isNewShader;
    private GlPreview previewShader;
    private GlSurfaceTexture previewTexture;
    private float scaleRatio;
    private SurfaceCreateListener surfaceCreateListener;
    private int texName;
    private int updateTexImageCompare;
    private int updateTexImageCounter;
    private MediaVideoEncoder videoEncoder;
    private final Handler handler = new Handler();
    private float[] MVPMatrix = new float[16];
    private float[] ProjMatrix = new float[16];
    private float[] MMatrix = new float[16];
    private float[] VMatrix = new float[16];
    private float[] STMatrix = new float[16];
    private float defautLookAtDistance = 5.0f;
    private float defautCameraDistance = 7.0f;
    private float customCameraDistance = 10.0f;
    private final Object mLock = new Object();

    public interface SurfaceCreateListener {
        void onCreated(SurfaceTexture surfaceTexture);
    }

    public GlPreviewRenderer(GLSurfaceView gLSurfaceView) {
        this.glView = gLSurfaceView;
        gLSurfaceView.setEGLConfigChooser(new GLES20ConfigChooser(false));
        gLSurfaceView.setEGLContextFactory(new GLES20ContextFactory());
        gLSurfaceView.setRenderer(this);
        gLSurfaceView.setRenderMode(0);
        initValue();
        Matrix.setIdentityM(this.STMatrix, 0);
    }

    private void initValue() {
        this.aspectRatio = 1.0f;
        this.scaleRatio = 1.0f;
        this.drawScale = 1.0f;
        this.gestureScale = 1.0f;
        this.angle = 0;
        this.updateTexImageCounter = 0;
        this.updateTexImageCompare = 0;
    }

    public GlFilter getFilter() {
        return this.glFilter;
    }

    public GlSurfaceTexture getPreviewTexture() {
        return this.previewTexture;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.GlFrameBufferObjectRenderer
    public void onDrawFrame(GLES20FramebufferObject gLES20FramebufferObject) {
        float f10 = this.drawScale;
        if (f10 != this.gestureScale) {
            float f11 = 1.0f / f10;
            Matrix.scaleM(this.MMatrix, 0, f11, f11, 1.0f);
            float f12 = this.gestureScale;
            this.drawScale = f12;
            Matrix.scaleM(this.MMatrix, 0, f12, f12, 1.0f);
        }
        synchronized (this.mLock) {
            if (this.updateTexImageCompare != this.updateTexImageCounter) {
                while (this.updateTexImageCompare != this.updateTexImageCounter) {
                    this.previewTexture.updateTexImage();
                    this.previewTexture.getTransformMatrix(this.STMatrix);
                    this.updateTexImageCompare++;
                }
            }
        }
        if (this.isNewShader) {
            GlFilter glFilter = this.glFilter;
            if (glFilter != null) {
                glFilter.setup();
                this.glFilter.setFrameSize(gLES20FramebufferObject.getWidth(), gLES20FramebufferObject.getHeight());
            }
            this.isNewShader = false;
        }
        if (this.glFilter != null) {
            this.filterFramebufferObject.enable();
        }
        GLES20.glClear(16384);
        Matrix.multiplyMM(this.MVPMatrix, 0, this.VMatrix, 0, this.MMatrix, 0);
        float[] fArr = this.MVPMatrix;
        Matrix.multiplyMM(fArr, 0, this.ProjMatrix, 0, fArr, 0);
        this.previewShader.draw(this.texName, this.MVPMatrix, this.STMatrix, this.aspectRatio);
        if (this.glFilter != null) {
            gLES20FramebufferObject.enable();
            GLES20.glClear(16384);
            this.glFilter.draw(this.filterFramebufferObject.getTexName(), gLES20FramebufferObject);
        }
        synchronized (this.mLock) {
            MediaVideoEncoder mediaVideoEncoder = this.videoEncoder;
            if (mediaVideoEncoder != null) {
                mediaVideoEncoder.frameAvailableSoon(this.texName, this.STMatrix, this.MVPMatrix, this.aspectRatio);
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.updateTexImageCounter++;
        this.glView.requestRender();
    }

    public void onStartPreview(float f10, float f11, boolean z10) {
        Matrix.setIdentityM(this.MMatrix, 0);
        Matrix.rotateM(this.MMatrix, 0, -this.angle, 0.0f, 0.0f, 1.0f);
        if (!z10) {
            float measuredHeight = this.glView.getMeasuredHeight() / this.glView.getMeasuredWidth();
            float f12 = f10 / f11;
            if (measuredHeight >= f12) {
                Matrix.scaleM(this.MMatrix, 0, 1.0f, 1.0f, 1.0f);
                return;
            } else {
                float f13 = (f12 / measuredHeight) * 1.0f;
                Matrix.scaleM(this.MMatrix, 0, f13, f13, 1.0f);
                return;
            }
        }
        if (this.glView.getMeasuredWidth() == this.glView.getMeasuredHeight()) {
            float fMax = Math.max(f10 / f11, f11 / f10) * 1.0f;
            Matrix.scaleM(this.MMatrix, 0, fMax, fMax, 1.0f);
        } else {
            float fMax2 = Math.max(this.glView.getMeasuredHeight() / f10, this.glView.getMeasuredWidth() / f11) * 1.0f;
            Matrix.scaleM(this.MMatrix, 0, fMax2, fMax2, 1.0f);
        }
    }

    @Override // org.webrtc.haima.camerarecorder.egl.GlFrameBufferObjectRenderer
    public void onSurfaceChanged(int i10, int i11) {
        this.filterFramebufferObject.setup(i10, i11);
        this.previewShader.setFrameSize(i10, i11);
        GlFilter glFilter = this.glFilter;
        if (glFilter != null) {
            glFilter.setFrameSize(i10, i11);
        }
        this.scaleRatio = i10 / i11;
        LensFacing lensFacing = HmCameraWrapper.getInstance().getLensFacing();
        if (lensFacing != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("lensfacing:");
            sb2.append(lensFacing.getFacing());
        }
        float f10 = this.defautCameraDistance;
        if (lensFacing != null && lensFacing.getFacing() == LensFacing.BACK.getFacing()) {
            f10 = this.customCameraDistance;
        }
        float[] fArr = this.ProjMatrix;
        float f11 = this.scaleRatio;
        Matrix.frustumM(fArr, 0, -f11, f11, -1.0f, 1.0f, 5.0f, f10);
    }

    @Override // org.webrtc.haima.camerarecorder.egl.GlFrameBufferObjectRenderer
    public void onSurfaceCreated(EGLConfig eGLConfig) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i10 = iArr[0];
        this.texName = i10;
        GlSurfaceTexture glSurfaceTexture = new GlSurfaceTexture(i10);
        this.previewTexture = glSurfaceTexture;
        glSurfaceTexture.setOnFrameAvailableListener(this);
        GLES20.glBindTexture(this.previewTexture.getTextureTarget(), this.texName);
        EglUtil.setupSampler(this.previewTexture.getTextureTarget(), 9729, 9728);
        GLES20.glBindTexture(3553, 0);
        this.filterFramebufferObject = new GLES20FramebufferObject();
        GlPreview glPreview = new GlPreview(this.previewTexture.getTextureTarget());
        this.previewShader = glPreview;
        glPreview.setup();
        LensFacing lensFacing = HmCameraWrapper.getInstance().getLensFacing();
        float f10 = this.defautLookAtDistance;
        if (lensFacing != null && lensFacing.getFacing() == LensFacing.BACK.getFacing()) {
            f10 = this.customCameraDistance;
        }
        Matrix.setLookAtM(this.VMatrix, 0, 0.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        if (this.glFilter != null) {
            this.isNewShader = true;
        }
        GLES20.glGetIntegerv(3379, iArr, 0);
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                if (GlPreviewRenderer.this.surfaceCreateListener != null) {
                    GlPreviewRenderer.this.surfaceCreateListener.onCreated(GlPreviewRenderer.this.previewTexture.getSurfaceTexture());
                }
            }
        });
    }

    public void release() {
        this.glView.queueEvent(new Runnable() { // from class: org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer.4
            @Override // java.lang.Runnable
            public void run() {
                if (GlPreviewRenderer.this.glFilter != null) {
                    GlPreviewRenderer.this.glFilter.release();
                }
            }
        });
    }

    public void setAngle(int i10) {
        this.angle = i10;
        if (i10 == 90 || i10 == 270) {
            this.aspectRatio = this.cameraResolution.width() / this.cameraResolution.height();
        } else {
            this.aspectRatio = this.cameraResolution.height() / this.cameraResolution.width();
        }
    }

    public void setCameraResolution(Resolution resolution) {
        this.cameraResolution = resolution;
    }

    public void setGestureScale(float f10) {
        this.gestureScale = f10;
    }

    public void setGlFilter(final GlFilter glFilter) {
        this.glView.queueEvent(new Runnable() { // from class: org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer.1
            @Override // java.lang.Runnable
            public void run() {
                if (GlPreviewRenderer.this.glFilter != null) {
                    GlPreviewRenderer.this.glFilter.release();
                }
                GlPreviewRenderer.this.glFilter = glFilter;
                GlPreviewRenderer.this.isNewShader = true;
                GlPreviewRenderer.this.glView.requestRender();
            }
        });
    }

    public void setSurfaceCreateListener(SurfaceCreateListener surfaceCreateListener) {
        this.surfaceCreateListener = surfaceCreateListener;
    }

    @SuppressLint({"NewApi"})
    public void setVideoEncoder(final MediaVideoEncoder mediaVideoEncoder) {
        this.glView.queueEvent(new Runnable() { // from class: org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (GlPreviewRenderer.this.mLock) {
                    MediaVideoEncoder mediaVideoEncoder2 = mediaVideoEncoder;
                    if (mediaVideoEncoder2 != null) {
                        mediaVideoEncoder2.setEglContext(EGL14.eglGetCurrentContext(), GlPreviewRenderer.this.texName);
                    }
                    GlPreviewRenderer.this.videoEncoder = mediaVideoEncoder;
                }
            }
        });
    }
}
