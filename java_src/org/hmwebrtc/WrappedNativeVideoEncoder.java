package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public abstract class WrappedNativeVideoEncoder implements VideoEncoder {
    @Override // org.hmwebrtc.VideoEncoder
    public abstract long createNativeVideoEncoder();

    @Override // org.hmwebrtc.VideoEncoder
    public final VideoCodecStatus encode(VideoFrame videoFrame, VideoEncoder.EncodeInfo encodeInfo) {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public final String getImplementationName() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public /* synthetic */ VideoEncoder.ResolutionBitrateLimits[] getResolutionBitrateLimits() {
        return s0.b(this);
    }

    @Override // org.hmwebrtc.VideoEncoder
    public final VideoEncoder.ScalingSettings getScalingSettings() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public final VideoCodecStatus initEncode(VideoEncoder.Settings settings, VideoEncoder.Callback callback) {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public abstract boolean isHardwareEncoder();

    @Override // org.hmwebrtc.VideoEncoder
    public final VideoCodecStatus release() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public final VideoCodecStatus setRateAllocation(VideoEncoder.BitrateAllocation bitrateAllocation, int i10) {
        throw new UnsupportedOperationException("Not implemented.");
    }

    @Override // org.hmwebrtc.VideoEncoder
    public /* synthetic */ VideoCodecStatus setRates(VideoEncoder.RateControlParameters rateControlParameters) {
        return s0.d(this, rateControlParameters);
    }
}
