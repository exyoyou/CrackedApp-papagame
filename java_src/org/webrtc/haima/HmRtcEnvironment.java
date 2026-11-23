package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public abstract class HmRtcEnvironment {
    public static final String kDeviceBrand = "dev_brand";
    public static final String kDeviceId = "dev_id";
    public static final String kDeviceModel = "dev_model";
    public static final String kDeviceOs = "dev_os";
    public static final String kDeviceResolution = "dev_resolution";
    public static final String kUserId = "user_id";

    public abstract String getStringValue(String str, String str2);
}
