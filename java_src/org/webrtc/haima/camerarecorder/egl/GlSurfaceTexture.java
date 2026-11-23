package org.webrtc.haima.camerarecorder.egl;

import android.graphics.SurfaceTexture;

/* JADX INFO: loaded from: classes10.dex */
public class GlSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener {
    private SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener;
    private SurfaceTexture surfaceTexture;

    public GlSurfaceTexture(int i10) {
        SurfaceTexture surfaceTexture = new SurfaceTexture(i10);
        this.surfaceTexture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public int getTextureTarget() {
        return GlPreview.GL_TEXTURE_EXTERNAL_OES;
    }

    public void getTransformMatrix(float[] fArr) {
        this.surfaceTexture.getTransformMatrix(fArr);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener = this.onFrameAvailableListener;
        if (onFrameAvailableListener != null) {
            onFrameAvailableListener.onFrameAvailable(this.surfaceTexture);
        }
    }

    public void release() {
        this.surfaceTexture.release();
    }

    public void setOnFrameAvailableListener(SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener) {
        this.onFrameAvailableListener = onFrameAvailableListener;
    }

    public void updateTexImage() {
        this.surfaceTexture.updateTexImage();
    }
}
