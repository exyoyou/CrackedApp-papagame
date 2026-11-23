package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public interface HmRtcCommandListener {
    void onAvailable(boolean z10);

    void onReceiveBinary(byte[] bArr);

    void onReceiveText(String str);
}
