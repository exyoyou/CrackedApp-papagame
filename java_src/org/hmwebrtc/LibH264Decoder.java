package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class LibH264Decoder extends WrappedNativeVideoDecoder {
    static native long nativeCreateDecoder();

    static native boolean nativeIsSupported();

    @Override // org.hmwebrtc.WrappedNativeVideoDecoder, org.hmwebrtc.VideoDecoder
    public long createNativeVideoDecoder() {
        return nativeCreateDecoder();
    }
}
