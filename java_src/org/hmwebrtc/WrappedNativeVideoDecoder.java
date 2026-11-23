package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public abstract class WrappedNativeVideoDecoder implements VideoDecoder {
    private static final String TAG = "WrappedNativeVideoDecoder";

    @Override // org.hmwebrtc.VideoDecoder
    public abstract long createNativeVideoDecoder();

    @Override // org.hmwebrtc.VideoDecoder
    public final VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
        Logging.d(TAG, "decode Not implemented.");
        return VideoCodecStatus.FALLBACK_SOFTWARE;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedHeight() {
        Logging.d(TAG, "getDecodedHeight Not implemented.");
        return 0;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedWidth() {
        Logging.d(TAG, "getDecodedWidth Not implemented.");
        return 0;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public final String getImplementationName() {
        Logging.d(TAG, "getImplementationName Not implemented.");
        return "Haima test";
    }

    @Override // org.hmwebrtc.VideoDecoder
    public final VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
        Logging.d(TAG, "initDecode Not implemented.");
        return VideoCodecStatus.FALLBACK_SOFTWARE;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public final VideoCodecStatus release() {
        Logging.d(TAG, "release Not implemented.");
        return VideoCodecStatus.OK;
    }
}
