package org.webrtc.haima;

import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.utils.FiledStringParser;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmOperationDelayConfig extends HMRTConfig {
    private static final String DEBUG_LOG_KEY = "debug_log";
    private static final String DEFAULT_CFG = "enable:0";
    private static final boolean DEFAULT_DEBUG_LOG = false;
    private static final boolean DEFAULT_ENABLE = false;
    private static final int DEFAULT_INTERVAL_MS = 1000;
    private static final int DEFAULT_MAX_DELAY_MS = 300;
    private static final int DEFAULT_SALT_MS = 20;
    private static final String HMRTC_KEY = "rtc_operation_delay_sdk";
    private static final String INTERVAL_MS_KEY = "interval_ms";
    private static final String MAX_DELAY_MS_KEY = "max_delay_ms";
    private static final String SALT_KEY = "cor";
    private static final String TAG = "HmOperationDelayCloudConfig";
    private boolean isDebugLog;
    private int mIntervalMs;
    private int mMaxDelayMs;
    private int mSaltMs;

    public HmOperationDelayConfig() {
        super(false);
        reset();
    }

    private void extractValue(FiledStringParser filedStringParser) {
        this.mIntervalMs = this.mParser.getIntValue(INTERVAL_MS_KEY, 1000);
        this.mMaxDelayMs = this.mParser.getIntValue(MAX_DELAY_MS_KEY, 300);
        this.mSaltMs = this.mParser.getIntValue(SALT_KEY, 20);
        this.isDebugLog = this.mParser.getBoolValue(DEBUG_LOG_KEY, false);
    }

    public int getIntervalMs() {
        return this.mIntervalMs;
    }

    public int getMaxDelayMs() {
        return this.mMaxDelayMs;
    }

    public int getSaltMs() {
        return this.mSaltMs;
    }

    public boolean isDebugLog() {
        return this.isDebugLog;
    }

    public void parseConfig(String str) {
        try {
            loadData(str, HMRTC_KEY, DEFAULT_CFG, false);
            extractValue(getFieldParser());
            Logging.i(TAG, String.format("parseConfig, enable:%b, interval:%d, maxDelay:%d, salt:%d, debugLog:%b", Boolean.valueOf(this.mEnable), Integer.valueOf(this.mIntervalMs), Integer.valueOf(this.mMaxDelayMs), Integer.valueOf(this.mSaltMs), Boolean.valueOf(this.isDebugLog)));
        } catch (Exception e10) {
            this.mEnable = false;
            Logging.w(TAG, "because of crashed:" + e10.toString());
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "rtc_operation_delay_sdk: parse Exception:" + e10.toString());
        }
    }

    public void reset() {
        this.mEnable = false;
        this.mIntervalMs = 1000;
        this.mMaxDelayMs = 300;
        this.mSaltMs = 20;
        this.isDebugLog = false;
    }
}
