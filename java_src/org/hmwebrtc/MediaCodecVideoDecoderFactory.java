package org.hmwebrtc;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class MediaCodecVideoDecoderFactory implements VideoDecoderFactory {
    private static final String TAG = "MediaCodecVideoDecoderFactory";
    private static boolean forceH264;
    private static boolean forceVP8;
    private static boolean supportH265;

    @Nullable
    private final List<VideoCodecInfo> cachedSupportedCodecInfos;

    @Nullable
    private final Predicate<MediaCodecInfo> codecAllowedPredicate;
    private boolean codecCached;
    protected boolean isPlatform;
    private final VideoCodecMimeType[] mIncludeH265;
    private final VideoCodecMimeType[] mNormal;
    private Object renderView;
    private int rotationDegree;

    @Nullable
    private final EglBase.Context sharedContext;

    public MediaCodecVideoDecoderFactory(@Nullable EglBase.Context context, @Nullable Predicate<MediaCodecInfo> predicate) {
        VideoCodecMimeType videoCodecMimeType = VideoCodecMimeType.H264;
        VideoCodecMimeType videoCodecMimeType2 = VideoCodecMimeType.VP8;
        VideoCodecMimeType videoCodecMimeType3 = VideoCodecMimeType.VP9;
        VideoCodecMimeType videoCodecMimeType4 = VideoCodecMimeType.AV1;
        this.mIncludeH265 = new VideoCodecMimeType[]{VideoCodecMimeType.H265, videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        this.mNormal = new VideoCodecMimeType[]{videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        this.sharedContext = context;
        this.codecAllowedPredicate = predicate;
        this.cachedSupportedCodecInfos = new ArrayList();
        this.codecCached = false;
    }

    @Nullable
    private MediaCodecInfo findCodecForType(VideoCodecMimeType videoCodecMimeType) {
        MediaCodecInfo[] codecInfos;
        int i10 = 0;
        while (true) {
            MediaCodecInfo codecInfoAt = null;
            if (i10 >= MediaCodecList.getCodecCount()) {
                try {
                    codecInfos = new MediaCodecList(1).getCodecInfos();
                } catch (IllegalArgumentException e10) {
                    Logging.e(TAG, "Cannot retrieve decoder codec infos", e10);
                    codecInfos = null;
                } catch (SecurityException e11) {
                    Logging.e(TAG, "Security exception when retrieving codec infos", e11);
                    codecInfos = null;
                } catch (RuntimeException e12) {
                    Logging.e(TAG, "Runtime exception when retrieving codec infos", e12);
                    codecInfos = null;
                }
                if (codecInfos != null) {
                    for (MediaCodecInfo mediaCodecInfo : codecInfos) {
                        if (mediaCodecInfo != null && !mediaCodecInfo.isEncoder() && isSupportedCodec(mediaCodecInfo, videoCodecMimeType)) {
                            Logging.w(TAG, "findCodecForType: " + videoCodecMimeType + " info.getName():" + mediaCodecInfo.getName());
                            return mediaCodecInfo;
                        }
                    }
                }
                return null;
            }
            try {
                codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            } catch (IllegalArgumentException e13) {
                Logging.e(TAG, "Cannot retrieve decoder codec info", e13);
            }
            if (codecInfoAt != null && !codecInfoAt.isEncoder() && isSupportedCodec(codecInfoAt, videoCodecMimeType)) {
                Logging.w(TAG, "findCodecForType: " + videoCodecMimeType + " info.getName():" + codecInfoAt.getName());
                return codecInfoAt;
            }
            i10++;
        }
    }

    public static void forceMatchH264(boolean z10) {
        forceH264 = z10;
        SoftwareVideoDecoderFactory.setForceHmH264Decoder(z10);
    }

    public static void forceMatchVP8(boolean z10) {
        forceVP8 = z10;
        SoftwareVideoDecoderFactory.setForceHmVp8Decoder(z10);
    }

    private VideoCodecMimeType[] getSupportMimeTypes() {
        if (forceVP8) {
            return new VideoCodecMimeType[]{VideoCodecMimeType.VP8};
        }
        if (forceH264) {
            return new VideoCodecMimeType[]{VideoCodecMimeType.H264};
        }
        return supportH265 ? this.mIncludeH265 : this.mNormal;
    }

    private boolean isCodecAllowed(MediaCodecInfo mediaCodecInfo) {
        Predicate<MediaCodecInfo> predicate = this.codecAllowedPredicate;
        if (predicate == null) {
            return true;
        }
        return predicate.test(mediaCodecInfo);
    }

    private boolean isH264HighProfileSupported(MediaCodecInfo mediaCodecInfo) {
        String name = mediaCodecInfo.getName();
        int i10 = Build.VERSION.SDK_INT;
        if (name.startsWith("OMX.qcom.")) {
            return true;
        }
        return i10 >= 23 && name.startsWith("OMX.Exynos.");
    }

    private boolean isSupportedCodec(MediaCodecInfo mediaCodecInfo, VideoCodecMimeType videoCodecMimeType) {
        mediaCodecInfo.getName();
        try {
            if (MediaCodecUtils.codecSupportsType(mediaCodecInfo, videoCodecMimeType)) {
                if (MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), mediaCodecInfo.getCapabilitiesForType(videoCodecMimeType.mimeType())) == null) {
                    return false;
                }
                return isCodecAllowed(mediaCodecInfo);
            }
            Logging.w(TAG, "Not codecSupportsType info.getName(): " + mediaCodecInfo.getName() + " type: " + videoCodecMimeType);
            return false;
        } catch (Exception e10) {
            Logging.e(TAG, "isSupportedCodec exception: " + mediaCodecInfo + ", type: " + videoCodecMimeType + ", exception: " + e10);
            return false;
        }
    }

    public static void turnOnH265(boolean z10) {
        supportH265 = z10;
    }

    @Override // org.hmwebrtc.VideoDecoderFactory
    @Nullable
    public VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo) {
        Logging.w(TAG, "createDecoder codecType.getName():" + videoCodecInfo.getName() + "isPlatform: " + this.isPlatform);
        VideoDecoder videoDecoderCreateDecoder = MediaCodecSupportedCodecs.createDecoder(videoCodecInfo.getName(), this.isPlatform, this.sharedContext, this.renderView, this.rotationDegree);
        if (videoDecoderCreateDecoder != null && videoDecoderCreateDecoder.getImplementationName() == null) {
            videoDecoderCreateDecoder = null;
            try {
                VideoCodecMimeType videoCodecMimeTypeFromSdpCodecName = VideoCodecMimeType.fromSdpCodecName(videoCodecInfo.getName());
                MediaCodecInfo mediaCodecInfoFindCodecForType = findCodecForType(videoCodecMimeTypeFromSdpCodecName);
                if (mediaCodecInfoFindCodecForType == null) {
                    return null;
                }
                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoFindCodecForType.getCapabilitiesForType(videoCodecMimeTypeFromSdpCodecName.mimeType());
                return this.renderView == null ? new AndroidVideoDecoder(new MediaCodecWrapperFactoryImpl(), mediaCodecInfoFindCodecForType.getName(), videoCodecMimeTypeFromSdpCodecName, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), capabilitiesForType), this.sharedContext) : new CompositeVideoDecoder(new AndroidVideoDecoder(new MediaCodecWrapperFactoryImpl(), mediaCodecInfoFindCodecForType.getName(), videoCodecMimeTypeFromSdpCodecName, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), capabilitiesForType), this.sharedContext), new DirectSurfaceVideoDecoder(new MediaCodecWrapperFactoryImpl(), mediaCodecInfoFindCodecForType.getName(), videoCodecMimeTypeFromSdpCodecName, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), capabilitiesForType).intValue(), this.renderView, this.rotationDegree), this.renderView);
            } catch (Exception e10) {
                HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "createDecoder Exception: " + e10.toString());
            }
        }
        return videoDecoderCreateDecoder;
    }

    @Override // org.hmwebrtc.VideoDecoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        List arrayList;
        VideoCodecInfo[] cachedVideoCodecs = MediaCodecSupportedCodecs.getCachedVideoCodecs(this.isPlatform);
        if (cachedVideoCodecs != null) {
            return cachedVideoCodecs;
        }
        if (forceH264) {
            arrayList = this.cachedSupportedCodecInfos;
            if (this.codecCached) {
                Logging.w(TAG, "return cached SupportedCodecs, codec list size: " + arrayList.size());
                return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
            }
        } else {
            arrayList = new ArrayList();
        }
        for (VideoCodecMimeType videoCodecMimeType : getSupportMimeTypes()) {
            MediaCodecInfo mediaCodecInfoFindCodecForType = findCodecForType(videoCodecMimeType);
            if (mediaCodecInfoFindCodecForType == null) {
                Logging.e(TAG, "Can't find codec for type: " + videoCodecMimeType);
            } else {
                String sdpCodecName = videoCodecMimeType.toSdpCodecName();
                if (videoCodecMimeType == VideoCodecMimeType.H264 && isH264HighProfileSupported(mediaCodecInfoFindCodecForType)) {
                    arrayList.add(new VideoCodecInfo(sdpCodecName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, true)));
                }
                arrayList.add(new VideoCodecInfo(sdpCodecName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, true)));
                Logging.w(TAG, "getSupportedCodecs: " + mediaCodecInfoFindCodecForType.getName() + ",type name:" + sdpCodecName);
                arrayList.add(new VideoCodecInfo(sdpCodecName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, false)));
            }
        }
        if (forceH264) {
            this.codecCached = true;
        }
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }

    public MediaCodecVideoDecoderFactory(Object obj, int i10, @Nullable Predicate<MediaCodecInfo> predicate, @Nullable EglBase.Context context) {
        VideoCodecMimeType videoCodecMimeType = VideoCodecMimeType.H264;
        VideoCodecMimeType videoCodecMimeType2 = VideoCodecMimeType.VP8;
        VideoCodecMimeType videoCodecMimeType3 = VideoCodecMimeType.VP9;
        VideoCodecMimeType videoCodecMimeType4 = VideoCodecMimeType.AV1;
        this.mIncludeH265 = new VideoCodecMimeType[]{VideoCodecMimeType.H265, videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        this.mNormal = new VideoCodecMimeType[]{videoCodecMimeType, videoCodecMimeType2, videoCodecMimeType3, videoCodecMimeType4};
        this.renderView = obj;
        this.rotationDegree = i10;
        this.sharedContext = context;
        this.codecAllowedPredicate = predicate;
        this.cachedSupportedCodecInfos = new ArrayList();
        this.codecCached = false;
    }
}
