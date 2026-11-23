package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class s0 {
    @CalledByNative
    public static long a(VideoEncoder videoEncoder) {
        return 0L;
    }

    @CalledByNative
    public static VideoEncoder.ResolutionBitrateLimits[] b(VideoEncoder videoEncoder) {
        return new VideoEncoder.ResolutionBitrateLimits[0];
    }

    @CalledByNative
    public static boolean c(VideoEncoder videoEncoder) {
        return true;
    }

    @CalledByNative
    public static VideoCodecStatus d(VideoEncoder videoEncoder, VideoEncoder.RateControlParameters rateControlParameters) {
        return videoEncoder.setRateAllocation(rateControlParameters.bitrate, (int) Math.ceil(rateControlParameters.framerateFps));
    }
}
