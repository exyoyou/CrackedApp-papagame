package org.hmwebrtc;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.view.Surface;
import org.webrtc.haima.camerarecorder.egl.GlPreview;

/* JADX INFO: loaded from: classes10.dex */
public class SurfaceTextureOverlap implements SurfaceTexture.OnFrameAvailableListener {
    private static final String TAG = "SurfaceTextureOverlap";
    private int mCaptreId;
    private GlWatermarkDrawer mCaptureIdDrawer;
    private CaptureIdObserver mCaptureIdObserver;
    RendererCommon.GlDrawer mDrawer;
    private int mFrameHeight;
    private int mFrameInterval;
    private int mFrameNum;
    private int mFrameWidth;
    private boolean mFreezeMode;
    private long mFreezeModeFinishMs;
    private Handler mHandler;
    private EglBase mInputEglBase;
    private boolean mMirror;
    private final int mOesTextureId;
    private EglBase mOutputEglBase;
    private final SurfaceTexture mSurfaceTexture;
    private int mViewportHeight;
    private int mViewportWidth;
    private int mViewportX;
    private int mViewportY;

    public interface CaptureIdObserver {
        void onCaptureIdChanged(int i10);
    }

    public SurfaceTextureOverlap(EglBase.Context context, SurfaceTexture surfaceTexture, Handler handler, int i10) {
        this.mHandler = handler;
        this.mFrameInterval = i10;
        EglBase eglBaseD = h.d(context, EglBase.CONFIG_PIXEL_BUFFER);
        this.mInputEglBase = eglBaseD;
        try {
            eglBaseD.createDummyPbufferSurface();
            this.mInputEglBase.makeCurrent();
        } catch (RuntimeException unused) {
            this.mInputEglBase.release();
            this.mInputEglBase = null;
        }
        int iGenerateTexture = GlUtil.generateTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES);
        this.mOesTextureId = iGenerateTexture;
        SurfaceTexture surfaceTexture2 = new SurfaceTexture(iGenerateTexture);
        this.mSurfaceTexture = surfaceTexture2;
        setOnFrameAvailableListener(surfaceTexture2, this, null);
        EglBase eglBaseD2 = h.d(context, EglBase.CONFIG_RECORDABLE);
        this.mOutputEglBase = eglBaseD2;
        eglBaseD2.createSurface(new Surface(surfaceTexture));
        this.mDrawer = new GlRectDrawer();
        this.mCaptureIdDrawer = new GlWatermarkDrawer();
    }

    private void readInput() {
        EglBase eglBase = this.mInputEglBase;
        if (eglBase != null) {
            eglBase.makeCurrent();
            updateTexImage();
        }
    }

    @TargetApi(21)
    private static void setOnFrameAvailableListener(SurfaceTexture surfaceTexture, SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener, Handler handler) {
        if (handler != null) {
            surfaceTexture.setOnFrameAvailableListener(onFrameAvailableListener, handler);
        } else {
            surfaceTexture.setOnFrameAvailableListener(onFrameAvailableListener);
        }
    }

    private void updateMode() {
        if (!this.mFreezeMode || System.currentTimeMillis() < this.mFreezeModeFinishMs) {
            return;
        }
        this.mFreezeModeFinishMs = 0L;
        this.mFreezeMode = false;
    }

    private void updateTexImage() {
        synchronized (EglBase.lock) {
            try {
                this.mSurfaceTexture.updateTexImage();
            } catch (Exception e10) {
                Logging.e(TAG, "updateTexImage error!" + e10.toString());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004d A[Catch: RuntimeException -> 0x009a, TryCatch #0 {RuntimeException -> 0x009a, blocks: (B:6:0x0016, B:8:0x0038, B:16:0x0051, B:18:0x0058, B:19:0x005a, B:21:0x006a, B:23:0x0071, B:26:0x0075, B:30:0x008d, B:32:0x0096, B:29:0x007e, B:12:0x0044, B:14:0x004d, B:15:0x004f), top: B:37:0x0016 }] */
    private void writeOutput() {
        int i10;
        int i11;
        int i12;
        if (this.mOutputEglBase == null) {
            return;
        }
        RendererCommon.convertMatrixFromAndroidGraphicsMatrix(new Matrix());
        float[] fArr = new float[16];
        this.mSurfaceTexture.getTransformMatrix(fArr);
        try {
            this.mOutputEglBase.makeCurrent();
            GLES20.glClear(16384);
            this.mDrawer.drawOes(this.mOesTextureId, fArr, this.mFrameWidth, this.mFrameHeight, this.mViewportX, this.mViewportY, this.mViewportWidth, this.mViewportHeight);
            int i13 = this.mFrameInterval;
            if (i13 != 0) {
                int i14 = this.mFrameNum;
                this.mFrameNum = i14 + 1;
                if (i14 % i13 == 1) {
                    i10 = this.mCaptreId + 1;
                    this.mCaptreId = i10;
                    if (i10 >= 27) {
                        this.mCaptreId = 1;
                    }
                    i11 = this.mCaptreId;
                } else {
                    i11 = -1;
                }
            } else {
                i10 = this.mCaptreId + 1;
                this.mCaptreId = i10;
                if (i10 >= 27) {
                    this.mCaptreId = 1;
                }
                i11 = this.mCaptreId;
            }
            if (this.mFrameNum == 1000) {
                this.mFrameNum = 0;
            }
            int i15 = this.mViewportHeight;
            int i16 = i15 / 10;
            int i17 = this.mViewportWidth;
            int i18 = i17 / 20;
            int i19 = i15 - (i16 * 2);
            if (this.mMirror) {
                int i20 = 0 - ((i18 * 3) * 2);
                if (i20 < 0) {
                    i20 += i17;
                }
                i12 = i20;
            } else {
                i12 = 0;
            }
            updateMode();
            if (this.mFreezeMode || i11 >= 0) {
                this.mCaptureIdDrawer.drawCaptureId(this.mCaptreId, 3, i12, i19, i18 * 3 * 2, i16, this.mMirror);
            }
            this.mOutputEglBase.swapBuffers();
            CaptureIdObserver captureIdObserver = this.mCaptureIdObserver;
            if (captureIdObserver != null) {
                captureIdObserver.onCaptureIdChanged(i11);
            }
        } catch (RuntimeException e10) {
            Logging.e(TAG, "encodeTexture failed", e10);
        }
    }

    public SurfaceTexture getSurfaceTexture() {
        if (this.mInputEglBase != null) {
            return this.mSurfaceTexture;
        }
        return null;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        readInput();
        writeOutput();
    }

    public void release() {
        if (this.mInputEglBase == null) {
            return;
        }
        GLES20.glDeleteTextures(1, new int[]{this.mOesTextureId}, 0);
        this.mInputEglBase.release();
        this.mInputEglBase = null;
        this.mOutputEglBase.release();
        this.mOutputEglBase = null;
    }

    public void setCaptureIdObserver(CaptureIdObserver captureIdObserver) {
        this.mCaptureIdObserver = captureIdObserver;
    }

    public void setFreezeModeDuration(long j10) {
        if (j10 <= 0) {
            this.mFreezeMode = false;
        } else {
            this.mFreezeMode = true;
            this.mFreezeModeFinishMs = System.currentTimeMillis() + j10;
        }
    }

    public void setMirror(boolean z10) {
        this.mMirror = z10;
    }

    public void setTextureSize(int i10, int i11) {
        SurfaceTexture surfaceTexture;
        if (i10 <= 0 || i11 <= 0 || (surfaceTexture = this.mSurfaceTexture) == null) {
            throw new IllegalArgumentException("Texture width must be positive, but was " + i10);
        }
        this.mFrameWidth = i10;
        this.mFrameHeight = i11;
        this.mViewportWidth = i10;
        this.mViewportHeight = i11;
        surfaceTexture.setDefaultBufferSize(i10, i11);
    }
}
