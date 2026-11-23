package org.hmwebrtc;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class SoftwareVideoEncoderFactory implements VideoEncoderFactory {
    static VideoCodecInfo[] supportedCodecs() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VideoCodecInfo("H264", H264Utils.getDefaultH264Params(false)));
        if (LibvpxVp8Encoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP8.toSdpCodecName(), new HashMap()));
        }
        if (LibvpxVp9Encoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP9.toSdpCodecName(), new HashMap()));
        }
        if (LibaomAv1Encoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.AV1.toSdpCodecName(), new HashMap()));
        }
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }

    @Override // org.hmwebrtc.VideoEncoderFactory
    @Nullable
    public VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo) {
        String name = videoCodecInfo.getName();
        if (name.equalsIgnoreCase("H264")) {
            return new LibH264Encoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP8.toSdpCodecName()) && LibvpxVp8Encoder.nativeIsSupported()) {
            return new LibvpxVp8Encoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP9.toSdpCodecName()) && LibvpxVp9Encoder.nativeIsSupported()) {
            return new LibvpxVp9Encoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.AV1.toSdpCodecName()) && LibaomAv1Encoder.nativeIsSupported()) {
            return new LibaomAv1Encoder();
        }
        return null;
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
        return supportedCodecs();
    }
}
