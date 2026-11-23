package org.hmwebrtc;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
public class MediaCodecSupportedCodecs {
    private static final String TAG = "@SupportedCodecs";
    public static boolean enable = false;
    private static String exceptionString = null;
    private static Handler getSupportedCodecsHandler = null;
    private static long iterationElapsed = 0;
    public static int timeout = 6;
    private static final Predicate<MediaCodecInfo> defaultPlatformAllowedPredicate = new Predicate<MediaCodecInfo>() { // from class: org.hmwebrtc.MediaCodecSupportedCodecs.1
        private String[] prefixWhitelist;

        {
            String[] strArr = MediaCodecUtils.SOFTWARE_IMPLEMENTATION_PREFIXES;
            this.prefixWhitelist = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> and(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.a(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> negate() {
            return Predicate.CC.b(this);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> or(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.c(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public boolean test(MediaCodecInfo mediaCodecInfo) {
            String name = mediaCodecInfo.getName();
            for (String str : this.prefixWhitelist) {
                if (name.startsWith(str)) {
                    return true;
                }
            }
            return false;
        }
    };
    private static final Predicate<MediaCodecInfo> defaultHardwareAllowedPredicate = new Predicate<MediaCodecInfo>() { // from class: org.hmwebrtc.MediaCodecSupportedCodecs.2
        private String[] prefixBlacklist;

        {
            String[] strArr = MediaCodecUtils.SOFTWARE_IMPLEMENTATION_PREFIXES;
            this.prefixBlacklist = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> and(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.a(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> negate() {
            return Predicate.CC.b(this);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> or(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.c(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public boolean test(MediaCodecInfo mediaCodecInfo) {
            String name = mediaCodecInfo.getName();
            for (String str : this.prefixBlacklist) {
                if (name.startsWith(str)) {
                    return false;
                }
            }
            return true;
        }
    };

    @Nullable
    private static final List<VideoCodecInfo> cachedPlatformSupportedCodecInfos = new ArrayList();

    @Nullable
    private static final List<VideoCodecInfo> cachedHardwareSupportedCodecInfos = new ArrayList();
    private static AtomicBoolean getSupportedCodecsFinished = new AtomicBoolean(false);
    private static CountDownLatch countDownLatch = new CountDownLatch(1);

    private static class CompleteVideoCodecInfo extends VideoCodecInfo {
        private int[] colorFormats;
        private String fullName;

        public CompleteVideoCodecInfo(String str, Map<String, String> map, String str2, int[] iArr) {
            super(str, map);
            this.fullName = str2;
            this.colorFormats = iArr;
        }

        public int[] getColorFormats() {
            return this.colorFormats;
        }

        public String getFullName() {
            return this.fullName;
        }
    }

    private static class NullDecoder implements VideoDecoder {
        private NullDecoder() {
        }

        @Override // org.hmwebrtc.VideoDecoder
        public /* synthetic */ long createNativeVideoDecoder() {
            return p0.a(this);
        }

        @Override // org.hmwebrtc.VideoDecoder
        public VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
            return VideoCodecStatus.OK;
        }

        @Override // org.hmwebrtc.VideoDecoder
        public int getDecodedHeight() {
            return 0;
        }

        @Override // org.hmwebrtc.VideoDecoder
        public int getDecodedWidth() {
            return 0;
        }

        @Override // org.hmwebrtc.VideoDecoder
        public String getImplementationName() {
            return null;
        }

        @Override // org.hmwebrtc.VideoDecoder
        public VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
            return VideoCodecStatus.OK;
        }

        @Override // org.hmwebrtc.VideoDecoder
        public VideoCodecStatus release() {
            return VideoCodecStatus.OK;
        }
    }

    public static VideoDecoder createDecoder(String str, boolean z10, EglBase.Context context, Object obj, int i10) {
        try {
            if (!enable) {
                return new NullDecoder();
            }
            CompleteVideoCodecInfo completeVideoCodecInfoFindVideoCodecForType = findVideoCodecForType(str, z10);
            if (completeVideoCodecInfoFindVideoCodecForType == null) {
                return null;
            }
            VideoCodecMimeType videoCodecMimeTypeValueOf = VideoCodecMimeType.valueOf(str);
            return obj == null ? new AndroidVideoDecoder(new MediaCodecWrapperFactoryImpl(), completeVideoCodecInfoFindVideoCodecForType.getFullName(), videoCodecMimeTypeValueOf, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), completeVideoCodecInfoFindVideoCodecForType.getColorFormats()), context) : new CompositeVideoDecoder(new AndroidVideoDecoder(new MediaCodecWrapperFactoryImpl(), completeVideoCodecInfoFindVideoCodecForType.getFullName(), videoCodecMimeTypeValueOf, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), completeVideoCodecInfoFindVideoCodecForType.getColorFormats()), context), new DirectSurfaceVideoDecoder(new MediaCodecWrapperFactoryImpl(), completeVideoCodecInfoFindVideoCodecForType.getFullName(), videoCodecMimeTypeValueOf, MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), completeVideoCodecInfoFindVideoCodecForType.getColorFormats()).intValue(), obj, i10), obj);
        } catch (Exception e10) {
            HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "createDecoder Exception: " + e10.toString());
            return null;
        }
    }

    @Nullable
    private static MediaCodecInfo findCodecForType(VideoCodecMimeType videoCodecMimeType, boolean z10) {
        int i10 = 0;
        while (true) {
            MediaCodecInfo codecInfoAt = null;
            if (i10 >= MediaCodecList.getCodecCount()) {
                return null;
            }
            try {
                codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            } catch (IllegalArgumentException unused) {
            }
            if (codecInfoAt != null && !codecInfoAt.isEncoder() && isSupportedCodec(codecInfoAt, videoCodecMimeType, z10)) {
                return codecInfoAt;
            }
            i10++;
        }
    }

    private static CompleteVideoCodecInfo findVideoCodecForType(String str, boolean z10) {
        try {
            if (!countDownLatch.await(timeout, TimeUnit.SECONDS)) {
                return null;
            }
            for (VideoCodecInfo videoCodecInfo : z10 ? cachedPlatformSupportedCodecInfos : cachedHardwareSupportedCodecInfos) {
                if (str.equals(videoCodecInfo.getName())) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("findVideoCodecForType:");
                    sb2.append(str);
                    sb2.append(",is platform:");
                    sb2.append(z10);
                    return (CompleteVideoCodecInfo) videoCodecInfo;
                }
            }
            return null;
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("findVideoCodecForType: countDownLatch.await Exception:");
            sb3.append(e10.toString());
            return null;
        }
    }

    public static VideoCodecInfo[] getCachedVideoCodecs(boolean z10) {
        if (!enable) {
            return null;
        }
        if (!getSupportedCodecsFinished.get()) {
            return new VideoCodecInfo[0];
        }
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("return cached platform supported codecs:");
            List<VideoCodecInfo> list = cachedPlatformSupportedCodecInfos;
            sb2.append(list.size());
            return (VideoCodecInfo[]) list.toArray(new VideoCodecInfo[list.size()]);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("return cached hardware supported codecs:");
        List<VideoCodecInfo> list2 = cachedHardwareSupportedCodecInfos;
        sb3.append(list2.size());
        return (VideoCodecInfo[]) list2.toArray(new VideoCodecInfo[list2.size()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void getSupportedCodecs(VideoCodecMimeType[] videoCodecMimeTypeArr, boolean z10) {
        if (videoCodecMimeTypeArr == null || videoCodecMimeTypeArr.length == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (VideoCodecMimeType videoCodecMimeType : videoCodecMimeTypeArr) {
            try {
                MediaCodecInfo mediaCodecInfoFindCodecForType = findCodecForType(videoCodecMimeType, z10);
                if (mediaCodecInfoFindCodecForType != null) {
                    String strName = videoCodecMimeType.name();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("getSupportedCodecs: ");
                    sb2.append(mediaCodecInfoFindCodecForType.getName());
                    sb2.append(",type name:");
                    sb2.append(strName);
                    sb2.append(",is platform:");
                    sb2.append(z10);
                    StringBuffer stringBuffer = new StringBuffer(mediaCodecInfoFindCodecForType.getName());
                    int[] iArr = mediaCodecInfoFindCodecForType.getCapabilitiesForType(videoCodecMimeType.mimeType()).colorFormats;
                    int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
                    if (videoCodecMimeType == VideoCodecMimeType.H264 && isH264HighProfileSupported(mediaCodecInfoFindCodecForType)) {
                        if (z10) {
                            cachedPlatformSupportedCodecInfos.add(new CompleteVideoCodecInfo(strName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, true), stringBuffer.toString(), iArrCopyOf));
                        } else {
                            cachedHardwareSupportedCodecInfos.add(new CompleteVideoCodecInfo(strName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, true), stringBuffer.toString(), iArrCopyOf));
                        }
                    }
                    if (z10) {
                        cachedPlatformSupportedCodecInfos.add(new CompleteVideoCodecInfo(strName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, false), stringBuffer.toString(), iArrCopyOf));
                    } else {
                        cachedHardwareSupportedCodecInfos.add(new CompleteVideoCodecInfo(strName, MediaCodecUtils.getCodecProperties(videoCodecMimeType, false), stringBuffer.toString(), iArrCopyOf));
                    }
                }
            } catch (Exception e10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("getSupportedCodecs Exception:");
                sb3.append(e10.toString());
                exceptionString = new StringBuffer("getSupportedCodecs Exception:" + e10.toString()).toString();
            }
        }
        iterationElapsed = System.currentTimeMillis() - jCurrentTimeMillis;
        getSupportedCodecsFinished.set(true);
        countDownLatch.countDown();
    }

    private static boolean isCodecAllowed(MediaCodecInfo mediaCodecInfo, boolean z10) {
        if (z10) {
            Predicate<MediaCodecInfo> predicate = defaultPlatformAllowedPredicate;
            if (predicate == null) {
                return true;
            }
            return predicate.test(mediaCodecInfo);
        }
        Predicate<MediaCodecInfo> predicate2 = defaultHardwareAllowedPredicate;
        if (predicate2 == null) {
            return true;
        }
        return predicate2.test(mediaCodecInfo);
    }

    private static boolean isH264HighProfileSupported(MediaCodecInfo mediaCodecInfo) {
        String name = mediaCodecInfo.getName();
        int i10 = Build.VERSION.SDK_INT;
        if (name.startsWith("OMX.qcom.")) {
            return true;
        }
        return i10 >= 23 && name.startsWith("OMX.Exynos.");
    }

    private static boolean isSupportedCodec(MediaCodecInfo mediaCodecInfo, VideoCodecMimeType videoCodecMimeType, boolean z10) {
        mediaCodecInfo.getName();
        try {
            if (MediaCodecUtils.codecSupportsType(mediaCodecInfo, videoCodecMimeType) && MediaCodecUtils.selectColorFormat(MediaCodecUtils.getDecodeColorFormates(), mediaCodecInfo.getCapabilitiesForType(videoCodecMimeType.mimeType())) != null) {
                return isCodecAllowed(mediaCodecInfo, z10);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void postReportTask() {
        Handler handler;
        if (!enable || (handler = getSupportedCodecsHandler) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage(1);
        messageObtainMessage.obj = null;
        messageObtainMessage.setData(null);
        getSupportedCodecsHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reportCapabilities() {
        String str = exceptionString;
        if (str != null) {
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_MEDIA_CODEC_DECODER_CAPABILITIES, str);
        }
        StringBuffer stringBuffer = new StringBuffer(Build.VERSION.RELEASE);
        stringBuffer.append(",");
        stringBuffer.append(Build.BRAND);
        stringBuffer.append(",");
        stringBuffer.append(Build.MODEL);
        Iterator<VideoCodecInfo> it2 = cachedHardwareSupportedCodecInfos.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            CompleteVideoCodecInfo completeVideoCodecInfo = (CompleteVideoCodecInfo) it2.next();
            stringBuffer.append(",");
            stringBuffer.append(completeVideoCodecInfo.getFullName());
            for (int i10 : completeVideoCodecInfo.getColorFormats()) {
                stringBuffer.append(",");
                stringBuffer.append(i10);
            }
        }
        Iterator<VideoCodecInfo> it3 = cachedPlatformSupportedCodecInfos.iterator();
        while (it3.hasNext()) {
            CompleteVideoCodecInfo completeVideoCodecInfo2 = (CompleteVideoCodecInfo) it3.next();
            stringBuffer.append(",");
            stringBuffer.append(completeVideoCodecInfo2.getFullName());
            for (int i11 : completeVideoCodecInfo2.getColorFormats()) {
                stringBuffer.append(",");
                stringBuffer.append(i11);
            }
        }
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_MEDIA_CODEC_DECODER_CAPABILITIES, stringBuffer.toString() + ",iteration time elapsed:" + iterationElapsed);
    }

    public static void startGettingSupportedCodecs(boolean z10, boolean z11, boolean z12, boolean z13, int i10, boolean z14) {
        VideoCodecMimeType[] videoCodecMimeTypeArr;
        if (z14 || !z13 || enable) {
            return;
        }
        timeout = i10;
        if (z10) {
            videoCodecMimeTypeArr = new VideoCodecMimeType[]{VideoCodecMimeType.H264};
        } else if (z11) {
            videoCodecMimeTypeArr = new VideoCodecMimeType[]{VideoCodecMimeType.VP8};
        } else {
            videoCodecMimeTypeArr = z12 ? new VideoCodecMimeType[]{VideoCodecMimeType.H265, VideoCodecMimeType.H264, VideoCodecMimeType.VP8, VideoCodecMimeType.VP9} : new VideoCodecMimeType[]{VideoCodecMimeType.H264, VideoCodecMimeType.VP8, VideoCodecMimeType.VP9};
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startGettingSupportedCodecs, configured timeout:");
        sb2.append(timeout);
        HandlerThread handlerThread = new HandlerThread("startGettingSupportedCodecs");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper()) { // from class: org.hmwebrtc.MediaCodecSupportedCodecs.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("handleMessage: message type:");
                sb3.append(message.what);
                int i11 = message.what;
                if (i11 != 0) {
                    if (i11 != 1) {
                        return;
                    }
                    MediaCodecSupportedCodecs.reportCapabilities();
                    return;
                }
                VideoCodecMimeType[] videoCodecMimeTypeArr2 = (VideoCodecMimeType[]) message.obj;
                MediaCodecSupportedCodecs.getSupportedCodecs(videoCodecMimeTypeArr2, false);
                VideoCodecMimeType videoCodecMimeType = videoCodecMimeTypeArr2[0];
                VideoCodecMimeType videoCodecMimeType2 = VideoCodecMimeType.H265;
                if (videoCodecMimeType == videoCodecMimeType2) {
                    MediaCodecSupportedCodecs.getSupportedCodecs(new VideoCodecMimeType[]{videoCodecMimeType2}, true);
                }
            }
        };
        getSupportedCodecsHandler = handler;
        Message messageObtainMessage = handler.obtainMessage(0);
        messageObtainMessage.obj = videoCodecMimeTypeArr;
        messageObtainMessage.setData(null);
        getSupportedCodecsHandler.sendMessage(messageObtainMessage);
        enable = true;
    }
}
