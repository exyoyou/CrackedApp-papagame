package org.hmwebrtc;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
class Camera1Session implements CameraSession {
    private static final int NUMBER_OF_CAPTURE_BUFFERS = 3;
    private static final String TAG = "Camera1Session";
    private final Context applicationContext;
    private final Camera camera;
    private final int cameraId;
    private final Handler cameraThreadHandler;
    private final CameraEnumerationAndroid.CaptureFormat captureFormat;
    private final boolean captureToTexture;
    private final long constructionTimeNs;
    private final CameraSession.Events events;
    private boolean firstFrameReported;
    private final Camera.CameraInfo info;
    private CaptureIdImageGenerator mCaptureIdGenerator;
    private SessionState state;
    private final SurfaceTextureHelper surfaceTextureHelper;
    private static final Histogram camera1StartTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera1.StartTimeMs", 1, 10000, 50);
    private static final Histogram camera1StopTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera1.StopTimeMs", 1, 10000, 50);
    private static final Histogram camera1ResolutionHistogram = Histogram.createEnumeration("WebRTC.Android.Camera1.Resolution", CameraEnumerationAndroid.COMMON_RESOLUTIONS.size());

    /* JADX INFO: renamed from: org.hmwebrtc.Camera1Session$2, reason: invalid class name */
    class AnonymousClass2 implements Camera.PreviewCallback {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreviewFrame$0(byte[] bArr) {
            if (Camera1Session.this.state == SessionState.RUNNING) {
                Camera1Session.this.camera.addCallbackBuffer(bArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreviewFrame$1(final byte[] bArr) {
            Camera1Session.this.cameraThreadHandler.post(new Runnable() { // from class: org.hmwebrtc.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95365b.lambda$onPreviewFrame$0(bArr);
                }
            });
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(final byte[] bArr, Camera camera) {
            Camera1Session.this.checkIsOnCameraThread();
            if (camera != Camera1Session.this.camera) {
                Logging.e(Camera1Session.TAG, "Callback from a different camera. This should never happen.");
                return;
            }
            if (Camera1Session.this.state != SessionState.RUNNING) {
                Logging.d(Camera1Session.TAG, "Bytebuffer frame captured but camera is no longer running.");
                return;
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime());
            if (!Camera1Session.this.firstFrameReported) {
                Camera1Session.camera1StartTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - Camera1Session.this.constructionTimeNs));
                Camera1Session.this.firstFrameReported = true;
            }
            VideoFrame videoFrame = new VideoFrame(new NV21Buffer(bArr, Camera1Session.this.captureFormat.width, Camera1Session.this.captureFormat.height, new Runnable() { // from class: org.hmwebrtc.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95362b.lambda$onPreviewFrame$1(bArr);
                }
            }), Camera1Session.this.getFrameOrientation(), nanos);
            Camera1Session.this.events.onFrameCaptured(Camera1Session.this, videoFrame);
            videoFrame.release();
        }
    }

    private enum SessionState {
        RUNNING,
        STOPPED
    }

    private Camera1Session(CameraSession.Events events, boolean z10, Context context, SurfaceTextureHelper surfaceTextureHelper, int i10, Camera camera, Camera.CameraInfo cameraInfo, CameraEnumerationAndroid.CaptureFormat captureFormat, long j10, CaptureIdImageGenerator captureIdImageGenerator) {
        Logging.d(TAG, "Create new camera1 session on camera " + i10);
        this.cameraThreadHandler = new Handler();
        this.events = events;
        this.captureToTexture = z10;
        this.applicationContext = context;
        this.surfaceTextureHelper = surfaceTextureHelper;
        this.cameraId = i10;
        this.camera = camera;
        this.info = cameraInfo;
        this.captureFormat = captureFormat;
        this.constructionTimeNs = j10;
        this.mCaptureIdGenerator = captureIdImageGenerator;
        surfaceTextureHelper.setTextureSize(captureFormat.width, captureFormat.height);
        CaptureIdImageGenerator captureIdImageGenerator2 = this.mCaptureIdGenerator;
        if (captureIdImageGenerator2 != null) {
            captureIdImageGenerator2.init(captureFormat.width, captureFormat.height, cameraInfo.facing == 1);
        }
        startCapturing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsOnCameraThread() {
        if (Thread.currentThread() != this.cameraThreadHandler.getLooper().getThread()) {
            throw new IllegalStateException("Wrong thread");
        }
    }

    public static void create(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, boolean z10, Context context, SurfaceTextureHelper surfaceTextureHelper, String str, int i10, int i11, int i12) {
        long jNanoTime = System.nanoTime();
        Logging.d(TAG, "Open camera " + str + ", res: " + i10 + "x" + i11 + "fps: " + i12);
        events.onCameraOpening();
        try {
            int cameraIndex = Camera1Enumerator.getCameraIndex(str);
            try {
                Camera cameraOpen = Camera.open(cameraIndex);
                if (cameraOpen == null) {
                    createSessionCallback.onFailure(CameraSession.FailureType.ERROR, "Camera.open returned null for camera id = " + cameraIndex);
                    return;
                }
                CaptureIdImageGenerator captureIdImageGenerator = new CaptureIdImageGenerator(surfaceTextureHelper);
                SurfaceTexture surfaceTexture = captureIdImageGenerator.getSurfaceTexture();
                if (surfaceTexture == null) {
                    surfaceTexture = surfaceTextureHelper.getSurfaceTexture();
                    captureIdImageGenerator = null;
                }
                CaptureIdImageGenerator captureIdImageGenerator2 = captureIdImageGenerator;
                try {
                    cameraOpen.setPreviewTexture(surfaceTexture);
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    Camera.getCameraInfo(cameraIndex, cameraInfo);
                    try {
                        Camera.Parameters parameters = cameraOpen.getParameters();
                        CameraEnumerationAndroid.CaptureFormat captureFormatFindClosestCaptureFormat = findClosestCaptureFormat(parameters, i10, i11, i12);
                        updateCameraParameters(cameraOpen, parameters, captureFormatFindClosestCaptureFormat, findClosestPictureSize(parameters, i10, i11), z10);
                        if (!z10) {
                            int iFrameSize = captureFormatFindClosestCaptureFormat.frameSize();
                            for (int i13 = 0; i13 < 3; i13++) {
                                cameraOpen.addCallbackBuffer(ByteBuffer.allocateDirect(iFrameSize).array());
                            }
                        }
                        try {
                            cameraOpen.setDisplayOrientation(0);
                            createSessionCallback.onDone(new Camera1Session(events, z10, context, surfaceTextureHelper, cameraIndex, cameraOpen, cameraInfo, captureFormatFindClosestCaptureFormat, jNanoTime, captureIdImageGenerator2));
                        } catch (RuntimeException e10) {
                            cameraOpen.release();
                            createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e10.getMessage());
                        }
                    } catch (RuntimeException e11) {
                        cameraOpen.release();
                        createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e11.getMessage());
                    }
                } catch (IOException | RuntimeException e12) {
                    cameraOpen.release();
                    createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e12.getMessage());
                }
            } catch (RuntimeException e13) {
                createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e13.getMessage());
            }
        } catch (IllegalArgumentException e14) {
            createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e14.getMessage());
        }
    }

    private static CameraEnumerationAndroid.CaptureFormat findClosestCaptureFormat(Camera.Parameters parameters, int i10, int i11, int i12) {
        List<CameraEnumerationAndroid.CaptureFormat.FramerateRange> listConvertFramerates = Camera1Enumerator.convertFramerates(parameters.getSupportedPreviewFpsRange());
        Logging.d(TAG, "Available fps ranges: " + listConvertFramerates);
        CameraEnumerationAndroid.CaptureFormat.FramerateRange closestSupportedFramerateRange = CameraEnumerationAndroid.getClosestSupportedFramerateRange(listConvertFramerates, i12);
        Size closestSupportedSize = CameraEnumerationAndroid.getClosestSupportedSize(Camera1Enumerator.convertSizes(parameters.getSupportedPreviewSizes()), i10, i11);
        CameraEnumerationAndroid.reportCameraResolution(camera1ResolutionHistogram, closestSupportedSize);
        return new CameraEnumerationAndroid.CaptureFormat(closestSupportedSize.width, closestSupportedSize.height, closestSupportedFramerateRange);
    }

    private static Size findClosestPictureSize(Camera.Parameters parameters, int i10, int i11) {
        return CameraEnumerationAndroid.getClosestSupportedSize(Camera1Enumerator.convertSizes(parameters.getSupportedPictureSizes()), i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFrameOrientation() {
        int iB = e.b(this.applicationContext);
        Camera.CameraInfo cameraInfo = this.info;
        if (cameraInfo.facing == 0) {
            iB = 360 - iB;
        }
        return (cameraInfo.orientation + iB) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listenForTextureFrames$0(VideoFrame videoFrame) {
        boolean z10;
        checkIsOnCameraThread();
        if (this.state != SessionState.RUNNING) {
            Logging.d(TAG, "Texture frame captured but camera is no longer running.");
            return;
        }
        if (!this.firstFrameReported) {
            camera1StartTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.constructionTimeNs));
            this.firstFrameReported = true;
        }
        CaptureIdImageGenerator captureIdImageGenerator = this.mCaptureIdGenerator;
        CaptureIdImageGenerator.CaptureInfo captureId = captureIdImageGenerator != null ? captureIdImageGenerator.getCaptureId() : null;
        if (captureId != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mCaptureId:");
            sb2.append(captureId.mCaptureId);
            sb2.append(" , mTrackId:");
            sb2.append(captureId.mTrackId);
            sb2.append(",mirror:");
            sb2.append(this.info.facing == 1);
            sb2.append(",rotation:");
            sb2.append(getFrameOrientation());
            Logging.d(TAG, sb2.toString());
        }
        int i10 = ((this.info.facing == 1 ? CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationFrontCamera1 : CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationBackCamera1) - 0) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        TextureBufferImpl textureBufferImpl = (TextureBufferImpl) videoFrame.getBuffer();
        if (this.info.facing == 1) {
            z10 = !CameraVideoCapturer.CameraExternalControl.isFrontMirrorCamera1;
        } else {
            z10 = CameraVideoCapturer.CameraExternalControl.isBackMirrorCamera1;
        }
        VideoFrame videoFrame2 = new VideoFrame(e.a(textureBufferImpl, z10, i10), getFrameOrientation(), videoFrame.getTimestampNs(), captureId != null ? captureId.mTrackId : -1, captureId != null ? captureId.mCaptureId : -1, videoFrame.getInputTimestampMs());
        int iB = e.b(this.applicationContext);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("DeviceOrientation: ");
        sb3.append(iB);
        sb3.append("cameraOrientation: ");
        sb3.append(this.info.orientation);
        sb3.append("getFrameOrientation: ");
        sb3.append(getFrameOrientation());
        sb3.append(", isCameraFrontFacing: ");
        sb3.append(this.info.facing != 0);
        Logging.v(TAG, sb3.toString());
        this.events.onFrameCaptured(this, videoFrame2);
        videoFrame2.release();
    }

    private void listenForBytebufferFrames() {
        this.camera.setPreviewCallbackWithBuffer(new AnonymousClass2());
    }

    private void listenForTextureFrames() {
        this.surfaceTextureHelper.startListening(new VideoSink() { // from class: org.hmwebrtc.a
            @Override // org.hmwebrtc.VideoSink
            public final void onFrame(VideoFrame videoFrame) {
                this.f95359b.lambda$listenForTextureFrames$0(videoFrame);
            }
        });
    }

    private void startCapturing() {
        Logging.d(TAG, "Start capturing");
        checkIsOnCameraThread();
        this.state = SessionState.RUNNING;
        this.camera.setErrorCallback(new Camera.ErrorCallback() { // from class: org.hmwebrtc.Camera1Session.1
            @Override // android.hardware.Camera.ErrorCallback
            public void onError(int i10, Camera camera) {
                String str;
                if (i10 == 100) {
                    str = "Camera server died!";
                } else {
                    str = "Camera error: " + i10;
                }
                Logging.e(Camera1Session.TAG, str);
                Camera1Session.this.stopInternal();
                if (i10 == 2) {
                    Camera1Session.this.events.onCameraDisconnected(Camera1Session.this);
                } else {
                    Camera1Session.this.events.onCameraError(Camera1Session.this, str);
                }
            }
        });
        if (this.captureToTexture) {
            listenForTextureFrames();
        } else {
            listenForBytebufferFrames();
        }
        try {
            this.camera.startPreview();
        } catch (RuntimeException e10) {
            stopInternal();
            this.events.onCameraError(this, e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        Logging.d(TAG, "Stop internal");
        checkIsOnCameraThread();
        SessionState sessionState = this.state;
        SessionState sessionState2 = SessionState.STOPPED;
        if (sessionState == sessionState2) {
            Logging.d(TAG, "Camera is already stopped");
            return;
        }
        this.state = sessionState2;
        this.surfaceTextureHelper.stopListening();
        CaptureIdImageGenerator captureIdImageGenerator = this.mCaptureIdGenerator;
        if (captureIdImageGenerator != null) {
            captureIdImageGenerator.release();
            this.mCaptureIdGenerator = null;
        }
        this.camera.stopPreview();
        this.camera.release();
        this.events.onCameraClosed(this);
        Logging.d(TAG, "Stop done");
    }

    private static void updateCameraParameters(Camera camera, Camera.Parameters parameters, CameraEnumerationAndroid.CaptureFormat captureFormat, Size size, boolean z10) {
        int i10;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        CameraEnumerationAndroid.CaptureFormat.FramerateRange framerateRange = captureFormat.framerate;
        parameters.setPreviewFpsRange(framerateRange.min, framerateRange.max);
        parameters.setPreviewSize(captureFormat.width, captureFormat.height);
        parameters.setPictureSize(size.width, size.height);
        if (!z10) {
            parameters.setPreviewFormat(17);
        }
        if (parameters.isVideoStabilizationSupported()) {
            parameters.setVideoStabilization(true);
        }
        if (supportedFocusModes != null && supportedFocusModes.contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
        }
        List<String> supportedColorEffects = parameters.getSupportedColorEffects();
        if (supportedColorEffects != null) {
            Logging.d(TAG, "SupportedColorEffects: " + supportedColorEffects);
            if (supportedColorEffects.contains("none")) {
                parameters.setColorEffect("none");
                Logging.d(TAG, "ColorEffect is set to EFFECT_NONE.");
            }
        }
        List<String> supportedFocusModes2 = parameters.getSupportedFocusModes();
        if (supportedFocusModes2 != null) {
            Logging.d(TAG, "SupportedFocusModes: " + supportedFocusModes2);
            if (supportedFocusModes2.contains("continuous-video")) {
                parameters.setFocusMode("continuous-video");
                Logging.d(TAG, "FocusMode is set to FOCUS_MODE_CONTINUOUS_VIDEO.");
            }
        }
        List<String> supportedWhiteBalance = parameters.getSupportedWhiteBalance();
        if (supportedWhiteBalance != null) {
            Logging.d(TAG, "SupportedWhiteBalance: " + supportedWhiteBalance);
            if (supportedWhiteBalance.contains("shade")) {
                parameters.setWhiteBalance("shade");
                Logging.d(TAG, "WhiteBalance is set to WHITE_BALANCE_SHADE.");
            }
        }
        parameters.setExposureCompensation(0);
        if (parameters.isAutoWhiteBalanceLockSupported()) {
            parameters.setAutoWhiteBalanceLock(false);
        }
        if (parameters.isAutoExposureLockSupported()) {
            parameters.setAutoExposureLock(false);
        }
        Camera.Size preferredPreviewSizeForVideo = parameters.getPreferredPreviewSizeForVideo();
        int i11 = preferredPreviewSizeForVideo.width;
        if (i11 > 0 && (i10 = preferredPreviewSizeForVideo.height) > 0) {
            parameters.setPreviewSize(i11, i10);
        }
        if (parameters.isVideoStabilizationSupported()) {
            parameters.setVideoStabilization(false);
        }
        camera.setParameters(parameters);
    }

    @Override // org.hmwebrtc.CameraSession
    public void stop() {
        Logging.d(TAG, "Stop camera1 session on camera " + this.cameraId);
        checkIsOnCameraThread();
        if (this.state != SessionState.STOPPED) {
            long jNanoTime = System.nanoTime();
            stopInternal();
            camera1StopTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime));
        }
    }
}
