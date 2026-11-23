package org.webrtc.haima;

import android.text.TextUtils;
import com.windmill.sdk.WMConstants;
import org.hmwebrtc.utils.FiledStringParser;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcStunRequestResendCfg extends HMRTConfig {
    private static final String DEFAULT_CFG = "enable:0";
    private static final Boolean DEFAULT_ENABLE = Boolean.FALSE;
    private static final String FIELD_RESEND_COUNT = "resend_count";
    private static final String FIELD_RESEND_RTO = "resend_rto";
    private static final String FIELD_SWITCH_RTMP = "switch_rtmp";
    private static final String HMRTC_KEY = "HMRTC-StunRequestResend-V1";
    private static final String TAG = "HmRtcStunRequestResendCfg";
    private String mResendCount;
    private String mResendRto;
    private String mSwitchRtmp;

    /* JADX WARN: Illegal instructions before constructor call */
    public HmRtcStunRequestResendCfg(String str) {
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
        this.mResendRto = this.mParser.getStringValue(FIELD_RESEND_RTO, WMConstants.TIMER_STAGE_NONE);
        this.mResendCount = this.mParser.getStringValue(FIELD_RESEND_COUNT, WMConstants.TIMER_STAGE_NONE);
        this.mSwitchRtmp = this.mParser.getStringValue(FIELD_SWITCH_RTMP, "0");
    }

    public static String getHMRTCCfgName() {
        return HMRTC_KEY;
    }

    @Override // org.webrtc.haima.HMRTConfig
    public String ToString() {
        String strToString = super.ToString();
        if (!TextUtils.isEmpty(this.mResendRto)) {
            strToString = strToString + ",resend_rto:" + this.mResendRto;
        }
        if (!TextUtils.isEmpty(this.mResendCount)) {
            strToString = strToString + ",resend_count:" + this.mResendCount;
        }
        if (TextUtils.isEmpty(this.mSwitchRtmp)) {
            return strToString;
        }
        return strToString + ",switch_rtmp:" + this.mSwitchRtmp;
    }

    public int getResendCount() {
        if (isEnable()) {
            try {
                return Integer.parseInt(this.mResendCount);
            } catch (NumberFormatException e10) {
                e10.toString();
            }
        }
        return -1;
    }

    public int getResendRto() {
        if (isEnable()) {
            try {
                return Integer.parseInt(this.mResendRto);
            } catch (NumberFormatException e10) {
                e10.toString();
            }
        }
        return -1;
    }

    public boolean isEnableSwitchRtmp() {
        if (isEnable()) {
            return "1".equals(this.mSwitchRtmp);
        }
        return false;
    }
}
