package org.webrtc.haima;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.Iterator;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONArray;
import org.json.JSONObject;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcSdkDebugCfg extends HmRtcSdkCloudCfg {
    private static final String FIELD_DEBUG_CACHE_MAXBYTES = "debug_cache_size";
    private static final String FIELD_DEBUG_FUNC_LIST = "debug_func_list";
    private static final String FIELD_DEBUG_TAG_LIST = "debug_tag_list";
    private static final String FIELD_DEBUG_UID_LIST = "debug_uid_list";
    private static final String FIELD_DEBUG_UPLOAD_INTERVAL = "debug_upload_interval";
    public static final long LOG_CACHE_MAXBYTES = 32768;
    public static final long LOG_CACHE_MAXBYTES_MAX = 262144;
    public static final long LOG_CACHE_MAXBYTES_MIN = 4096;
    public static final long LOG_UPLOAD_INTERVAL = 5000;
    public static final long LOG_UPLOAD_INTERVAL_MAX = 15000;
    private static final String TAG = "HmRtcSdkDebugCfg";
    private static HashMap<String, String> mDebugFuncMap;
    private static String[] mDebugTagList;
    private String mBlackListStr;
    private String mCidTailNumStr;
    private int mDebugLogLevel;
    private String mDebugLogPath;
    private String mDebugUidList;
    private boolean mEnableDebugMode;
    private boolean mEnableLogcatOutput;
    private boolean mEnableSingleThread;
    private long mMaxBytes;
    private String mModelListStr;
    private long mUploadInterval;
    private String mUserId;
    private String mVersionListStr;
    private String mWhiteListStr;

    public HmRtcSdkDebugCfg(String str, String str2) {
        super(true);
        this.mMaxBytes = 32768L;
        this.mUploadInterval = 5000L;
        this.mEnableDebugMode = true;
        this.mDebugLogLevel = 1;
        this.mDebugLogPath = "";
        extractDebugValue(str);
        this.mUserId = str2;
        if (!isSupported(this.mWhiteListStr, this.mBlackListStr, this.mVersionListStr, this.mModelListStr) || !checkUserId(this.mDebugUidList, this.mUserId)) {
            setEnable(false);
            Logging.i(TAG, "HMConf disable the config! " + ToString());
            return;
        }
        if (isEnable()) {
            Logging.i(TAG, "HMConf enable the config! " + ToString());
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_DEBUG_MODE, str2);
        }
    }

    private boolean checkUserId(String str, String str2) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG)) != null && strArrSplit.length != 0) {
            for (String str3 : strArrSplit) {
                if (userIdMatch(str3, str2)) {
                    return true;
                }
            }
            Logging.d(TAG, "userId is not matched");
        }
        return false;
    }

    private void extractDebugValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashMap<String, String> map = new HashMap<>();
        mDebugFuncMap = map;
        HashMap<String, String> mapFromString = parseMapFromString(str, map);
        if (mapFromString == null) {
            return;
        }
        this.mWhiteListStr = mapFromString.get("white_list");
        this.mBlackListStr = mapFromString.get("black_list");
        this.mVersionListStr = mapFromString.get("os_ver_list");
        this.mModelListStr = mapFromString.get("model_list");
        this.mCidTailNumStr = mapFromString.get("cid_tail_num");
        this.mDebugUidList = mapFromString.get(FIELD_DEBUG_UID_LIST);
        mDebugTagList = parseDebugTagList(mapFromString.get(FIELD_DEBUG_TAG_LIST));
        if (!TextUtils.isEmpty(mapFromString.get(FIELD_DEBUG_CACHE_MAXBYTES))) {
            try {
                long jLongValue = Long.valueOf(mapFromString.get(FIELD_DEBUG_CACHE_MAXBYTES)).longValue();
                this.mMaxBytes = jLongValue;
                if (jLongValue < 4096) {
                    this.mMaxBytes = 4096L;
                } else if (jLongValue > 262144) {
                    this.mMaxBytes = 262144L;
                }
            } catch (Exception e10) {
                Logging.e(TAG, "fatal error, msg: " + e10);
            }
        }
        if (TextUtils.isEmpty(mapFromString.get(FIELD_DEBUG_UPLOAD_INTERVAL))) {
            return;
        }
        try {
            long jLongValue2 = Long.valueOf(mapFromString.get(FIELD_DEBUG_UPLOAD_INTERVAL)).longValue();
            this.mUploadInterval = jLongValue2;
            if (jLongValue2 < 5000) {
                this.mUploadInterval = 5000L;
            } else if (jLongValue2 > 15000) {
                this.mUploadInterval = 15000L;
            }
        } catch (Exception e11) {
            Logging.e(TAG, "fatal error, msg: " + e11);
        }
    }

    public static String[] getDebugTagList() {
        return mDebugTagList;
    }

    private void parseDebugFuncMap(JSONObject jSONObject, String str, HashMap<String, String> map) {
        if (TextUtils.isEmpty(str) || map == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i10);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, String.valueOf(jSONObject2.get(next)));
                }
            }
        } catch (Exception e10) {
            Logging.e(TAG, "fatal error, parse debug config failed: " + e10);
        }
    }

    private String[] parseDebugTagList(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str) || (strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG)) == null || strArrSplit.length == 0) {
            return null;
        }
        return strArrSplit;
    }

    private HashMap<String, String> parseMapFromString(String str, HashMap<String, String> map) {
        Logging.d(TAG, "parseMapFromString: " + str);
        if (!TextUtils.isEmpty(str) && map != null) {
            HashMap<String, String> map2 = new HashMap<>();
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next.equals(FIELD_DEBUG_FUNC_LIST)) {
                        parseDebugFuncMap(jSONObject, FIELD_DEBUG_FUNC_LIST, map);
                    } else {
                        map2.put(next, String.valueOf(jSONObject.get(next)));
                    }
                }
                return map2;
            } catch (Exception unused) {
                Logging.e(TAG, "13339parse exception.");
            }
        }
        return null;
    }

    private boolean userIdMatch(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str2.equals(str)) ? false : true;
    }

    public int getDebugLogLevel() {
        return this.mDebugLogLevel;
    }

    public String getDebugLogPath() {
        return this.mDebugLogPath;
    }

    public long getMaxBytes() {
        return this.mMaxBytes;
    }

    public long getUploadInterval() {
        return this.mUploadInterval;
    }

    public boolean isEnableDebugMode() {
        return this.mEnableDebugMode;
    }

    public boolean isEnableLogcatOutput() {
        return this.mEnableLogcatOutput;
    }

    public boolean isEnableSingleThread() {
        return this.mEnableSingleThread;
    }

    public void rebuildRtcCfgParam(HashMap<String, String> map) {
        HashMap<String, String> map2 = mDebugFuncMap;
        if (map2 == null || map2.size() <= 0 || map == null) {
            Logging.d(TAG, "debug func is null");
            return;
        }
        for (String str : mDebugFuncMap.keySet()) {
            map.put(str, mDebugFuncMap.get(str));
        }
    }
}
