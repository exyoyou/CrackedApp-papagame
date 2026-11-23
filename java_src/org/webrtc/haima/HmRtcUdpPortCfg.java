package org.webrtc.haima;

import android.text.TextUtils;
import org.hmwebrtc.utils.FiledStringParser;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcUdpPortCfg extends HMRTConfig {
    private static final String DEFAULT_CFG = "enable:0";
    private static final Boolean DEFAULT_ENABLE = Boolean.FALSE;
    private static final String FIELD_PORTRANGE = "port_range";
    private static final String FIELD_SWITCH_RTMP = "switch_rtmp";
    private static final String HMRTC_KEY = "HMRTC-UdpPort-V1";
    private static final String TAG = "HmRtcUdpPortCfg";
    private String mPortRange;
    private String mSwitchRtmp;

    public static class HmRtcUdpPortRangeCfg {
        public int udpMaxPort;
        public int udpMinPort;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HmRtcUdpPortCfg(String str) {
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
        this.mPortRange = this.mParser.getStringValue(FIELD_PORTRANGE, "0-0");
        this.mSwitchRtmp = this.mParser.getStringValue(FIELD_SWITCH_RTMP, "0");
    }

    public static String getHMRTCCfgName() {
        return HMRTC_KEY;
    }

    @Override // org.webrtc.haima.HMRTConfig
    public String ToString() {
        String strToString = super.ToString();
        if (!TextUtils.isEmpty(this.mPortRange)) {
            strToString = strToString + ",port_range:" + this.mPortRange;
        }
        if (TextUtils.isEmpty(this.mSwitchRtmp)) {
            return strToString;
        }
        return strToString + ",switch_rtmp:" + this.mSwitchRtmp;
    }

    public HmRtcUdpPortRangeCfg getPortRange() {
        HmRtcUdpPortRangeCfg hmRtcUdpPortRangeCfg = new HmRtcUdpPortRangeCfg();
        if (isEnable()) {
            String[] strArrSplit = this.mPortRange.split("-");
            if (strArrSplit.length == 2) {
                try {
                    hmRtcUdpPortRangeCfg.udpMinPort = Integer.parseInt(strArrSplit[0]);
                    int i10 = Integer.parseInt(strArrSplit[1]);
                    hmRtcUdpPortRangeCfg.udpMaxPort = i10;
                    int i11 = hmRtcUdpPortRangeCfg.udpMinPort;
                    if (i11 < 0 || i11 > 65535) {
                        hmRtcUdpPortRangeCfg.udpMinPort = 0;
                    }
                    if (i10 < 0 || i10 > 65535) {
                        hmRtcUdpPortRangeCfg.udpMaxPort = 0;
                    }
                } catch (NumberFormatException e10) {
                    hmRtcUdpPortRangeCfg.udpMinPort = 0;
                    hmRtcUdpPortRangeCfg.udpMaxPort = 0;
                    e10.toString();
                }
            }
        }
        return hmRtcUdpPortRangeCfg;
    }

    public boolean isEnableSwitchRtmp() {
        if (isEnable()) {
            return "1".equals(this.mSwitchRtmp);
        }
        return false;
    }
}
