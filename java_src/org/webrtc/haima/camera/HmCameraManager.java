package org.webrtc.haima.camera;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import com.haima.hmcp.volley.DefaultRetryPolicy;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.hmwebrtc.AudioSource;
import org.hmwebrtc.AudioTrack;
import org.hmwebrtc.Camera1Enumerator;
import org.hmwebrtc.Camera2Enumerator;
import org.hmwebrtc.CameraEnumerator;
import org.hmwebrtc.CameraVideoCapturer;
import org.hmwebrtc.EglBase;
import org.hmwebrtc.FileVideoCapturer;
import org.hmwebrtc.Logging;
import org.hmwebrtc.MediaConstraints;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.PeerConnectionFactory;
import org.hmwebrtc.RendererCommon;
import org.hmwebrtc.RtpParameters;
import org.hmwebrtc.RtpSender;
import org.hmwebrtc.SurfaceTextureHelper;
import org.hmwebrtc.SurfaceViewRenderer;
import org.hmwebrtc.TextureViewRenderer;
import org.hmwebrtc.VideoCapturer;
import org.hmwebrtc.VideoSink;
import org.hmwebrtc.VideoSource;
import org.hmwebrtc.VideoTrack;
import org.webrtc.haima.HmRtcAdapterImpl;
import org.webrtc.haima.HmRtcGlobalConfig;

/* JADX INFO: loaded from: classes10.dex */
public class HmCameraManager {
    public static final String AUDIO_TRACK_ID = "ARDAMSa0";
    private static final int BPS_IN_KBPS = 1000;
    public static final String EXTRA_CAMERA2 = "org.appspot.apprtc.CAMERA2";
    public static final String EXTRA_CAPTURETOTEXTURE_ENABLED = "org.appspot.apprtc.CAPTURETOTEXTURE";
    public static final String EXTRA_HWCODEC_ENABLED = "org.appspot.apprtc.HWGCODEC";
    public static final String EXTRA_VIDEO_FILE_AS_CAMERA = "org.appspot.apprtc.VIDEO_FILE_AS_CAMERA";
    public static final int MAX_BITRATE_FLAG = 1;
    public static final int MIN_BITRATE_FLAG = 0;
    public static final String VIDEO_TRACK_ID = "ARDAMSv0";
    public static final String VIDEO_TRACK_TYPE = "video";
    private static HmCameraManager mInstance = null;
    private static final long mVideoCapturerStartingLockWaitTimeoutMillis = 5000;
    public static boolean useFrontCamera;

    @Nullable
    private AudioSource audioSource;

    @Nullable
    private AudioTrack localAudioTrack;

    @Nullable
    private VideoSink localRender;

    @Nullable
    private VideoTrack localVideoTrack;
    private Intent mActivityIntent;
    private MediaConstraints mAudioConstraints;
    private HmCameraSettings mCameraCaptureFormat;
    private CameraEventObserver mCameraObserver;
    private int mCameraOperationCmdCnt;
    private WeakReference<Context> mContextRef;
    private PeerConnectionFactory mFactory;
    private HmRtcAdapterImpl mHmRtcAdapter;
    private HmRtcAdapterImpl.ProxyVideoSink mLocalProxyVideoSink;
    private SurfaceViewRenderer mLocalSurfaceRenderer;
    private TextureViewRenderer mLocalTextureRender;
    private RtpSender mLocalVideoSender;
    private WeakReference<PeerConnection> mPeerConnectionRef;

    @Nullable
    private SurfaceTextureHelper mSurfaceTextureHelper;

    @Nullable
    private VideoCapturer mVideoCapturer;
    private boolean mVideoCapturerStarting;
    private int mVideoFps;
    private int mVideoHeight;

    @Nullable
    private VideoSource mVideoSource;
    private int mVideoWidth;
    private EglBase rootEglBase;
    private final String TAG = HmCameraManager.class.getSimpleName();
    private boolean mVideoCapturerStopped = true;
    private final int DEFAULT_CAMERA_VIDEO_WIDTH = LogType.UNEXP_ANR;
    private final int DEFAULT_CAMERA_VIDEO_HEIGHT = 720;
    private final int DEFAULT_CAMERA_VIDEO_FRAME_RATE = 30;
    private final int DEFAULT_MIN_BITRATE = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private final int DEFAULT_MAX_BITRATE = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private int minBitrate = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private int maxBitrate = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private boolean enableVideo = true;
    private boolean enableAudio = true;
    private String frontCameraName = "";
    private String backCameraName = "";
    private final Object mPeerConnectionRefLock = new Object();
    private final ExecutorService mCameraOperationCmdExecutor = Executors.newSingleThreadExecutor();
    private final Object mCameraOperationCmdLock = new Object();
    private final Object mVideoCapturerStartingLock = new Object();

    public interface CameraEventObserver {
        void onClose();

        void onOpen();
    }

    private HmCameraManager() {
    }

    private boolean captureToTexture() {
        Intent intent = this.mActivityIntent;
        if (intent != null) {
            return intent.getBooleanExtra(EXTRA_CAPTURETOTEXTURE_ENABLED, false);
        }
        return true;
    }

    @Nullable
    private AudioTrack createAudioTrack() {
        AudioSource audioSourceCreateAudioSource = this.mFactory.createAudioSource(this.mAudioConstraints);
        this.audioSource = audioSourceCreateAudioSource;
        AudioTrack audioTrackCreateAudioTrack = this.mFactory.createAudioTrack(AUDIO_TRACK_ID, audioSourceCreateAudioSource);
        this.localAudioTrack = audioTrackCreateAudioTrack;
        audioTrackCreateAudioTrack.setEnabled(this.enableAudio);
        return this.localAudioTrack;
    }

    @Nullable
    private VideoCapturer createCameraCapturer(CameraEnumerator cameraEnumerator) {
        String[] deviceNames = cameraEnumerator.getDeviceNames();
        Logging.d(this.TAG, "Looking though all cameras.");
        int i10 = 0;
        for (String str : deviceNames) {
            Logging.d(this.TAG, "camera deviceName: " + str + ", isFrontFacing: " + cameraEnumerator.isFrontFacing(str) + ", isBackFacing: " + cameraEnumerator.isBackFacing(str));
            if (cameraEnumerator.isFrontFacing(str) && "".equals(this.frontCameraName)) {
                this.frontCameraName = str;
            }
            if (cameraEnumerator.isBackFacing(str) && "".equals(this.backCameraName)) {
                this.backCameraName = str;
            }
        }
        if (useFrontCamera) {
            Logging.d(this.TAG, "Looking for front facing cameras.");
            int length = deviceNames.length;
            while (i10 < length) {
                String str2 = deviceNames[i10];
                if (cameraEnumerator.isFrontFacing(str2)) {
                    Logging.d(this.TAG, "Creating front facing camera capture.");
                    CameraVideoCapturer cameraVideoCapturerCreateCapturer = cameraEnumerator.createCapturer(str2, null);
                    if (cameraVideoCapturerCreateCapturer != null) {
                        return cameraVideoCapturerCreateCapturer;
                    }
                }
                i10++;
            }
        } else {
            Logging.d(this.TAG, "Looking for back  other cameras.");
            int length2 = deviceNames.length;
            while (i10 < length2) {
                String str3 = deviceNames[i10];
                if (cameraEnumerator.isBackFacing(str3)) {
                    Logging.d(this.TAG, "Creating back camera capture.");
                    CameraVideoCapturer cameraVideoCapturerCreateCapturer2 = cameraEnumerator.createCapturer(str3, null);
                    if (cameraVideoCapturerCreateCapturer2 != null) {
                        return cameraVideoCapturerCreateCapturer2;
                    }
                }
                i10++;
            }
        }
        return null;
    }

    @Nullable
    private VideoTrack createVideoTrack(VideoCapturer videoCapturer) {
        int width;
        int height;
        int frameRate;
        EglBase eglBase = this.rootEglBase;
        if (eglBase == null) {
            throw new IllegalStateException("rootEglBase is null, create video track failed.");
        }
        SurfaceTextureHelper surfaceTextureHelperCreate = SurfaceTextureHelper.create("CaptureThread", eglBase.getEglBaseContext());
        this.mSurfaceTextureHelper = surfaceTextureHelperCreate;
        if (surfaceTextureHelperCreate == null) {
            Logging.d(this.TAG, "Failed to create SurfaceViewRenderer.");
            return null;
        }
        this.mVideoSource = this.mFactory.createVideoSource(videoCapturer.isScreencast());
        videoCapturer.initialize(this.mSurfaceTextureHelper, this.mContextRef.get().getApplicationContext(), this.mVideoSource.getCapturerObserver());
        HmCameraSettings hmCameraSettings = this.mCameraCaptureFormat;
        if (hmCameraSettings == null) {
            width = LogType.UNEXP_ANR;
            height = 720;
            frameRate = 30;
        } else {
            width = hmCameraSettings.getWidth();
            height = this.mCameraCaptureFormat.getHeight();
            frameRate = this.mCameraCaptureFormat.getFrameRate();
        }
        Logging.d(this.TAG, "createCameraVideoTrack " + width + "x" + height + ":" + frameRate + "fps.");
        VideoTrack videoTrackCreateVideoTrack = this.mFactory.createVideoTrack(VIDEO_TRACK_ID, this.mVideoSource);
        this.localVideoTrack = videoTrackCreateVideoTrack;
        videoTrackCreateVideoTrack.setEnabled(this.enableVideo);
        VideoSink videoSink = this.localRender;
        if (videoSink != null) {
            this.localVideoTrack.addSink(videoSink);
        }
        this.mVideoCapturerStopped = true;
        return this.localVideoTrack;
    }

    private void findVideoSender(PeerConnection peerConnection) {
        synchronized (this.mPeerConnectionRefLock) {
            for (RtpSender rtpSender : peerConnection.getSenders()) {
                if (rtpSender.track() != null && rtpSender.track().kind().equals("video")) {
                    Logging.d(this.TAG, "Found video sender.");
                    this.mLocalVideoSender = rtpSender;
                    this.mPeerConnectionRef = new WeakReference<>(peerConnection);
                    if (HmRtcGlobalConfig.rtc_upload_video_on) {
                        getInstance().doSetVideoBitrate();
                    }
                }
            }
        }
    }

    public static HmCameraManager getInstance() {
        HmCameraManager hmCameraManager = mInstance;
        if (hmCameraManager != null) {
            return hmCameraManager;
        }
        HmCameraManager hmCameraManager2 = new HmCameraManager();
        mInstance = hmCameraManager2;
        return hmCameraManager2;
    }

    private void innerSetVideoBitrate(int i10, int i11) {
        if (i11 < 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Requested video bitrate: ");
        sb2.append(i11);
        RtpSender rtpSender = this.mLocalVideoSender;
        if (rtpSender == null) {
            return;
        }
        RtpParameters parameters = rtpSender.getParameters();
        if (parameters.encodings.size() == 0) {
            return;
        }
        for (RtpParameters.Encoding encoding : parameters.encodings) {
            if (i10 == 0) {
                encoding.minBitrateBps = i11 != -1 ? Integer.valueOf(i11 * 1000) : null;
            } else {
                encoding.maxBitrateBps = i11 != -1 ? Integer.valueOf(i11 * 1000) : null;
            }
        }
        parameters.degradationPreference = RtpParameters.DegradationPreference.DISABLED;
        this.mLocalVideoSender.setParameters(parameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startVideoSource$0(int i10, int i11, int i12, boolean z10) {
        boolean z11;
        synchronized (this.mCameraOperationCmdLock) {
            z11 = this.mCameraOperationCmdCnt > 1;
        }
        if (!z11) {
            startVideoSourceInternal(i10, i11, i12, z10);
        }
        synchronized (this.mCameraOperationCmdLock) {
            this.mCameraOperationCmdCnt--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopVideoSource$1() {
        boolean z10;
        synchronized (this.mCameraOperationCmdLock) {
            z10 = this.mCameraOperationCmdCnt > 1;
        }
        if (!z10) {
            stopVideoSourceInternal();
        }
        synchronized (this.mCameraOperationCmdLock) {
            this.mCameraOperationCmdCnt--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestLocalEncoderSendKeyFrame() {
        synchronized (this.mPeerConnectionRefLock) {
            Logging.d(this.TAG, "try request local encoder send a key frame.");
            WeakReference<PeerConnection> weakReference = this.mPeerConnectionRef;
            PeerConnection peerConnection = weakReference == null ? null : weakReference.get();
            if (peerConnection != null) {
                for (RtpSender rtpSender : peerConnection.getSenders()) {
                    if (rtpSender.track() != null && rtpSender.track().kind().equals("video")) {
                        rtpSender.requestEncoderSendKeyFrame();
                        Logging.d(this.TAG, "requested local encoder sending a key frame on sender with id: " + rtpSender.id());
                    }
                }
            } else {
                Logging.d(this.TAG, "Not requestLocalEncoderSendKeyFrame as PeerConnection is null.");
            }
        }
    }

    private void startVideoSourceInternal(int i10, int i11, int i12, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Start starting video source. mVideoCapturerStopped = ");
        sb2.append(this.mVideoCapturerStopped);
        if (this.mVideoCapturer != null) {
            this.mVideoCapturerStarting = true;
            if (!this.mVideoCapturerStopped) {
                stopVideoSourceInternal();
            }
            useFrontCamera = z10;
            String str = (!z10 || "".equals(this.frontCameraName)) ? this.backCameraName : this.frontCameraName;
            if (!"".equals(str)) {
                setCameraCaptureFormat(new HmCameraSettings(i10, i11, i12));
                ((CameraVideoCapturer) this.mVideoCapturer).startCaptureWithSpecifiedCamera(new CameraVideoCapturer.CameraSwitchHandler() { // from class: org.webrtc.haima.camera.HmCameraManager.1
                    @Override // org.hmwebrtc.CameraVideoCapturer.CameraSwitchHandler
                    public void onCameraSwitchDone(boolean z11) {
                        Logging.d(HmCameraManager.this.TAG, "onCameraSwitchDone: isFrontCamera = " + z11);
                        HmCameraManager.this.requestLocalEncoderSendKeyFrame();
                        synchronized (HmCameraManager.this.mVideoCapturerStartingLock) {
                            HmCameraManager.this.mVideoCapturerStarting = false;
                            HmCameraManager.this.mVideoCapturerStartingLock.notifyAll();
                        }
                    }

                    @Override // org.hmwebrtc.CameraVideoCapturer.CameraSwitchHandler
                    public void onCameraSwitchError(String str2) {
                        Logging.d(HmCameraManager.this.TAG, "onCameraSwitchError: errorDescription = " + str2);
                        synchronized (HmCameraManager.this.mVideoCapturerStartingLock) {
                            HmCameraManager.this.mVideoCapturerStarting = false;
                            HmCameraManager.this.mVideoCapturerStartingLock.notifyAll();
                        }
                    }
                }, this.mCameraCaptureFormat.getWidth(), this.mCameraCaptureFormat.getHeight(), this.mCameraCaptureFormat.getFrameRate(), str);
                CameraEventObserver cameraEventObserver = this.mCameraObserver;
                if (cameraEventObserver != null) {
                    cameraEventObserver.onOpen();
                }
            }
        }
        synchronized (this.mVideoCapturerStartingLock) {
            while (this.mVideoCapturerStarting) {
                try {
                    this.mVideoCapturerStartingLock.wait(5000L);
                    if (this.mVideoCapturerStarting) {
                        Logging.d(this.TAG, "Start video source completed failedly as waiting 5000 ms timeout.");
                        this.mVideoCapturerStarting = false;
                        stopVideoSourceInternal();
                    } else {
                        Logging.d(this.TAG, "Start video source completed successfully.");
                        this.mVideoCapturerStopped = false;
                    }
                } catch (InterruptedException unused) {
                    Logging.w(this.TAG, "Start capture interrupted while waiting for the last session to open.");
                    Thread.currentThread().interrupt();
                    this.mVideoCapturerStarting = false;
                    stopVideoSourceInternal();
                }
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Finished starting video source. mVideoCapturerStopped = ");
        sb3.append(this.mVideoCapturerStopped);
    }

    private void stopVideoSourceInternal() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Start stopping video source. mVideoCapturerStopped = ");
        sb2.append(this.mVideoCapturerStopped);
        if (this.mVideoCapturer != null) {
            this.mVideoCapturer.dispose();
            CameraEventObserver cameraEventObserver = this.mCameraObserver;
            if (cameraEventObserver != null) {
                cameraEventObserver.onClose();
            }
            this.mVideoCapturerStopped = true;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("end Stop video source. mVideoCapturerStopped = ");
        sb3.append(this.mVideoCapturerStopped);
    }

    private boolean useCamera2() {
        if (this.mActivityIntent != null) {
            return Camera2Enumerator.isSupported(this.mContextRef.get()) && this.mActivityIntent.getBooleanExtra(EXTRA_CAMERA2, true);
        }
        return Camera2Enumerator.isSupported(this.mContextRef.get());
    }

    public void addPeerConnectTrack(PeerConnection peerConnection) {
        if (this.mVideoCapturer != null) {
            Collections.singletonList("ARDAMS");
            List<String> listSingletonList = Collections.singletonList("ARDAMS_VIDEO");
            Collections.singletonList("ARDAMS_AUDIO" + new Random().nextInt());
            VideoTrack videoTrackCreateVideoTrack = createVideoTrack(this.mVideoCapturer);
            if (videoTrackCreateVideoTrack == null) {
                Logging.d(this.TAG, "Failed to createVideoTrack.");
            } else {
                peerConnection.addTrack(videoTrackCreateVideoTrack, listSingletonList);
                findVideoSender(peerConnection);
            }
        }
    }

    public void changeCameraCaptureFormat(HmCameraSettings hmCameraSettings) {
        Logging.d(this.TAG, "cameraSettings:" + hmCameraSettings);
        if (this.mVideoCapturer == null || hmCameraSettings.equals(this.mCameraCaptureFormat) || this.mVideoCapturerStopped) {
            return;
        }
        this.mVideoCapturer.changeCaptureFormat(hmCameraSettings.getWidth(), hmCameraSettings.getHeight(), hmCameraSettings.getFrameRate());
    }

    @Nullable
    public VideoCapturer createVideoCapturer() {
        VideoCapturer fileVideoCapturer;
        Intent intent = this.mActivityIntent;
        String stringExtra = intent != null ? intent.getStringExtra(EXTRA_VIDEO_FILE_AS_CAMERA) : null;
        if (stringExtra != null) {
            try {
                fileVideoCapturer = new FileVideoCapturer(stringExtra);
            } catch (IOException unused) {
                this.mHmRtcAdapter.reportError("Failed to open video file for emulated camera");
                return null;
            }
        } else if (!useCamera2()) {
            Logging.d(this.TAG, "Creating capture using camera1 API.");
            fileVideoCapturer = createCameraCapturer(new Camera1Enumerator(captureToTexture()));
        } else {
            if (!captureToTexture()) {
                Logging.e(this.TAG, "Camera2 only supports capturing to texture. Either disable Camera2 or enable capturing to texture in the options.");
                return null;
            }
            Logging.d(this.TAG, "Creating capture using camera2 API.");
            WeakReference<Context> weakReference = this.mContextRef;
            fileVideoCapturer = createCameraCapturer(new Camera2Enumerator(weakReference == null ? null : weakReference.get()));
        }
        if (fileVideoCapturer != null) {
            return fileVideoCapturer;
        }
        this.mHmRtcAdapter.reportError("Failed to open camera");
        return null;
    }

    public void doSetVideoBitrate() {
        innerSetVideoBitrate(0, this.minBitrate);
        innerSetVideoBitrate(1, this.maxBitrate);
    }

    public HmCameraSettings getHmCameraSettings() {
        return new HmCameraSettings(this.mCameraCaptureFormat.getWidth(), this.mCameraCaptureFormat.getHeight(), this.mCameraCaptureFormat.getFrameRate());
    }

    public HmRtcAdapterImpl.ProxyVideoSink getLocalProxyVideoSink() {
        return this.mLocalProxyVideoSink;
    }

    public int getMaxBitrate() {
        return this.maxBitrate;
    }

    public int getMinBitrate() {
        return this.minBitrate;
    }

    public void release() {
        Logging.d(this.TAG, "release");
        synchronized (this.mPeerConnectionRefLock) {
            this.mPeerConnectionRef = null;
        }
        synchronized (this.mVideoCapturerStartingLock) {
            if (this.mVideoCapturerStarting) {
                this.mVideoCapturerStartingLock.notifyAll();
            }
        }
        stopVideoSourceInternal();
        SurfaceViewRenderer surfaceViewRenderer = this.mLocalSurfaceRenderer;
        if (surfaceViewRenderer != null) {
            surfaceViewRenderer.release();
            this.mLocalSurfaceRenderer = null;
        }
        TextureViewRenderer textureViewRenderer = this.mLocalTextureRender;
        if (textureViewRenderer != null) {
            textureViewRenderer.release();
            this.mLocalTextureRender = null;
        }
    }

    public void reset() {
        this.minBitrate = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.maxBitrate = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.mCameraCaptureFormat = new HmCameraSettings(LogType.UNEXP_ANR, 720, 30);
    }

    public void setActivityIntent(Intent intent) {
        this.mActivityIntent = intent;
    }

    public void setAdapter(HmRtcAdapterImpl hmRtcAdapterImpl) {
        this.mHmRtcAdapter = hmRtcAdapterImpl;
    }

    public void setAudioConstraints(MediaConstraints mediaConstraints) {
        this.mAudioConstraints = mediaConstraints;
    }

    public void setCameraCaptureFormat(HmCameraSettings hmCameraSettings) {
        Logging.d(this.TAG, "cameraSettings:" + hmCameraSettings);
        if (hmCameraSettings == null) {
            this.mCameraCaptureFormat = new HmCameraSettings(LogType.UNEXP_ANR, 720, 30);
        } else {
            this.mCameraCaptureFormat = hmCameraSettings;
        }
        Logging.d(this.TAG, "mCameraCaptureFormat" + this.mCameraCaptureFormat);
    }

    public void setCameraExternalControlDefaultValue(int i10, int i11, boolean z10, boolean z11, int i12, int i13, boolean z12, boolean z13) {
        if (i10 == 0 || i10 == 90 || i10 == 180 || i10 == 270) {
            CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationFrontCamera1 = i10;
        }
        if (i11 == 0 || i11 == 90 || i11 == 180 || i11 == 270) {
            CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationBackCamera1 = i11;
        }
        CameraVideoCapturer.CameraExternalControl.isFrontMirrorCamera1 = z10;
        CameraVideoCapturer.CameraExternalControl.isBackMirrorCamera1 = z11;
        if (i12 == 0 || i12 == 90 || i12 == 180 || i12 == 270) {
            CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationFrontCamera2 = i12;
        }
        if (i13 == 0 || i13 == 90 || i13 == 180 || i13 == 270) {
            CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationBackCamera2 = i13;
        }
        CameraVideoCapturer.CameraExternalControl.isFrontMirrorCamera2 = z12;
        CameraVideoCapturer.CameraExternalControl.isBackMirrorCamera2 = z13;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("set CameraExternalControl: externalForcedlyFrameOrientationFrontCamera1: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationFrontCamera1);
        sb2.append("externalForcedlyFrameOrientationBackCamera1: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationBackCamera1);
        sb2.append(", CameraExternalControl.isFrontMirrorCamera1: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.isFrontMirrorCamera1);
        sb2.append(", CameraExternalControl.isBackMirrorCamera1: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.isBackMirrorCamera1);
        sb2.append("externalForcedlyFrameOrientationFrontCamera2: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationFrontCamera2);
        sb2.append("externalForcedlyFrameOrientationBackCamera2: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.externalForcedlyFrameOrientationBackCamera2);
        sb2.append(", CameraExternalControl.isFrontMirrorCamera2: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.isFrontMirrorCamera2);
        sb2.append(", CameraExternalControl.isBackMirrorCamera2: ");
        sb2.append(CameraVideoCapturer.CameraExternalControl.isBackMirrorCamera2);
    }

    public void setContext(Context context) {
        this.mContextRef = new WeakReference<>(context);
    }

    public void setEglBase(EglBase eglBase) {
        this.rootEglBase = eglBase;
    }

    public void setEventObserver(CameraEventObserver cameraEventObserver) {
        this.mCameraObserver = cameraEventObserver;
    }

    public void setLocalProxyVideoSinkTarget(VideoSink videoSink) {
        HmRtcAdapterImpl.ProxyVideoSink proxyVideoSink = this.mLocalProxyVideoSink;
        if (proxyVideoSink != null) {
            proxyVideoSink.setTarget(videoSink, null, null);
        }
    }

    public void setLocalRenderer(VideoSink videoSink) {
        if (videoSink instanceof SurfaceViewRenderer) {
            this.mLocalSurfaceRenderer = (SurfaceViewRenderer) videoSink;
        } else if (videoSink instanceof TextureViewRenderer) {
            this.mLocalTextureRender = (TextureViewRenderer) videoSink;
        }
    }

    public void setLocalVideoSink(EglBase eglBase, HmRtcAdapterImpl.ProxyVideoSink proxyVideoSink) {
        Logging.d(this.TAG, "setLocalVideoSink");
        SurfaceViewRenderer surfaceViewRenderer = this.mLocalSurfaceRenderer;
        if (surfaceViewRenderer != null) {
            this.rootEglBase = eglBase;
            surfaceViewRenderer.init(eglBase.getEglBaseContext(), null);
            this.mLocalSurfaceRenderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FIT);
            this.mLocalProxyVideoSink = proxyVideoSink;
            proxyVideoSink.setTarget(this.mLocalSurfaceRenderer, null, null);
        }
        TextureViewRenderer textureViewRenderer = this.mLocalTextureRender;
        if (textureViewRenderer != null) {
            this.rootEglBase = eglBase;
            textureViewRenderer.init(eglBase.getEglBaseContext(), null);
            this.mLocalTextureRender.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FIT);
            this.mLocalProxyVideoSink = proxyVideoSink;
            proxyVideoSink.setTarget(this.mLocalTextureRender, null, null);
        }
    }

    public void setPeerConnectFactory(PeerConnectionFactory peerConnectionFactory) {
        this.mFactory = peerConnectionFactory;
    }

    public void setVideo(VideoCapturer videoCapturer, VideoSink videoSink) {
        this.mVideoCapturer = videoCapturer;
        this.localRender = videoSink;
    }

    public void setVideoBitrate(@Nullable Integer num, int i10) {
        if (i10 == 0) {
            this.minBitrate = num.intValue();
        } else if (i10 == 1) {
            this.maxBitrate = num.intValue();
        }
    }

    public void startVideoSource() {
        if (this.mVideoCapturer == null || !this.mVideoCapturerStopped) {
            return;
        }
        if (this.mCameraCaptureFormat == null) {
            this.mCameraCaptureFormat = new HmCameraSettings(LogType.UNEXP_ANR, 720, 30);
        }
        startVideoSource(this.mCameraCaptureFormat.getWidth(), this.mCameraCaptureFormat.getHeight(), this.mCameraCaptureFormat.getFrameRate(), useFrontCamera);
    }

    public void stopVideoSource() {
        synchronized (this.mCameraOperationCmdLock) {
            this.mCameraOperationCmdCnt++;
            this.mCameraOperationCmdExecutor.execute(new Runnable() { // from class: org.webrtc.haima.camera.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96077b.lambda$stopVideoSource$1();
                }
            });
        }
    }

    public void startVideoSource(final int i10, final int i11, final int i12, final boolean z10) {
        synchronized (this.mCameraOperationCmdLock) {
            this.mCameraOperationCmdCnt++;
            this.mCameraOperationCmdExecutor.execute(new Runnable() { // from class: org.webrtc.haima.camera.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96078b.lambda$startVideoSource$0(i10, i11, i12, z10);
                }
            });
        }
    }
}
