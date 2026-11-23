package org.webrtc.haima;

import android.text.TextUtils;
import org.hmwebrtc.Logging;
import org.webrtc.haima.enums.DataChannelPolicy;

/* JADX INFO: loaded from: classes10.dex */
public class HmDataChannelDeviceSwitch {
    private static final String TAG = "HmDataChannelDeviceSwitch";
    private String mCloudId;
    private boolean mIsEnabled;
    private long mPercent;
    private String mPercentStr;
    private DataChannelPolicy port7681DataChannelPolicy;
    private DataChannelPolicy port7682DataChannelPolicy;

    private static class SingletonHolder {
        private static final HmDataChannelDeviceSwitch mSington = new HmDataChannelDeviceSwitch();

        private SingletonHolder() {
        }
    }

    private boolean calculateSwitch() {
        boolean z10 = false;
        if (TextUtils.isEmpty(this.mCloudId)) {
            return false;
        }
        String str = this.mPercentStr;
        if (str != null) {
            long jLongValue = Double.valueOf(str).longValue();
            this.mPercent = jLongValue;
            if (jLongValue > 0) {
                if (this.mCloudId.length() <= 2) {
                    return false;
                }
                try {
                    String str2 = this.mCloudId;
                    long j10 = Long.parseLong(str2.substring(str2.length() - 2));
                    z10 = j10 < this.mPercent;
                    logParamsForSwitch(z10, j10);
                } catch (Exception unused) {
                }
                return z10;
            }
        }
        if (this.mPercentStr == null) {
            Logging.d(TAG, "is not enable: datachannel gray percent is null");
        } else {
            Logging.d(TAG, "is not enable: datachannel gray percent is " + this.mPercent);
        }
        return false;
    }

    public static HmDataChannelDeviceSwitch getInstance() {
        return SingletonHolder.mSington;
    }

    private void logParamsForSwitch(boolean z10, long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mIsEnable:");
        sb2.append(z10);
        sb2.append("mPercent:");
        sb2.append(this.mPercent);
        sb2.append("mCloudId:");
        sb2.append(this.mCloudId);
        sb2.append("mCloudId.hashCode():");
        String str = this.mCloudId;
        sb2.append(str == null ? "" : Integer.valueOf(str.hashCode()));
        sb2.append("((Math.abs(mCloudId.hashCode()) % 100):");
        sb2.append(j10);
        Logging.d(TAG, sb2.toString());
    }

    public DataChannelPolicy getPort7681DataChannelPolicy() {
        return this.port7681DataChannelPolicy;
    }

    public DataChannelPolicy getPort7682DataChannelPolicy() {
        return this.port7682DataChannelPolicy;
    }

    public boolean isDataChannelEnable() {
        return this.mIsEnabled;
    }

    public void setCloudId(String str) {
        this.mCloudId = str;
        this.mIsEnabled = calculateSwitch();
    }

    public void setEnablePara(String str) {
        this.mPercentStr = str;
        if (str == null || str.length() == 0 || TextUtils.isEmpty(this.mCloudId)) {
            return;
        }
        this.mIsEnabled = calculateSwitch();
    }

    public void setPort7681DataChannelPolicy(DataChannelPolicy dataChannelPolicy) {
        this.port7681DataChannelPolicy = dataChannelPolicy;
    }

    public void setPort7682DataChannelPolicy(DataChannelPolicy dataChannelPolicy) {
        this.port7682DataChannelPolicy = dataChannelPolicy;
    }

    private HmDataChannelDeviceSwitch() {
        DataChannelPolicy dataChannelPolicy = DataChannelPolicy.START;
        this.port7681DataChannelPolicy = dataChannelPolicy;
        this.port7682DataChannelPolicy = dataChannelPolicy;
        this.mIsEnabled = false;
        this.mCloudId = "";
        this.mPercent = 0L;
        this.mPercentStr = "0";
    }
}
