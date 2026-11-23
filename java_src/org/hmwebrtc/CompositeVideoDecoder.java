package org.hmwebrtc;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes10.dex */
public class CompositeVideoDecoder implements VideoDecoder {
    private static String TAG = "CompositeVideoDecoder";
    private VideoDecoder activeVideoDecoder;
    private DirectSurfaceVideoDecoder directSurfaceVideoDecoder;
    private boolean isSurfaceTextureVideoDecoder;
    private boolean keyFrameRequired;
    private VideoDecoder.Callback mDecodeCallback;
    private long mLastKeyFrameRequiredTimeMs;
    private boolean mPendingInitDSDecoder;
    private DirectSurfaceHelper mRenderView;
    private boolean needToRequireKeyFrame = true;
    private AndroidVideoDecoder surfaceTextureVideoDecoder;

    CompositeVideoDecoder(AndroidVideoDecoder androidVideoDecoder, DirectSurfaceVideoDecoder directSurfaceVideoDecoder, Object obj) {
        Logging.d(TAG, "CompositeVideoDecoder Constructor");
        this.surfaceTextureVideoDecoder = androidVideoDecoder;
        this.directSurfaceVideoDecoder = directSurfaceVideoDecoder;
        this.mRenderView = (DirectSurfaceHelper) obj;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public /* synthetic */ long createNativeVideoDecoder() {
        return p0.a(this);
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
        if (this.isSurfaceTextureVideoDecoder) {
            if (this.mRenderView.getSurface() != null) {
                EncodedImage.FrameType frameType = encodedImage.frameType;
                EncodedImage.FrameType frameType2 = EncodedImage.FrameType.VideoFrameKey;
                if (frameType != frameType2 && this.needToRequireKeyFrame) {
                    Logging.e(TAG, "decode() - key frame required first");
                    this.needToRequireKeyFrame = false;
                    this.keyFrameRequired = true;
                    this.mPendingInitDSDecoder = true;
                    this.mLastKeyFrameRequiredTimeMs = SystemClock.elapsedRealtime();
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_REQUIRE_KEY, "require a key frame becaused of surface is arrived");
                }
                if (encodedImage.frameType == frameType2) {
                    Logging.e(TAG, "decode() - received the first key frame");
                    this.mPendingInitDSDecoder = false;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_RECEIVED_KEY, "received a key frame,begin to release EGL decoder");
                    VideoCodecStatus videoCodecStatusRelease = this.activeVideoDecoder.release();
                    VideoCodecStatus videoCodecStatus = VideoCodecStatus.OK;
                    if (videoCodecStatusRelease != videoCodecStatus) {
                        Logging.e(TAG, "decode() - SurfaceTextureVideoDecoder.release() failed:" + videoCodecStatusRelease);
                        return videoCodecStatusRelease;
                    }
                    int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - jElapsedRealtime);
                    Logging.e(TAG, "decode() - SurfaceTextureVideoDecoder.release() successfully:" + iElapsedRealtime);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_RELEASE_EGL, "begin to release EGL context");
                    this.mRenderView.releaseFromDirectSurface();
                    int iElapsedRealtime2 = (int) (SystemClock.elapsedRealtime() - jElapsedRealtime2);
                    Logging.e(TAG, "decode() - mRenderView.release() successfully:" + iElapsedRealtime2);
                    VideoDecoder.Settings settings = new VideoDecoder.Settings(1, getDecodedWidth(), getDecodedHeight());
                    this.isSurfaceTextureVideoDecoder = false;
                    this.activeVideoDecoder = this.directSurfaceVideoDecoder;
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_INIT, "begin to init a direct surface decoder");
                    VideoCodecStatus videoCodecStatusInitDecode = this.activeVideoDecoder.initDecode(settings, this.mDecodeCallback);
                    if (videoCodecStatusInitDecode != videoCodecStatus) {
                        Logging.e(TAG, "decode() - directSurfaceVideoDecoder.initDecode() failed:" + videoCodecStatusInitDecode);
                        this.activeVideoDecoder = this.surfaceTextureVideoDecoder;
                        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_EGL_CREATED, "init surfaceTexture becaused of directSurfaceVideoDecoder initial failed");
                        VideoCodecStatus videoCodecStatusInitDecode2 = this.activeVideoDecoder.initDecode(settings, this.mDecodeCallback);
                        if (videoCodecStatusInitDecode2 != videoCodecStatus) {
                            return videoCodecStatusInitDecode2;
                        }
                    }
                    int iElapsedRealtime3 = (int) (SystemClock.elapsedRealtime() - jElapsedRealtime3);
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_INITIALIZED, "the direct surface decoder initialized successfully");
                    Logging.e(TAG, "decode() - directSurfaceVideoDecoder.initDecode() successfully:" + iElapsedRealtime3);
                } else if (this.mPendingInitDSDecoder) {
                    long jElapsedRealtime4 = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime4 - this.mLastKeyFrameRequiredTimeMs > 1000) {
                        this.keyFrameRequired = true;
                        this.mLastKeyFrameRequiredTimeMs = jElapsedRealtime4;
                        this.mPendingInitDSDecoder = false;
                        Logging.e(TAG, "DSDecoder request key frame!");
                    }
                }
            }
        } else if (this.mRenderView.getSurface() == null) {
            Logging.e(TAG, "decode() - directSurfaceVideoDecoder() NO_OUTPUT:");
            return VideoCodecStatus.NO_OUTPUT;
        }
        VideoCodecStatus videoCodecStatusDecode = this.activeVideoDecoder.decode(encodedImage, decodeInfo);
        if (!this.keyFrameRequired) {
            return videoCodecStatusDecode;
        }
        this.keyFrameRequired = false;
        Logging.e(TAG, "decode() - return REQUEST_KEYFRAME");
        return VideoCodecStatus.REQUEST_KEYFRAME;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedHeight() {
        VideoDecoder videoDecoder = this.activeVideoDecoder;
        if (videoDecoder != null) {
            return videoDecoder.getDecodedHeight();
        }
        return 0;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedWidth() {
        VideoDecoder videoDecoder = this.activeVideoDecoder;
        if (videoDecoder != null) {
            return videoDecoder.getDecodedWidth();
        }
        return 0;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public String getImplementationName() {
        DirectSurfaceVideoDecoder directSurfaceVideoDecoder = this.directSurfaceVideoDecoder;
        if (directSurfaceVideoDecoder != null) {
            return directSurfaceVideoDecoder.getImplementationName();
        }
        return this.surfaceTextureVideoDecoder != null ? directSurfaceVideoDecoder.getImplementationName() : "CompositeVideoDecoder";
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
        DirectSurfaceHelper directSurfaceHelper;
        this.mPendingInitDSDecoder = false;
        this.mLastKeyFrameRequiredTimeMs = 0L;
        if (this.directSurfaceVideoDecoder == null || this.surfaceTextureVideoDecoder == null || (directSurfaceHelper = this.mRenderView) == null) {
            String str = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initDecode error, fallback software,directSurfaceVideoDecoder:");
            sb2.append(this.directSurfaceVideoDecoder == null);
            sb2.append(",surfaceTextureVideoDecoder:");
            sb2.append(this.surfaceTextureVideoDecoder == null);
            sb2.append(",mRenderView:");
            sb2.append(this.mRenderView == null);
            Logging.d(str, sb2.toString());
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
        this.mDecodeCallback = callback;
        if (directSurfaceHelper.getSurface() == null) {
            Logging.d(TAG, "surfaceTextureVideoDecoder.initDecode() because of surface==null");
            this.isSurfaceTextureVideoDecoder = true;
            this.activeVideoDecoder = this.surfaceTextureVideoDecoder;
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_EGL_CREATED, "init surfaceTexture becaused of surface==null");
            return this.activeVideoDecoder.initDecode(settings, callback);
        }
        Logging.d(TAG, "directSurfaceVideoDecoder.initDecode() because of surface!=null");
        this.isSurfaceTextureVideoDecoder = false;
        DirectSurfaceVideoDecoder directSurfaceVideoDecoder = this.directSurfaceVideoDecoder;
        this.activeVideoDecoder = directSurfaceVideoDecoder;
        VideoCodecStatus videoCodecStatusInitDecode = directSurfaceVideoDecoder.initDecode(settings, callback);
        if (videoCodecStatusInitDecode == VideoCodecStatus.OK) {
            return videoCodecStatusInitDecode;
        }
        Logging.d(TAG, "surfaceTextureVideoDecoder.initDecode() because of directSurfaceVideoDecoder initial failed");
        this.activeVideoDecoder = this.surfaceTextureVideoDecoder;
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_COMPOSITE_VIDEO_DECODER_EGL_CREATED, "init surfaceTexture becaused of directSurfaceVideoDecoder initial failed");
        return this.activeVideoDecoder.initDecode(settings, callback);
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus release() {
        VideoDecoder videoDecoder = this.activeVideoDecoder;
        if (videoDecoder != null) {
            videoDecoder.release();
        }
        return VideoCodecStatus.OK;
    }
}
