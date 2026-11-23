package org.hmwebrtc;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class SoftwareVideoDecoderFactory implements VideoDecoderFactory {
    private static final String TAG = "SoftwareVideoDecoderFactory";
    private static boolean mForceHmH264Decoder;
    private static boolean mForceHmVp8Decoder;

    private static VideoCodecMimeType[] getSupportedCodecsTypes() {
        if (mForceHmVp8Decoder && LibvpxVp8Decoder.nativeIsSupported()) {
            return new VideoCodecMimeType[]{VideoCodecMimeType.VP8};
        }
        if (mForceHmH264Decoder && LibH264Decoder.nativeIsSupported()) {
            return new VideoCodecMimeType[]{VideoCodecMimeType.H264};
        }
        return (mForceHmVp8Decoder || mForceHmH264Decoder) ? new VideoCodecMimeType[0] : VideoCodecMimeType.values();
    }

    public static void setForceHmH264Decoder(boolean z10) {
        Logging.d(TAG, "Set mForceHmH264Decoder is: " + z10);
        mForceHmH264Decoder = z10;
    }

    public static void setForceHmVp8Decoder(boolean z10) {
        Logging.d(TAG, "Set mForceHmVp8Decoder is: " + z10);
        mForceHmVp8Decoder = z10;
    }

    private static VideoCodecInfo[] supportedCodecs() {
        ArrayList arrayList = new ArrayList();
        for (VideoCodecMimeType videoCodecMimeType : getSupportedCodecsTypes()) {
            VideoCodecMimeType videoCodecMimeType2 = VideoCodecMimeType.H264;
            if (videoCodecMimeType == videoCodecMimeType2) {
                Logging.d(TAG, "supportedCodecs: " + videoCodecMimeType.toSdpCodecName() + " nativeIsSupported: " + LibH264Decoder.nativeIsSupported());
            }
            VideoCodecMimeType videoCodecMimeType3 = VideoCodecMimeType.VP9;
            if (videoCodecMimeType == videoCodecMimeType3) {
                Logging.d(TAG, "supportedCodecs: " + videoCodecMimeType.toSdpCodecName() + " nativeIsSupported: " + LibvpxVp9Decoder.nativeIsSupported());
            }
            VideoCodecMimeType videoCodecMimeType4 = VideoCodecMimeType.AV1;
            if (videoCodecMimeType == videoCodecMimeType4) {
                Logging.d(TAG, "supportedCodecs: " + videoCodecMimeType.toSdpCodecName() + " nativeIsSupported: " + LibaomAv1Decoder.nativeIsSupported());
            }
            VideoCodecMimeType videoCodecMimeType5 = VideoCodecMimeType.VP8;
            if (videoCodecMimeType == videoCodecMimeType5 && LibvpxVp8Decoder.nativeIsSupported()) {
                arrayList.add(new VideoCodecInfo(videoCodecMimeType5.toSdpCodecName(), new HashMap()));
                Logging.d(TAG, "supportedCodecs: Software VP8 Decoder");
            }
            if (videoCodecMimeType == videoCodecMimeType2 && LibH264Decoder.nativeIsSupported()) {
                HashMap map = new HashMap();
                map.put("packetization-mode", "1");
                arrayList.add(new VideoCodecInfo(videoCodecMimeType2.toSdpCodecName(), map));
                Logging.d(TAG, "supportedCodecs: Software H264 Decoder");
            }
            if (videoCodecMimeType == videoCodecMimeType3 && LibvpxVp9Decoder.nativeIsSupported()) {
                arrayList.add(new VideoCodecInfo(videoCodecMimeType3.toSdpCodecName(), new HashMap()));
                Logging.d(TAG, "supportedCodecs: Software VP9 Decoder");
            }
            if (videoCodecMimeType == videoCodecMimeType4 && LibaomAv1Decoder.nativeIsSupported()) {
                arrayList.add(new VideoCodecInfo(videoCodecMimeType4.toSdpCodecName(), new HashMap()));
                Logging.d(TAG, "supportedCodecs: Software AV1 Decoder");
            }
        }
        Logging.d(TAG, "supportedCodecs: codecs.size()" + arrayList.size());
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }

    @Override // org.hmwebrtc.VideoDecoderFactory
    @Nullable
    public VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo) {
        String name = videoCodecInfo.getName();
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP8.toSdpCodecName()) && LibvpxVp8Decoder.nativeIsSupported()) {
            Logging.d(TAG, "Created Software VP8 Decoder");
            return new LibvpxVp8Decoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP9.toSdpCodecName()) && LibvpxVp9Decoder.nativeIsSupported()) {
            Logging.d(TAG, "Created Software VP9 Decoder");
            return new LibvpxVp9Decoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.H264.toSdpCodecName()) && LibH264Decoder.nativeIsSupported()) {
            Logging.d(TAG, "Created Software H264 Decoder");
            return new LibH264Decoder();
        }
        if (!name.equalsIgnoreCase(VideoCodecMimeType.AV1.toSdpCodecName()) || !LibaomAv1Decoder.nativeIsSupported()) {
            return null;
        }
        Logging.d(TAG, "Created Software AV1 Decoder");
        return new LibaomAv1Decoder();
    }

    @Override // org.hmwebrtc.VideoDecoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        return supportedCodecs();
    }
}
