package org.webrtc.haima;

import android.annotation.SuppressLint;
import org.hmwebrtc.utils.FiledStringParser;

/* JADX INFO: loaded from: classes10.dex */
public class HMRTConfig {
    private static final String FIELD_NAME_ENABLE = "enable";
    protected boolean mEnable;
    protected FiledStringParser mParser;

    public HMRTConfig(boolean z10) {
        this.mEnable = z10;
    }

    @SuppressLint({"PrivateApi"})
    public static String getSystemProp(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String ToString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enable:");
        sb2.append(this.mEnable ? "1" : "0");
        return sb2.toString();
    }

    FiledStringParser getFieldParser() {
        return this.mParser;
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    protected void loadData(String str, String str2, String str3, boolean z10) {
        if (str == null) {
            str = str3;
        }
        FiledStringParser filedStringParser = new FiledStringParser(str);
        this.mParser = filedStringParser;
        this.mEnable = filedStringParser.getBoolValue(FIELD_NAME_ENABLE, z10);
    }

    protected void setEnable(boolean z10) {
        this.mEnable = z10;
    }

    public HMRTConfig(String str, String str2, String str3, boolean z10) {
        FiledStringParser filedStringParser = new FiledStringParser(str == null ? str3 : str);
        this.mParser = filedStringParser;
        this.mEnable = filedStringParser.getBoolValue(FIELD_NAME_ENABLE, z10);
    }
}
