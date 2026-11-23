package org.webrtc.haima;

import android.text.TextUtils;
import org.hmwebrtc.utils.FiledStringParser;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcSdkTurnCfg extends HMRTConfig {
    private static final String DEFAULT_CFG = "enable:0";
    private static final Boolean DEFAULT_ENABLE = Boolean.FALSE;
    private static final String FIELD_PASSWORD = "password";
    private static final String FIELD_USER = "user";
    private static final String HMRTC_KEY = "HMRTC-TurnCfg-V1";
    private static final String TAG = "HmRtcSdkTurnCfg";
    private String mPassword;
    private String mUser;

    /* JADX WARN: Illegal instructions before constructor call */
    public HmRtcSdkTurnCfg(String str) {
        Boolean bool = DEFAULT_ENABLE;
        super(bool.booleanValue());
        loadData(str, HMRTC_KEY, DEFAULT_CFG, bool.booleanValue());
        extractValue(getFieldParser());
        if (isEnable()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("HMConf enable the config! ");
            sb2.append(ToString());
        } else {
            setEnable(false);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("HMConf disable the config! ");
            sb3.append(ToString());
        }
    }

    private void extractValue(FiledStringParser filedStringParser) {
        this.mUser = this.mParser.getStringValue("user", "");
        this.mPassword = this.mParser.getStringValue("password", "");
    }

    public static String getHMRTCCfgName() {
        return HMRTC_KEY;
    }

    @Override // org.webrtc.haima.HMRTConfig
    public String ToString() {
        String strToString = super.ToString();
        if (!TextUtils.isEmpty(this.mUser)) {
            strToString = strToString + ",user:" + this.mUser;
        }
        if (TextUtils.isEmpty(this.mPassword)) {
            return strToString;
        }
        return strToString + ",password:" + this.mPassword;
    }

    public String getAuthInfo() {
        if (!isEnable()) {
            return "";
        }
        return "@" + this.mUser + ":" + this.mPassword;
    }
}
