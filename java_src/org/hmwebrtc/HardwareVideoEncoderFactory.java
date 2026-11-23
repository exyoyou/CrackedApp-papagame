package org.hmwebrtc;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class HardwareVideoEncoderFactory implements VideoEncoderFactory {
    private static final int QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS = 15000;
    private static final int QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS = 20000;
    private static final int QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS = 15000;
    private static final String TAG = "HardwareVideoEncoderFactory";
    private static boolean supportH265;

    @Nullable
    private final Predicate<MediaCodecInfo> codecAllowedPredicate;
    private final boolean enableH264HighProfile;
    private final boolean enableIntelVp8Encoder;
    private final VideoCodecMimeType[] mIncludeH265;
    private final VideoCodecMimeType[] mNormal;

    @Nullable
    private final EglBase14.Context sharedContext;
    private static final List<String> H264_HW_EXCEPTION_MODELS = Arrays.asList("SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4");
    private static boolean enableEncoder = true;

    /* JADX INFO: renamed from: org.hmwebrtc.HardwareVideoEncoderFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$hmwebrtc$VideoCodecMimeType;

        static {
            int[] iArr = new int[VideoCodecMimeType.values().length];
            $SwitchMap$org$hmwebrtc$VideoCodecMimeType = iArr;
            try {
                iArr[VideoCodecMimeType.VP8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.VP9.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.H264.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.H265.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.AV1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public HardwareVideoEncoderFactory(EglBase.Context context, boolean z10, boolean z11) {
        this(context, z10, z11, null);
    }

    private BitrateAdjuster createBitrateAdjuster(VideoCodecMimeType videoCodecMimeType, String str) {
        if (str.startsWith("OMX.Exynos.")) {
            return videoCodecMimeType == VideoCodecMimeType.VP8 ? new DynamicBitrateAdjuster() : new FramerateBitrateAdjuster();
        }
        return new BaseBitrateAdjuster();
    }

    @Nullable
    private MediaCodecInfo findCodecForType(VideoCodecMimeType videoCodecMimeType) {
        for (int i10 = 0; i10 < MediaCodecList.getCodecCount(); i10++) {
            try {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
                if (codecInfoAt != null && codecInfoAt.isEncoder() && isSupportedCodec(codecInfoAt, videoCodecMimeType)) {
                    return codecInfoAt;
                }
            } catch (IllegalArgumentException e10) {
                Logging.e(TAG, "Cannot retrieve encoder codec info", e10);
            }
        }
        return null;
    }

    private int getForcedKeyFrameIntervalMs(VideoCodecMimeType videoCodecMimeType, String str) {
        if (videoCodecMimeType != VideoCodecMimeType.VP8 || !str.startsWith("OMX.qcom.")) {
            return 0;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 21 && i10 != 22) {
            if (i10 == 23) {
                return 20000;
            }
            if (i10 <= 23) {
                return 0;
            }
        }
        return com.join.mgps.socket.entity.b.f73001c;
    }

    private int getKeyFrameIntervalSec(VideoCodecMimeType videoCodecMimeType) {
        int i10 = AnonymousClass1.$SwitchMap$org$hmwebrtc$VideoCodecMimeType[videoCodecMimeType.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return 100;
        }
        if (i10 == 3 || i10 == 4) {
            return 20;
        }
        if (i10 == 5) {
            return 100;
        }
        throw new IllegalArgumentException("Unsupported VideoCodecMimeType " + videoCodecMimeType);
    }

    private boolean isH264HighProfileSupported(MediaCodecInfo mediaCodecInfo) {
        return this.enableH264HighProfile && Build.VERSION.SDK_INT > 23 && mediaCodecInfo.getName().startsWith("OMX.Exynos.");
    }

    private boolean isHardwareSupportedInCurrentSdk(MediaCodecInfo mediaCodecInfo, VideoCodecMimeType videoCodecMimeType) {
        int i10 = AnonymousClass1.$SwitchMap$org$hmwebrtc$VideoCodecMimeType[videoCodecMimeType.ordinal()];
        if (i10 == 1) {
            return isHardwareSupportedInCurrentSdkVp8(mediaCodecInfo);
        }
        if (i10 == 2) {
            return isHardwareSupportedInCurrentSdkVp9(mediaCodecInfo);
        }
        if (i10 == 3) {
            return true;
        }
        if (i10 != 4) {
            return false;
        }
        return isHardwareSupportedInCurrentSdkH265(mediaCodecInfo);
    }

    private boolean isHardwareSupportedInCurrentSdkH264(MediaCodecInfo mediaCodecInfo) {
        if (H264_HW_EXCEPTION_MODELS.contains(Build.MODEL)) {
            return false;
        }
        String name = mediaCodecInfo.getName();
        return name.startsWith("OMX.qcom.") || name.startsWith("OMX.Exynos.");
    }

    private boolean isHardwareSupportedInCurrentSdkH265(MediaCodecInfo mediaCodecInfo) {
        Logging.w(TAG, "isHardwareSupportedInCurrentSdkH265 always return true.");
        mediaCodecInfo.getName();
        return true;
    }

    private boolean isHardwareSupportedInCurrentSdkVp8(MediaCodecInfo mediaCodecInfo) {
        String name = mediaCodecInfo.getName();
        return name.startsWith("OMX.qcom.") || (name.startsWith("OMX.Exynos.") && Build.VERSION.SDK_INT >= 23) || (name.startsWith("OMX.Intel.") && this.enableIntelVp8Encoder);
    }

    private boolean isHardwareSupportedInCurrentSdkVp9(MediaCodecInfo mediaCodecInfo) {
        String name = mediaCodecInfo.getName();
        return (name.startsWith("OMX.qcom.") || name.startsWith("OMX.Exynos.")) && Build.VERSION.SDK_INT >= 24;
    }

    private boolean isMediaCodecAllowed(MediaCodecInfo mediaCodecInfo) {
        Predicate<MediaCodecInfo> predicate = this.codecAllowedPredicate;
        if (predicate == null) {
            return true;
        }
        return predicate.test(mediaCodecInfo);
    }

    private boolean isSupportedCodec(MediaCodecInfo mediaCodecInfo, VideoCodecMimeType videoCodecMimeType) {
        return MediaCodecUtils.codecSupportsType(mediaCodecInfo, videoCodecMimeType) && MediaCodecUtils.selectColorFormat(MediaCodecUtils.ENCODER_COLOR_FORMATS, mediaCodecInfo.getCapabilitiesForType(videoCodecMimeType.mimeType())) != null && isHardwareSupportedInCurrentSdk(mediaCodecInfo, videoCodecMimeType) && isMediaCodecAllowed(mediaCodecInfo);
    }

    public static void setEnableEncoder(boolean z10) {
        enableEncoder = z10;
    }

    public static void turnOnH265(boolean z10) {
        supportH265 = z10;
    }

    @Override // org.hmwebrtc.VideoEncoderFactory
    @Nullable
    public VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo) {
        VideoCodecMimeType videoCodecMimeTypeFromSdpCodecName = VideoCodecMimeType.fromSdpCodecName(videoCodecInfo.getName());
        MediaCodecInfo mediaCodecInfoFindCodecForType = findCodecForType(videoCodecMimeTypeFromSdpCodecName);
        if (mediaCodecInfoFindCodecForType == null) {
            return null;
        }
        String name = mediaCodecInfoFindCodecForType.getName();
        String strMimeType = videoCodecMimeTypeFromSdpCodecName.mimeType();
        Integer numSelectColorFormat = MediaCodecUtils.selectColorFormat(MediaCodecUtils.TEXTURE_COLOR_FORMATS, mediaCodecInfoFindCodecForType.getCapabilitiesForType(strMimeType));
        Integer numSelectColorFormat2 = MediaCodecUtils.selectColorFormat(MediaCodecUtils.ENCODER_COLOR_FORMATS, mediaCodecInfoFindCodecForType.getCapabilitiesForType(strMimeType));
        if (videoCodecMimeTypeFromSdpCodecName == VideoCodecMimeType.H264) {
            boolean zIsSameH264Profile = H264Utils.isSameH264Profile(videoCodecInfo.params, MediaCodecUtils.getCodecProperties(videoCodecMimeTypeFromSdpCodecName, true));
            boolean zIsSameH264Profile2 = H264Utils.isSameH264Profile(videoCodecInfo.params, MediaCodecUtils.getCodecProperties(videoCodecMimeTypeFromSdpCodecName, false));
            if (!zIsSameH264Profile && !zIsSameH264Profile2) {
                return null;
            }
            if (zIsSameH264Profile && !isH264HighProfileSupported(mediaCodecInfoFindCodecForType)) {
                return null;
            }
        }
        return new HardwareVideoEncoder(new MediaCodecWrapperFactoryImpl(), name, videoCodecMimeTypeFromSdpCodecName, numSelectColorFormat, numSelectColorFormat2, videoCodecInfo.params, getKeyFrameIntervalSec(videoCodecMimeTypeFromSdpCodecName), getForcedKeyFrameIntervalMs(videoCodecMimeTypeFromSdpCodecName, name), createBitrateAdjuster(videoCodecMimeTypeFromSdpCodecName, name), this.sharedContext);
    }

    @Override // org.hmwebrtc.VideoEncoderFactory
    public /* synthetic */ VideoEncoderFactory.VideoEncoderSelector getEncoderSelector() {
        return t0.a(this);
    }

    @Override // org.hmwebrtc.VideoEncoderFactory
    public /* synthetic */ VideoCodecInfo[] getImplementations() {
        return t0.b(this);
    }

    @Override // org.hmwebrtc.VideoEncoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        if (!enableEncoder) {
            return new VideoCodecInfo[0];
        }
        ArrayList arrayList = new ArrayList();
        for (VideoCodecMimeType videoCodecMimeType : supportH265 ? this.mIncludeH265 : this.mNormal) {
            MediaCodecInfo mediaCodecInfoFindCodecForType = findCodecForType(videoCodecMimeType);
            if (mediaCodecInfoFindCodecForType != null) {
                String sdpCodecName = videoCodecMimeType.toSdpCodecName();
                if (videoCodecMimeType == VideoCodecMimeType.H264 && isH264HighProfileSupported(mediaCodecInfoFindCodecForType)) {
                    arrayList.add(new VideoCodecInfo(sdpCodecName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, true)));
                }
                arrayList.add(new VideoCodecInfo(sdpCodecName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, false)));
                Logging.d(TAG, "getSupportedCodecs: " + mediaCodecInfoFindCodecForType.getName() + ",type name:" + sdpCodecName);
            }
        }
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }

    public HardwareVideoEncoderFactory(EglBase.Context context, boolean z10, boolean z11, @Nullable Predicate<MediaCodecInfo> predicate) {
        VideoCodecMimeType videoCodecMimeType = VideoCodecMimeType.H264;
        VideoCodecMimeType videoCodecMimeType2 = VideoCodecMimeType.VP8;
        VideoCodecMimeType videoCodecMimeType3 = VideoCodecMimeType.VP9;
        VideoCodecMimeType videoCodecMimeType4 = VideoCodecMimeType.AV1;
        this.mIncludeH265 = new VideoCodecMimeType[]{VideoCodecMimeType.H265, videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        this.mNormal = new VideoCodecMimeType[]{videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        if (context instanceof EglBase14.Context) {
            this.sharedContext = (EglBase14.Context) context;
        } else {
            Logging.w(TAG, "No shared EglBase.Context.  Encoders will not use texture mode.");
            this.sharedContext = null;
        }
        this.enableIntelVp8Encoder = z10;
        this.enableH264HighProfile = z11;
        this.codecAllowedPredicate = predicate;
    }

    @Deprecated
    public HardwareVideoEncoderFactory(boolean z10, boolean z11) {
        this(null, z10, z11);
    }
}
