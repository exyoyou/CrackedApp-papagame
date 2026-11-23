package org.webrtc.haima;

import org.webrtc.haima.enums.RtcErrorType;

/* JADX INFO: loaded from: classes10.dex */
public interface HmPlayerCallback {
    void onBitrate(long j10);

    void onDelayInfoNeedSend(HmFrameDelayInfo hmFrameDelayInfo);

    void onError(RtcErrorType rtcErrorType, String str, Object obj);

    void onFps(int i10);

    void onFrameDecode(int i10);

    void onIDRArrived(long j10);

    void onIDRDecoded(long j10);

    void onIDRReadyToRender(long j10);

    void onIDRRendered(long j10);
}
