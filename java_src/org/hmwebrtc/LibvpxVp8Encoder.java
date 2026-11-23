package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class LibvpxVp8Encoder extends WrappedNativeVideoEncoder {
    static native long nativeCreateEncoder();

    static native boolean nativeIsSupported();

    @Override // org.hmwebrtc.WrappedNativeVideoEncoder, org.hmwebrtc.VideoEncoder
    public long createNativeVideoEncoder() {
        return nativeCreateEncoder();
    }

    @Override // org.hmwebrtc.WrappedNativeVideoEncoder, org.hmwebrtc.VideoEncoder
    public boolean isHardwareEncoder() {
        return false;
    }
}
