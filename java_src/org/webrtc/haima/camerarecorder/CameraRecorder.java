package org.webrtc.haima.camerarecorder;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.util.Size;
import java.lang.ref.SoftReference;
import org.webrtc.haima.HmCameraWrapper;
import org.webrtc.haima.camerarecorder.capture.MediaEncoder;
import org.webrtc.haima.camerarecorder.capture.MediaMuxerCaptureWrapper;
import org.webrtc.haima.camerarecorder.capture.MediaVideoEncoder;
import org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"NewApi"})
public class CameraRecorder {
    private static final String TAG = "CameraRecorder";
    private final int bitrate;
    private CameraHandler cameraHandler;
    private final int cameraHeight;
    private final CameraManager cameraManager;
    private final CameraRecordListener cameraRecordListener;
    private final int cameraWidth;
    private final int degrees;
    private final int fileHeight;
    private final int fileWidth;
    private boolean flashSupport;
    private final boolean flipHorizontal;
    private final boolean flipVertical;
    private final int frameRate;
    private GlPreviewRenderer glPreviewRenderer;
    private GLSurfaceView glSurfaceView;
    private final boolean isLandscapeDevice;
    private final LensFacing lensFacing;
    private SoftReference<HmCameraWrapper> mHmCameraWrapperRef;
    private final MediaEncoder.MediaEncoderListener mediaEncoderListener = new MediaEncoder.MediaEncoderListener() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.3
        @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder.MediaEncoderListener
        public void onPrepared(MediaEncoder mediaEncoder) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onPrepared:encoder=");
            sb2.append(mediaEncoder);
            if (!(mediaEncoder instanceof MediaVideoEncoder) || CameraRecorder.this.glPreviewRenderer == null) {
                return;
            }
            CameraRecorder.this.glPreviewRenderer.setVideoEncoder((MediaVideoEncoder) mediaEncoder);
        }

        @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder.MediaEncoderListener
        public void onStopped(MediaEncoder mediaEncoder) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onStopped:encoder=");
            sb2.append(mediaEncoder);
            if (!(mediaEncoder instanceof MediaVideoEncoder) || CameraRecorder.this.glPreviewRenderer == null) {
                return;
            }
            CameraRecorder.this.glPreviewRenderer.setVideoEncoder(null);
        }
    };
    private final boolean mute;
    private MediaMuxerCaptureWrapper muxer;
    private final boolean recordNoFilter;
    private boolean started;

    CameraRecorder(CameraRecordListener cameraRecordListener, GLSurfaceView gLSurfaceView, int i10, int i11, int i12, int i13, int i14, int i15, LensFacing lensFacing, boolean z10, boolean z11, boolean z12, CameraManager cameraManager, boolean z13, int i16, boolean z14) {
        this.cameraRecordListener = cameraRecordListener;
        gLSurfaceView.setDebugFlags(1);
        this.glSurfaceView = gLSurfaceView;
        this.fileWidth = i10;
        this.fileHeight = i11;
        this.cameraWidth = i12;
        this.cameraHeight = i13;
        this.bitrate = i15;
        this.frameRate = i14;
        this.lensFacing = lensFacing;
        this.flipHorizontal = z10;
        this.flipVertical = z11;
        this.mute = z12;
        this.cameraManager = cameraManager;
        this.isLandscapeDevice = z13;
        this.degrees = i16;
        this.recordNoFilter = z14;
        if (this.glPreviewRenderer == null) {
            this.glPreviewRenderer = new GlPreviewRenderer(gLSurfaceView);
        }
        this.glPreviewRenderer.setSurfaceCreateListener(new GlPreviewRenderer.SurfaceCreateListener() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.1
            @Override // org.webrtc.haima.camerarecorder.egl.GlPreviewRenderer.SurfaceCreateListener
            public void onCreated(SurfaceTexture surfaceTexture) {
                CameraRecorder.this.startPreview(surfaceTexture);
            }
        });
    }

    private void destroyPreview() {
        GlPreviewRenderer glPreviewRenderer = this.glPreviewRenderer;
        if (glPreviewRenderer != null) {
            glPreviewRenderer.release();
            this.glPreviewRenderer = null;
        }
        CameraHandler cameraHandler = this.cameraHandler;
        if (cameraHandler != null) {
            cameraHandler.stopPreview(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnDone() {
        CameraRecordListener cameraRecordListener = this.cameraRecordListener;
        if (cameraRecordListener == null) {
            return;
        }
        cameraRecordListener.onRecordComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnError(Exception exc) {
        CameraRecordListener cameraRecordListener = this.cameraRecordListener;
        if (cameraRecordListener == null) {
            return;
        }
        cameraRecordListener.onError(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startPreview(SurfaceTexture surfaceTexture) {
        if (this.cameraHandler == null) {
            CameraThread cameraThread = new CameraThread(this.cameraRecordListener, new CameraThread.OnStartPreviewListener() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.2
                @Override // org.webrtc.haima.camerarecorder.CameraThread.OnStartPreviewListener
                public void onStart(Size size, boolean z10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("previewSize : width ");
                    sb2.append(size.getWidth());
                    sb2.append(" height = ");
                    sb2.append(size.getHeight());
                    if (CameraRecorder.this.glPreviewRenderer != null) {
                        CameraRecorder.this.glPreviewRenderer.setCameraResolution(new Resolution(size.getWidth(), size.getHeight()));
                    }
                    CameraRecorder.this.flashSupport = z10;
                    if (CameraRecorder.this.cameraRecordListener != null) {
                        CameraRecorder.this.cameraRecordListener.onGetFlashSupport(CameraRecorder.this.flashSupport);
                    }
                    final float width = size.getWidth();
                    final float height = size.getHeight();
                    CameraRecorder.this.glSurfaceView.post(new Runnable() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CameraRecorder.this.glPreviewRenderer != null) {
                                CameraRecorder.this.glPreviewRenderer.setAngle(CameraRecorder.this.degrees);
                                CameraRecorder.this.glPreviewRenderer.onStartPreview(width, height, CameraRecorder.this.isLandscapeDevice);
                            }
                        }
                    });
                    if (CameraRecorder.this.glPreviewRenderer != null) {
                        CameraRecorder.this.glPreviewRenderer.getPreviewTexture().getSurfaceTexture().setDefaultBufferSize(size.getWidth(), size.getHeight());
                    }
                    CameraRecorder.this.start();
                }
            }, surfaceTexture, this.cameraManager, this.lensFacing);
            cameraThread.start();
            this.cameraHandler = cameraThread.getHandler();
        }
        this.cameraHandler.startPreview(this.cameraWidth, this.cameraHeight);
    }

    public void changeAutoFocus() {
        CameraHandler cameraHandler = this.cameraHandler;
        if (cameraHandler != null) {
            cameraHandler.changeAutoFocus();
        }
    }

    public void changeManualFocusPoint(float f10, float f11, int i10, int i11) {
        CameraHandler cameraHandler = this.cameraHandler;
        if (cameraHandler != null) {
            cameraHandler.changeManualFocusPoint(f10, f11, i10, i11);
        }
    }

    public boolean isFlashSupport() {
        return this.flashSupport;
    }

    public boolean isStarted() {
        return this.started;
    }

    public void release() {
        try {
            MediaMuxerCaptureWrapper mediaMuxerCaptureWrapper = this.muxer;
            if (mediaMuxerCaptureWrapper != null) {
                mediaMuxerCaptureWrapper.stopRecording();
                this.muxer = null;
            }
        } catch (Exception unused) {
        }
        destroyPreview();
    }

    public void setFilter(GlFilter glFilter) {
        if (glFilter == null) {
            return;
        }
        this.glPreviewRenderer.setGlFilter(glFilter);
    }

    public void setGestureScale(float f10) {
        GlPreviewRenderer glPreviewRenderer = this.glPreviewRenderer;
        if (glPreviewRenderer != null) {
            glPreviewRenderer.setGestureScale(f10);
        }
    }

    public void setHmDCCarmera(HmCameraWrapper hmCameraWrapper) {
        this.mHmCameraWrapperRef = new SoftReference<>(hmCameraWrapper);
    }

    public void start() {
        if (this.started) {
            return;
        }
        new Handler().post(new Runnable() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    CameraRecorder cameraRecorder = CameraRecorder.this;
                    cameraRecorder.muxer = new MediaMuxerCaptureWrapper((HmCameraWrapper) cameraRecorder.mHmCameraWrapperRef.get());
                    new MediaVideoEncoder(CameraRecorder.this.muxer, CameraRecorder.this.mediaEncoderListener, CameraRecorder.this.fileWidth, CameraRecorder.this.fileHeight, CameraRecorder.this.flipHorizontal, CameraRecorder.this.flipVertical, CameraRecorder.this.glSurfaceView.getMeasuredWidth(), CameraRecorder.this.glSurfaceView.getMeasuredHeight(), CameraRecorder.this.frameRate, CameraRecorder.this.bitrate, CameraRecorder.this.recordNoFilter, CameraRecorder.this.glPreviewRenderer.getFilter());
                    CameraRecorder.this.muxer.prepare();
                    CameraRecorder.this.muxer.startRecording();
                    if (CameraRecorder.this.cameraRecordListener != null) {
                        CameraRecorder.this.cameraRecordListener.onRecordStart();
                    }
                } catch (Exception e10) {
                    CameraRecorder.this.notifyOnError(e10);
                }
            }
        });
        this.started = true;
    }

    public void stop() {
        if (this.started) {
            try {
                new Thread(new Runnable() { // from class: org.webrtc.haima.camerarecorder.CameraRecorder.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (CameraRecorder.this.muxer != null) {
                                CameraRecorder.this.muxer.stopRecording();
                                CameraRecorder.this.muxer = null;
                            }
                        } catch (Exception e10) {
                            CameraRecorder.this.notifyOnError(e10);
                        }
                        CameraRecorder.this.notifyOnDone();
                    }
                }).start();
            } catch (Exception e10) {
                notifyOnError(e10);
                e10.printStackTrace();
            }
            this.started = false;
        }
    }

    public void switchFlashMode() {
        CameraHandler cameraHandler;
        if (this.flashSupport && (cameraHandler = this.cameraHandler) != null) {
            cameraHandler.switchFlashMode();
        }
    }
}
