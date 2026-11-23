package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public class HmCacheDecodersConfig extends HmRtcSdkCloudCfg {
    private static final String TIMEOUT = "timeout";
    private int timeout;

    public HmCacheDecodersConfig(String str, String str2) {
        super(str, str2, "");
        this.timeout = 6;
        this.timeout = this.mParser.getIntValue("timeout", 6);
    }

    public int getTimeout() {
        return this.timeout;
    }
}
