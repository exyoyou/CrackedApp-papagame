package org.webrtc.haima;

import android.os.Build;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.utils.FiledStringParser;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcSdkCloudCfg extends HMRTConfig {
    private static final String DEBUG_LOG = "debug_log";
    private static final String DEFAULT_CFG = "enable:0";
    private static final Boolean DEFAULT_ENABLE = Boolean.FALSE;
    protected static final String FIELD_BLACK_LIST = "black_list";
    protected static final String FIELD_CID_TAIL_NUM = "cid_tail_num";
    protected static final String FIELD_MODEL_LIST = "model_list";
    protected static final String FIELD_VERSION_LIST = "os_ver_list";
    protected static final String FIELD_WHITE_LIST = "white_list";
    private static final String HMRTC_KEY = "HmRtcSdkCloudCfg";
    private static final String TAG = "HmRtcSdkCloudCfg";
    private boolean isDebugLog;
    private String key;
    private String mBlackList;
    private String mCidTailNum;
    private String mModelList;
    private String mVersionList;
    private String mWhiteList;

    public HmRtcSdkCloudCfg(boolean z10) {
        super(z10);
    }

    private boolean brandMatch(String str, String str2) {
        if (str != null && str2 != null) {
            if (str.equalsIgnoreCase("?")) {
                Logging.d("HmRtcSdkCloudCfg", "branch is fuzzy matched");
                return true;
            }
            if (str2.equalsIgnoreCase(str)) {
                Logging.d("HmRtcSdkCloudCfg", "branch is precise matched");
                return true;
            }
        }
        return false;
    }

    private int checkDeviceList(String str, String str2) {
        String[] strArrSplit;
        boolean zBrandMatch;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG)) != null && strArrSplit.length != 0) {
            Logging.i("HmRtcSdkCloudCfg", "HMConf checkDeviceList " + str2);
            String str3 = Build.BRAND;
            String str4 = Build.MODEL;
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                String osVersion = getOsVersion();
                Logging.i("HmRtcSdkCloudCfg", "local device OS: " + osVersion + ",branch: " + str3 + ",model: " + str4);
                boolean z10 = false;
                for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                    int iIndexOf = strArrSplit[i10].indexOf("-");
                    Logging.d("HmRtcSdkCloudCfg", "pos:" + iIndexOf);
                    if (iIndexOf < 1) {
                        Logging.d("HmRtcSdkCloudCfg", "@@@ can not find Separator between OS and Brand");
                        if (!z10) {
                            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ": checkDeviceList pos < 1:" + strArrSplit[i10]);
                            z10 = true;
                        }
                    } else {
                        int iIndexOf2 = strArrSplit[i10].indexOf(com.join.mgps.Util.o0.f49827a);
                        Logging.d("HmRtcSdkCloudCfg", "pos1:" + iIndexOf2);
                        if (iIndexOf2 < 1) {
                            Logging.d("HmRtcSdkCloudCfg", "@@@ can not find Separator between Brand and Model");
                            if (!z10) {
                                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ": checkDeviceList pos1 < 1:" + strArrSplit[i10]);
                                z10 = true;
                            }
                        } else {
                            int i11 = iIndexOf + 1;
                            if (iIndexOf2 <= i11) {
                                Logging.d("HmRtcSdkCloudCfg", "@@@ OS,Brand and Model sequence is error");
                                if (!z10) {
                                    RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ": checkDeviceList pos1 <= pos + 1:" + strArrSplit[i10]);
                                    z10 = true;
                                }
                            } else {
                                String strSubstring = strArrSplit[i10].substring(0, iIndexOf);
                                String strSubstring2 = strArrSplit[i10].substring(i11, iIndexOf2);
                                String str5 = strArrSplit[i10];
                                String strSubstring3 = str5.substring(iIndexOf2 + 1, str5.length());
                                boolean zOsMatch = osMatch(strSubstring, osVersion);
                                if (zOsMatch && (zBrandMatch = brandMatch(strSubstring2, str3))) {
                                    boolean zModelMatch = modelMatch(strSubstring3, str4);
                                    if (zOsMatch && zBrandMatch && zModelMatch) {
                                        Logging.d("HmRtcSdkCloudCfg", "os,model and branch is matched");
                                        return 1;
                                    }
                                }
                            }
                        }
                    }
                }
                Logging.d("HmRtcSdkCloudCfg", "os,model and branch is not matched");
                return 0;
            }
        }
        return -1;
    }

    private int checkModel(String str) {
        String[] strArrSplit;
        String str2 = Build.MODEL;
        String str3 = Build.BRAND;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HMConf checkModel:");
        sb2.append(str2 != null ? str2 : "null");
        sb2.append(com.join.mgps.Util.o0.f49827a);
        sb2.append(str3 != null ? str3 : "null");
        Logging.i("HmRtcSdkCloudCfg", sb2.toString());
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str) || (strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG)) == null) {
            return -1;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            int iIndexOf = strArrSplit[i10].indexOf(com.join.mgps.Util.o0.f49827a);
            if (iIndexOf < 1) {
                Logging.d("HmRtcSdkCloudCfg", "cloudBrandModel:" + strArrSplit[i10]);
                if (!z10) {
                    RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ": BrandModel err:" + strArrSplit[i10]);
                    z10 = true;
                }
            } else {
                String strSubstring = strArrSplit[i10].substring(0, iIndexOf);
                String str4 = strArrSplit[i10];
                String strSubstring2 = str4.substring(iIndexOf + 1, str4.length());
                Logging.d("HmRtcSdkCloudCfg", "config brand:" + strSubstring + ",model:" + strSubstring2);
                boolean zBrandMatch = brandMatch(strSubstring, str3);
                if (zBrandMatch) {
                    boolean zModelMatch = modelMatch(strSubstring2, str2);
                    if (zBrandMatch && zModelMatch) {
                        Logging.d("HmRtcSdkCloudCfg", "model and branch is matched");
                        return 1;
                    }
                } else {
                    continue;
                }
            }
        }
        Logging.d("HmRtcSdkCloudCfg", "model and branch is not matched");
        return 0;
    }

    private int checkOsVersion(String str) {
        String[] strArrSplit;
        String osVersion = getOsVersion();
        Logging.i("HmRtcSdkCloudCfg", "HMConf checkOsVersion ver=" + osVersion);
        if (TextUtils.isEmpty(osVersion) || TextUtils.isEmpty(str) || (strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG)) == null) {
            return -1;
        }
        for (String str2 : strArrSplit) {
            if (osMatch(str2, osVersion)) {
                return 1;
            }
        }
        Logging.d("HmRtcSdkCloudCfg", "OS Version is not matched");
        return 0;
    }

    private void extractValue(FiledStringParser filedStringParser) {
        this.mVersionList = this.mParser.getStringValue(FIELD_VERSION_LIST, "");
        this.mModelList = this.mParser.getStringValue(FIELD_MODEL_LIST, "");
        this.mWhiteList = this.mParser.getStringValue(FIELD_WHITE_LIST, "");
        this.mBlackList = this.mParser.getStringValue(FIELD_BLACK_LIST, "");
        this.mCidTailNum = this.mParser.getStringValue(FIELD_CID_TAIL_NUM, "");
    }

    public static String getHMRTCName() {
        return "HmRtcSdkCloudCfg";
    }

    private String getOsVersion() {
        String str = Build.VERSION.RELEASE;
        try {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit != null && strArrSplit.length > 1) {
                str = strArrSplit[0];
            }
        } catch (Exception unused) {
        }
        return "andr" + str;
    }

    private boolean modelMatch(String str, String str2) {
        boolean z10;
        if (str != null && str2 != null) {
            int iIndexOf = str.indexOf("?");
            if (iIndexOf < 0) {
                Logging.d("HmRtcSdkCloudCfg", "model is precise");
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                String strSubstring = str.substring(0, iIndexOf);
                Logging.d("HmRtcSdkCloudCfg", "fuzzyModel:" + strSubstring);
                if (str2.toLowerCase().startsWith(strSubstring.toLowerCase())) {
                    Logging.d("HmRtcSdkCloudCfg", "model is matched fuzzy");
                    return true;
                }
            } else if (str2.equalsIgnoreCase(str)) {
                Logging.d("HmRtcSdkCloudCfg", "model is matched precise");
                return true;
            }
        }
        return false;
    }

    private boolean osMatch(String str, String str2) {
        boolean z10;
        if (str != null && str2 != null) {
            int iIndexOf = str.indexOf("?");
            if (iIndexOf < 0) {
                Logging.d("HmRtcSdkCloudCfg", "osVersion is precise");
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                String strSubstring = str.substring(0, iIndexOf);
                Logging.d("HmRtcSdkCloudCfg", "fuzzyOsVersion:" + strSubstring);
                if (str2.toLowerCase().startsWith(strSubstring.toLowerCase())) {
                    Logging.d("HmRtcSdkCloudCfg", "OS Version is matched fuzzy");
                    return true;
                }
            } else if (str2.equalsIgnoreCase(str)) {
                Logging.d("HmRtcSdkCloudCfg", "OS Version is matched precise");
                return true;
            }
        }
        return false;
    }

    @Override // org.webrtc.haima.HMRTConfig
    public String ToString() {
        String strToString = super.ToString();
        if (!TextUtils.isEmpty(this.mVersionList)) {
            strToString = strToString + ",os_ver_list:" + this.mVersionList;
        }
        if (!TextUtils.isEmpty(this.mModelList)) {
            strToString = strToString + ",model_list:" + this.mModelList;
        }
        if (!TextUtils.isEmpty(this.mWhiteList)) {
            strToString = strToString + ",white_list:" + this.mWhiteList;
        }
        if (!TextUtils.isEmpty(this.mBlackList)) {
            strToString = strToString + ",black_list:" + this.mBlackList;
        }
        if (TextUtils.isEmpty(this.mCidTailNum)) {
            return strToString;
        }
        return strToString + ",cid_tail_num:" + this.mCidTailNum;
    }

    public boolean checkCID(String str, String str2) {
        int i10;
        Logging.d("HmRtcSdkCloudCfg", "HMConf checkCID cid:" + str);
        Logging.d("HmRtcSdkCloudCfg", "HMConf checkCID cidTailNumString:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            String[] strArrSplit = str2.split("-");
            if (strArrSplit != null && strArrSplit.length != 2) {
                Logging.d("HmRtcSdkCloudCfg", "HMConf checkCID cidRange format err!");
                return true;
            }
            int i11 = Integer.parseInt(strArrSplit[0]);
            int i12 = Integer.parseInt(strArrSplit[1]);
            long j10 = Long.parseLong(str);
            return j10 > 0 && (i10 = (int) (j10 % 100)) >= i11 && i10 < i12;
        } catch (Exception e10) {
            Logging.d("HmRtcSdkCloudCfg", "HMConf checkCID err:" + e10.toString());
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ":HMConf checkCID err:" + e10.toString());
        }
    }

    public void checkCIDWithTailNum(String str) {
        if (this.mCidTailNum == null || !isEnable() || checkCID(str, this.mCidTailNum)) {
            return;
        }
        Logging.d("HmRtcSdkCloudCfg", "cloudId:" + str + " is not allowed to use");
        setEnable(false);
    }

    public String getCidTailNum() {
        return this.mCidTailNum;
    }

    public boolean isEnableDebugLog() {
        return this.isDebugLog;
    }

    protected boolean isSupported(String str, String str2, String str3, String str4) {
        int iCheckDeviceList = checkDeviceList(str, "white");
        if (iCheckDeviceList == 1) {
            return true;
        }
        if (checkDeviceList(str2, "black") == 1) {
            return false;
        }
        int iCheckOsVersion = checkOsVersion(str3);
        int iCheckModel = checkModel(str4);
        if (iCheckOsVersion < 0 && iCheckModel < 0) {
            return iCheckDeviceList != 0;
        }
        if (iCheckOsVersion >= 0 && iCheckModel < 0) {
            return iCheckOsVersion != 0;
        }
        if (iCheckOsVersion >= 0 || iCheckModel < 0) {
            return iCheckOsVersion > 0 || iCheckModel > 0;
        }
        return iCheckModel != 0;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HmRtcSdkCloudCfg(String str, String str2, String str3) {
        Boolean bool = DEFAULT_ENABLE;
        super(bool.booleanValue());
        this.key = str;
        try {
            loadData(str2, "HmRtcSdkCloudCfg", DEFAULT_CFG, bool.booleanValue());
            extractValue(getFieldParser());
            this.isDebugLog = this.mParser.getBoolValue(DEBUG_LOG, false);
            if (isEnable() && isSupported(this.mWhiteList, this.mBlackList, this.mVersionList, this.mModelList)) {
                Logging.i("HmRtcSdkCloudCfg", "HMConf enable the config! " + ToString());
            } else {
                setEnable(false);
                Logging.i("HmRtcSdkCloudCfg", "HMConf disable the config! " + ToString());
            }
            if (str3.isEmpty()) {
                return;
            }
            checkCIDWithTailNum(str3);
        } catch (Exception e10) {
            setEnable(false);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, this.key + ": parse Exception:" + e10.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("because of crashed:");
            sb2.append(e10.toString());
            Logging.i("HmRtcSdkCloudCfg", sb2.toString());
        }
    }
}
