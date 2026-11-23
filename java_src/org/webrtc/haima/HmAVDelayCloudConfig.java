package org.webrtc.haima;

import android.text.TextUtils;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.utils.FiledStringParser;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmAVDelayCloudConfig extends HMRTConfig {
    private static final String AUDIO_CAPTURE = "a_cap";
    private static final String AUDIO_DECODE = "a_dec";
    private static final String AUDIO_ENCODE = "a_enc";
    private static final String AUDIO_PLAY = "a_play";
    private static final String DEBUG_LOG = "debug_log";
    private static final String DEFAULT_CFG = "enable:0";
    private static final Boolean DEFAULT_ENABLE = Boolean.FALSE;
    private static final String HMRTC_KEY = "hm_rtc_av_delay_sdk";
    private static final String NET_JITTER = "n_jitter";
    private static final String NET_LOSS = "n_loss";
    private static final String TAG = "HmAVDelayCloudConfig";
    private static final String VIDEO_CAPTURE = "v_cap";
    private static final String VIDEO_CAP_TO_DECODED = "n_cap_to_decoded";
    private static final String VIDEO_DECODE = "v_dec";
    private static final String VIDEO_ENCODE = "v_enc";
    private static final String VIDEO_PLAY = "v_play";
    private boolean hasCountLyRecorded;
    private String mAudioCapture;
    private String mAudioDecode;
    private String mAudioEncode;
    private String mAudioPlay;
    private String mCapToDecoded;
    private String mDebugLog;
    private String mNetJitter;
    private String mNetLoss;
    private String mVideoCapture;
    private String mVideoDecode;
    private String mVideoEncode;
    private String mVideoPlay;

    public static class AVDelayParameters {
        public boolean enable;
        public boolean isDebugLog;
        public AVDelayTuneValue mAudioCaptureParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mAudioEncodeParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mAudioDecodeParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mAudioPlayParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mVideoCaptureParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mVideoEncodeParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mVideoDecodeParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mVideoPlayParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mNetLossParameters = new AVDelayTuneValue();
        public AVDelayTuneValue mNetJitterParameters = new AVDelayTuneValue();
        public int videoFromCapToDecodedThreshold = 5;

        public void reset() {
            this.mAudioCaptureParameters.reset();
            this.mAudioEncodeParameters.reset();
            this.mAudioDecodeParameters.reset();
            this.mAudioPlayParameters.reset();
            this.mVideoCaptureParameters.reset();
            this.mVideoEncodeParameters.reset();
            this.mVideoDecodeParameters.reset();
            this.mVideoPlayParameters.reset();
            this.mNetLossParameters.reset();
            this.mNetJitterParameters.reset();
            this.enable = false;
            this.isDebugLog = false;
            this.videoFromCapToDecodedThreshold = 5;
            Logging.d(HmAVDelayCloudConfig.TAG, "isDebugLog reset:" + this.isDebugLog);
        }
    }

    public static class AVDelayTuneValue {
        public int maxThreshold = -1;
        public int saltValue = -1;

        public void reset() {
            this.maxThreshold = -1;
            this.saltValue = -1;
        }
    }

    public HmAVDelayCloudConfig() {
        super(DEFAULT_ENABLE.booleanValue());
    }

    public static int calculateParameters(int i10, AVDelayTuneValue aVDelayTuneValue) {
        int i11;
        int i12 = aVDelayTuneValue.maxThreshold;
        return (i12 < 0 || (i11 = aVDelayTuneValue.saltValue) < 0 || i10 <= i12) ? i10 : i12 + ((int) ((i10 - i12) * (i11 / 100.0f)));
    }

    private void extractValue(FiledStringParser filedStringParser) {
        this.mAudioCapture = this.mParser.getStringValue(AUDIO_CAPTURE, "");
        this.mAudioEncode = this.mParser.getStringValue(AUDIO_ENCODE, "");
        this.mAudioDecode = this.mParser.getStringValue(AUDIO_DECODE, "");
        this.mAudioPlay = this.mParser.getStringValue(AUDIO_PLAY, "");
        this.mVideoCapture = this.mParser.getStringValue(VIDEO_CAPTURE, "");
        this.mVideoEncode = this.mParser.getStringValue(VIDEO_ENCODE, "");
        this.mVideoDecode = this.mParser.getStringValue(VIDEO_DECODE, "");
        this.mVideoPlay = this.mParser.getStringValue(VIDEO_PLAY, "");
        this.mNetLoss = this.mParser.getStringValue(NET_LOSS, "");
        this.mNetJitter = this.mParser.getStringValue(NET_JITTER, "");
        this.mDebugLog = this.mParser.getStringValue(DEBUG_LOG, "0");
        this.mCapToDecoded = this.mParser.getStringValue(VIDEO_CAP_TO_DECODED, "5");
    }

    public static String getHMRTCName() {
        return HMRTC_KEY;
    }

    void GetParameters(String str, String str2, AVDelayTuneValue aVDelayTuneValue) {
        if (isEnable()) {
            if (str2 == null || str2.isEmpty() || aVDelayTuneValue == null) {
                Logging.w(TAG, str + ": input is null or empty");
                return;
            }
            int iIndexOf = str2.indexOf("-", 1);
            Logging.d(TAG, "pos:" + iIndexOf);
            if (iIndexOf < 0) {
                Logging.w(TAG, "can not find Separator between maxThreshold and saltValue");
                setEnable(false);
                if (this.hasCountLyRecorded) {
                    return;
                }
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "hm_rtc_av_delay_sdk: can not find Separator between maxThreshold and saltValue:name:" + str + ",value:" + str2);
                this.hasCountLyRecorded = true;
                return;
            }
            String strSubstring = str2.substring(0, iIndexOf);
            String strSubstring2 = str2.substring(iIndexOf + 1);
            int i10 = Integer.parseInt(strSubstring);
            if (i10 < 0) {
                Logging.w(TAG, "maxThreshold(" + i10 + ") of " + str + " is not a non-negative integer");
                setEnable(false);
                if (this.hasCountLyRecorded) {
                    return;
                }
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "hm_rtc_av_delay_sdk:maxThreshold(" + i10 + ") of " + str + " is not a non-negative integer");
                this.hasCountLyRecorded = true;
                return;
            }
            aVDelayTuneValue.maxThreshold = i10;
            int i11 = Integer.parseInt(strSubstring2);
            if (i11 < 0) {
                Logging.w(TAG, "saltValue(" + i11 + ") of " + str + " is not a non-negative integer");
                setEnable(false);
                if (!this.hasCountLyRecorded) {
                    RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "hm_rtc_av_delay_sdk:saltValue(" + i11 + ") of " + str + " is not a non-negative integer");
                    this.hasCountLyRecorded = true;
                }
            }
            aVDelayTuneValue.saltValue = i11;
        }
    }

    @Override // org.webrtc.haima.HMRTConfig
    public String ToString() {
        String strToString = super.ToString();
        if (!TextUtils.isEmpty(this.mAudioCapture)) {
            strToString = strToString + ",a_cap:" + this.mAudioCapture;
        }
        if (!TextUtils.isEmpty(this.mAudioEncode)) {
            strToString = strToString + ",a_enc:" + this.mAudioEncode;
        }
        if (!TextUtils.isEmpty(this.mAudioDecode)) {
            strToString = strToString + ",a_dec:" + this.mAudioDecode;
        }
        if (!TextUtils.isEmpty(this.mAudioPlay)) {
            strToString = strToString + ",a_play:" + this.mAudioPlay;
        }
        if (!TextUtils.isEmpty(this.mVideoCapture)) {
            strToString = strToString + ",v_cap:" + this.mVideoCapture;
        }
        if (!TextUtils.isEmpty(this.mVideoEncode)) {
            strToString = strToString + ",v_enc:" + this.mVideoEncode;
        }
        if (!TextUtils.isEmpty(this.mVideoDecode)) {
            strToString = strToString + ",v_dec:" + this.mVideoDecode;
        }
        if (!TextUtils.isEmpty(this.mVideoPlay)) {
            strToString = strToString + ",v_play:" + this.mVideoPlay;
        }
        if (!TextUtils.isEmpty(this.mNetLoss)) {
            strToString = strToString + ",n_loss:" + this.mNetLoss;
        }
        if (TextUtils.isEmpty(this.mNetJitter)) {
            return strToString;
        }
        return strToString + ",n_jitter:" + this.mNetJitter;
    }

    public void parseAVDelayCloudConfig(String str, AVDelayParameters aVDelayParameters) {
        if (aVDelayParameters == null) {
            Logging.w(TAG, "AVDelayParameters is null");
            return;
        }
        try {
            loadData(str, HMRTC_KEY, DEFAULT_CFG, DEFAULT_ENABLE.booleanValue());
            extractValue(getFieldParser());
            if (isEnable()) {
                GetParameters(AUDIO_CAPTURE, this.mAudioCapture, aVDelayParameters.mAudioCaptureParameters);
                GetParameters(AUDIO_ENCODE, this.mAudioEncode, aVDelayParameters.mAudioEncodeParameters);
                GetParameters(AUDIO_DECODE, this.mAudioDecode, aVDelayParameters.mAudioDecodeParameters);
                GetParameters(AUDIO_PLAY, this.mAudioPlay, aVDelayParameters.mAudioPlayParameters);
                GetParameters(VIDEO_CAPTURE, this.mVideoCapture, aVDelayParameters.mVideoCaptureParameters);
                GetParameters(VIDEO_ENCODE, this.mVideoEncode, aVDelayParameters.mVideoEncodeParameters);
                GetParameters(VIDEO_DECODE, this.mVideoDecode, aVDelayParameters.mVideoDecodeParameters);
                GetParameters(VIDEO_PLAY, this.mVideoPlay, aVDelayParameters.mVideoPlayParameters);
                GetParameters(NET_LOSS, this.mNetLoss, aVDelayParameters.mNetLossParameters);
                GetParameters(NET_JITTER, this.mNetJitter, aVDelayParameters.mNetJitterParameters);
            }
            aVDelayParameters.enable = isEnable();
            String str2 = this.mDebugLog;
            if (str2 != null && !str2.isEmpty() && Integer.parseInt(this.mDebugLog) == 1) {
                aVDelayParameters.isDebugLog = true;
                Logging.d(TAG, "isDebugLog parseAVDelayCloudConfig:" + aVDelayParameters.isDebugLog);
            }
            String str3 = this.mCapToDecoded;
            if (str3 != null && !str3.isEmpty()) {
                aVDelayParameters.videoFromCapToDecodedThreshold = Integer.parseInt(this.mCapToDecoded);
                Logging.d(TAG, "videoFromCapToDecodedThreshold parseAVDelayCloudConfig:" + aVDelayParameters.videoFromCapToDecodedThreshold);
            }
            Logging.d(TAG, "hm_rtc_av_delay_sdk is:" + aVDelayParameters.enable);
        } catch (Exception e10) {
            setEnable(false);
            Logging.w(TAG, "because of crashed:" + e10.toString());
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "hm_rtc_av_delay_sdk: parse Exception:" + e10.toString());
        }
    }
}
