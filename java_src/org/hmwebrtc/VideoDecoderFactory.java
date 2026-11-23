package org.hmwebrtc;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface VideoDecoderFactory {
    @Nullable
    @CalledByNative
    VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo);

    @CalledByNative
    VideoCodecInfo[] getSupportedCodecs();
}
