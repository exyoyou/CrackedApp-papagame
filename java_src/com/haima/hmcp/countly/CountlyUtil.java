package com.haima.hmcp.countly;

import android.content.Context;
import android.text.TextUtils;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import com.join.mgps.Util.o0;
import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;
import org.webrtc.haima.countly.HmCountlyCallback;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes5.dex */
public class CountlyUtil {
    private static final String TAG = "CountlyUtil";
    private static boolean allowCache = true;
    public static String appChannel = null;
    private static CountlyDiskPolicy<CountlyDBInfo> countlyDiskPolicy = null;
    public static HttpCountly httpCountly = null;
    public static String mAccessKey = null;
    public static String mChannelId = null;
    public static String mCloudID = null;
    private static Context mContext = null;
    public static String mDeviceID = null;
    public static String mExtraId = null;
    public static String mLastCloudID = null;
    public static String mNetStatus = null;
    public static String mNetworkType = null;
    public static String mRegisterAccessKey = null;
    public static String mResolutionID = null;
    public static int mSEQ = 0;
    public static String mServerTimestamp = null;
    public static boolean mStart = false;
    public static String mTransid = null;
    public static String mUID = null;
    public static String pkgName = null;
    public static String processName = null;
    private static volatile boolean sIsReport = true;
    private static ConcurrentLinkedQueue<Map> eventQueue = new ConcurrentLinkedQueue<>();
    static ExecutorService executorService = Executors.newSingleThreadExecutor();
    public static boolean isCheckErrorCode = false;

    private static void clearCache() {
        eventQueue.clear();
    }

    public static void closeCache() {
        allowCache = false;
        clearCache();
    }

    static void deleteDiskCacheEvent(final ConcurrentLinkedQueue<Map> concurrentLinkedQueue) {
        executorService.submit(new Runnable() { // from class: com.haima.hmcp.countly.CountlyUtil.3
            @Override // java.lang.Runnable
            public void run() {
                ConcurrentLinkedQueue<Map> concurrentLinkedQueue2;
                if (CountlyUtil.mContext == null || (concurrentLinkedQueue2 = concurrentLinkedQueue) == null) {
                    return;
                }
                for (Map map : concurrentLinkedQueue2) {
                    if (map != null) {
                        CountlyDBInfo countlyDBInfo = new CountlyDBInfo();
                        countlyDBInfo.eventId = (String) map.get("eventID");
                        countlyDBInfo.timeStamp = (String) map.get(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP);
                        LogUtils.i(CountlyUtil.TAG, "===delete timeStamp==" + countlyDBInfo.timeStamp + "===delete===" + countlyDBInfo.eventId);
                        CountlyUtil.countlyDiskPolicy.deleteDiskCacheEvent(countlyDBInfo);
                    }
                }
            }
        });
    }

    private static JSONObject getExtension() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(Constants.SDK_VERSION)) {
                jSONObject.put("sdkVersion", Constants.SDK_VERSION);
            }
            if (!TextUtils.isEmpty(pkgName)) {
                jSONObject.put("pkgName", pkgName);
            }
            if (!TextUtils.isEmpty(appChannel)) {
                jSONObject.put("appChannel", appChannel);
            }
            if (!TextUtils.isEmpty("3.0.2.8.5396d74.12041040")) {
                jSONObject.put("webrtcSdkVersion", "3.0.2.8.5396d74.12041040");
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, e10.getMessage());
        }
        return jSONObject;
    }

    public static void init(Context context, String str, String str2) {
        LogUtils.i(TAG, "==init===" + str);
        try {
            if (!mStart && context != null && str != null && str2 != null) {
                httpCountly = new HttpCountly(context, str, str2);
                boolean z10 = true;
                mStart = true;
                mContext = context.getApplicationContext();
                if (HmcpManager.getInstance().getDataReportStatus(context) != 1) {
                    z10 = false;
                }
                sIsReport = z10;
                if (sIsReport) {
                    sendCacheEvent();
                    sendDiskEvent();
                    CountlyResendFailEventsManager.getInstance().startResend();
                    try {
                        RtcCountlyUtil.init(new HmCountlyCallback() { // from class: com.haima.hmcp.countly.CountlyUtil.1
                            @Override // org.webrtc.haima.countly.HmCountlyCallback
                            public void callBackToSaasSDK(String str3, String str4, long j10) {
                                CountlyUtil.recordEvent(str3, str4, j10);
                            }
                        });
                    } catch (ClassNotFoundException e10) {
                        LogUtils.e(TAG, e10.toString());
                        recordErrorEvent("load HmCountlyCallback failure: ClassNotFoundException");
                    }
                } else {
                    stopDataReportAndClearCache();
                }
            }
        } catch (Exception e11) {
            LogUtils.e(TAG, e11.toString());
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean isCacheEvent(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case 46730194:
                if (str.equals(Constants.COUNTYLY_CLOUD_PLAY_IS_RUN)) {
                    b10 = 0;
                }
                break;
            case 46730224:
                if (str.equals(Constants.COUNTYLY_CONNECT_INPUT_WS_SUCCESS)) {
                    b10 = 1;
                }
                break;
            case 46730225:
                if (str.equals(Constants.COUNTYLY_CONNECT_INPUT_WS_FAIL)) {
                    b10 = 2;
                }
                break;
            case 46730263:
                if (str.equals(Constants.COUNTYLY_USER_ENQUEUE_NO)) {
                    b10 = 3;
                }
                break;
            case 46789775:
                if (str.equals("12011")) {
                    b10 = 4;
                }
                break;
            case 46789776:
                if (str.equals("12012")) {
                    b10 = 5;
                }
                break;
            case 46789777:
                if (str.equals(Constants.COUNTYLY_SWITCH_SCENE_AUTO_FAIL)) {
                    b10 = 6;
                }
                break;
            case 46789778:
                if (str.equals(Constants.COUNTYLY_SWITCH_SCENE_MANUAL)) {
                    b10 = 7;
                }
                break;
            case 46789779:
                if (str.equals(Constants.COUNTYLY_SWITCH_SCENE_MANUAL_SUCCESS)) {
                    b10 = 8;
                }
                break;
            case 46789780:
                if (str.equals(Constants.COUNTYLY_SWITCH_SCENE_MANUAL_FAIL)) {
                    b10 = 9;
                }
                break;
            case 46789781:
                if (str.equals(Constants.COUNTYLY_NETWORK_WIFI_TO_MOBILE)) {
                    b10 = 10;
                }
                break;
            case 46789782:
                if (str.equals(Constants.COUNTYLY_NETWORK_MOBILE_TO_WIFI)) {
                    b10 = 11;
                }
                break;
            case 46789783:
                if (str.equals(Constants.COUNTYLY_USER_CHOOSE_CONTINUE)) {
                    b10 = 12;
                }
                break;
            case 46789805:
                if (str.equals("12020")) {
                    b10 = 13;
                }
                break;
            case 46789806:
                if (str.equals(Constants.COUNTYLY_FLOWER_LOADING_FAIL)) {
                    b10 = 14;
                }
                break;
            case 46789809:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_LOADING_START)) {
                    b10 = 15;
                }
                break;
            case 46789810:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_LOADING_SUCCESS)) {
                    b10 = 16;
                }
                break;
            case 46789811:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_LOADING_FAIL)) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 46789812:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_PLAY_START)) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 46789813:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_PLAY_SUCCESS)) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 46789814:
                if (str.equals(Constants.COUNTYLY_VIDEO_TITLE_PLAY_FAIL)) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case 46789836:
                if (str.equals(Constants.COUNTYLY_TESTING_NETWORK_SPEED_START)) {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
            case 46789837:
                if (str.equals(Constants.COUNTYLY_TESTING_NETWORK_SPEED_COMPLETE)) {
                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                }
                break;
            case 46789838:
                if (str.equals(Constants.COUNTYLY_TESTING_NETWORK_SPEED_FAIL)) {
                    b10 = BinaryMemcacheOpcodes.QUITQ;
                }
                break;
            case 46789839:
                if (str.equals(Constants.COUNTYLY_AUDIO_STREAM_CONNECT_SUCCESS)) {
                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                }
                break;
            case 46789840:
                if (str.equals(Constants.COUNTYLY_VIDEO_STREAM_CONNECT_SUCCESS)) {
                    b10 = BinaryMemcacheOpcodes.APPENDQ;
                }
                break;
            case 46789841:
                if (str.equals(Constants.COUNTYLY_AUDIO_STREAM_CONNECT_FAIL)) {
                    b10 = 26;
                }
                break;
            case 46789842:
                if (str.equals(Constants.COUNTYLY_VIDEO_STREAM_CONNECT_FAIL)) {
                    b10 = 27;
                }
                break;
            case 46789845:
                if (str.equals(Constants.COUNTLY_FRAME_CURRENT_BITRATE)) {
                    b10 = BinaryMemcacheOpcodes.TOUCH;
                }
                break;
            case 46789867:
                if (str.equals(Constants.COUNTLY_APP_FOREGROUND)) {
                    b10 = BinaryMemcacheOpcodes.GAT;
                }
                break;
            case 46789868:
                if (str.equals(Constants.COUNTLY_APP_BACKGROUND)) {
                    b10 = BinaryMemcacheOpcodes.GATQ;
                }
                break;
            case 46789871:
                if (str.equals(Constants.COUNTLY_GET_STREAM_URL)) {
                    b10 = 31;
                }
                break;
            case 46789872:
                if (str.equals("12045")) {
                    b10 = 32;
                }
                break;
            case 46789873:
                if (str.equals(Constants.COUNTLY_DELAY_LESS_MINIMUM)) {
                    b10 = BinaryMemcacheOpcodes.SASL_AUTH;
                }
                break;
            case 46789876:
                if (str.equals(Constants.COUNTYLY_CONNECT_INPUT_WS_DISCONNECT)) {
                    b10 = 34;
                }
                break;
            case 46789898:
                if (str.equals(Constants.COUNTLY_CONNECT_SAAS_WS_DISCONNECT)) {
                    b10 = BinaryMemcacheOpcodes.GATK;
                }
                break;
            case 46789901:
                if (str.equals(Constants.COUNTYLY_STOP_GAME)) {
                    b10 = BinaryMemcacheOpcodes.GATKQ;
                }
                break;
            case 46789902:
                if (str.equals(Constants.COUNTYLY_SAAS_WS_MESSAGE)) {
                    b10 = 37;
                }
                break;
            case 46789903:
                if (str.equals(Constants.COUNTYLY_4G)) {
                    b10 = 38;
                }
                break;
            case 46789906:
                if (str.equals(Constants.COUNTLY_SDK_INIT_CALL)) {
                    b10 = 39;
                }
                break;
            case 46789929:
                if (str.equals(Constants.COUNTLY_NEED_UNZIP_LIB)) {
                    b10 = 40;
                }
                break;
            case 46789930:
                if (str.equals(Constants.COUNTLY_UNZIP_LIB_RESULT)) {
                    b10 = 41;
                }
                break;
            case 46789931:
                if (str.equals(Constants.COUNTLY_LOAD_LIB_RESULT)) {
                    b10 = 42;
                }
                break;
            case 46789932:
                if (str.equals(Constants.COUNTLY_GET_DID)) {
                    b10 = 43;
                }
                break;
            case 46789933:
                if (str.equals(Constants.COUNTLY_COPY_LIB_RESULT)) {
                    b10 = HttpConstants.COMMA;
                }
                break;
            case 46789934:
                if (str.equals(Constants.COUNTLY_NEED_COPY_LIB)) {
                    b10 = 45;
                }
                break;
            case 46789935:
                if (str.equals(Constants.COUNTLY_SDK_INIT_FAILED)) {
                    b10 = 46;
                }
                break;
            case 46789962:
                if (str.equals(Constants.COUNTLY_GET_CID_SUCCESS)) {
                    b10 = 47;
                }
                break;
            case 46789963:
                if (str.equals(Constants.COUNTLY_GET_CID_FAIL)) {
                    b10 = e.H;
                }
                break;
            case 46789964:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_SUCCESS)) {
                    b10 = e.I;
                }
                break;
            case 46789965:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL)) {
                    b10 = e.J;
                }
                break;
            case 46789966:
                if (str.equals(Constants.COUNTYLY_STOP_CLOUD_SERVER_SUCCESS)) {
                    b10 = e.K;
                }
                break;
            case 46789967:
                if (str.equals(Constants.COUNTYLY_STOP_CLOUD_SERVER_FAIL)) {
                    b10 = e.L;
                }
                break;
            case 46789968:
                if (str.equals(Constants.COUNTLY_GET_DID_SUCCESS)) {
                    b10 = e.M;
                }
                break;
            case 46789969:
                if (str.equals(Constants.COUNTLY_GET_DID_FAILED)) {
                    b10 = e.N;
                }
                break;
            case 46789991:
                if (str.equals(Constants.COUNTLY_GET_CONFIG_SUCCESS)) {
                    b10 = e.O;
                }
                break;
            case 46789992:
                if (str.equals(Constants.COUNTLY_GET_CONFIG_FAIL)) {
                    b10 = 56;
                }
                break;
            case 46789993:
                if (str.equals(Constants.COUNTLY_GET_CID)) {
                    b10 = 57;
                }
                break;
            case 46789994:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE)) {
                    b10 = HttpConstants.COLON;
                }
                break;
            case 46789995:
                if (str.equals(Constants.COUNTLY_GET_CONFIG)) {
                    b10 = HttpConstants.SEMICOLON;
                }
                break;
            case 46789996:
                if (str.equals(Constants.COUNTLY_CONNECT_INPUT_WS)) {
                    b10 = 60;
                }
                break;
            case 46789997:
                if (str.equals(Constants.COUNTYLY_CONNECT_AUDIO_STREAM)) {
                    b10 = 61;
                }
                break;
            case 46789998:
                if (str.equals(Constants.COUNTYLY_CONNECT_VIDEO_STREAM)) {
                    b10 = 62;
                }
                break;
            case 46789999:
                if (str.equals(Constants.COUNTLY_CONNECT_SAAS_WS)) {
                    b10 = Utf8.REPLACEMENT_BYTE;
                }
                break;
            case 46790000:
                if (str.equals(Constants.COUNTLY_CONNECT_SAAS_WS_SUCCESS)) {
                    b10 = 64;
                }
                break;
            case 46790022:
                if (str.equals(Constants.COUNTLY_CONNECT_SAAS_WS_FAIL)) {
                    b10 = 65;
                }
                break;
            case 46790023:
                if (str.equals(Constants.COUNTYLY_STOP_CLOUD_SERVER)) {
                    b10 = 66;
                }
                break;
            case 46790025:
                if (str.equals(Constants.COUNTLY_GET_RESERVED_INSTANCE)) {
                    b10 = 67;
                }
                break;
            case 46790026:
                if (str.equals(Constants.COUNTLY_GET_RESERVED_INSTANCE_SUCCESS)) {
                    b10 = 68;
                }
                break;
            case 46790027:
                if (str.equals(Constants.COUNTLY_GET_RESERVED_INSTANCE_FAIL)) {
                    b10 = 69;
                }
                break;
            case 46790766:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V2)) {
                    b10 = 70;
                }
                break;
            case 46790767:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_SUCCESS)) {
                    b10 = 71;
                }
                break;
            case 46790768:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL)) {
                    b10 = 72;
                }
                break;
            case 46790770:
                if (str.equals(Constants.COUNTLY_CHANGE_RQUEST_URL)) {
                    b10 = 73;
                }
                break;
            case 46790801:
                if (str.equals(Constants.COUNTLY_GET_EXTRA_CONFIG)) {
                    b10 = 74;
                }
                break;
            case 46790802:
                if (str.equals(Constants.COUNTLY_GET_EXTRA_CONFIG_SUCCESS)) {
                    b10 = 75;
                }
                break;
            case 46790803:
                if (str.equals(Constants.COUNTLY_GET_EXTRA_CONFIG_FAIL)) {
                    b10 = e.P;
                }
                break;
            case 46790989:
                if (str.equals(Constants.COUNTLY_GET_PLAYING_CID_STATUS)) {
                    b10 = 77;
                }
                break;
            case 46790990:
                if (str.equals(Constants.COUNTLY_GET_PLAYING_CID_STATUS_SUCCESS)) {
                    b10 = 78;
                }
                break;
            case 46790991:
                if (str.equals(Constants.COUNTLY_GET_PLAYING_CID_STATUS_FAIL)) {
                    b10 = 79;
                }
                break;
            case 46791665:
                if (str.equals("12200")) {
                    b10 = 80;
                }
                break;
            case 46791758:
                if (str.equals("12230")) {
                    b10 = 81;
                }
                break;
            case 46791760:
                if (str.equals(Constants.COUNTYLY_GET_SERVICE_ARG_FAIL)) {
                    b10 = 82;
                }
                break;
            case 46791761:
                if (str.equals(Constants.COUNTYLY_CONFIG_ARG_FAIL)) {
                    b10 = e.Q;
                }
                break;
            case 46791763:
                if (str.equals(Constants.COUNTYLY_RESOLUTION_LIST_NUlL)) {
                    b10 = 84;
                }
                break;
            case 46795578:
                if (str.equals(Constants.COUNTLY_REMOTE_VIDEO_RECORD)) {
                    b10 = 85;
                }
                break;
            case 46795602:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS)) {
                    b10 = 86;
                }
                break;
            case 46795603:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD)) {
                    b10 = 87;
                }
                break;
            case 46795604:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_START)) {
                    b10 = e.S;
                }
                break;
            case 46795605:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_FILE)) {
                    b10 = 89;
                }
                break;
            case 46795606:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE)) {
                    b10 = 90;
                }
                break;
            case 46795607:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_CANCEL)) {
                    b10 = 91;
                }
                break;
            case 46795608:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_TIME_UP)) {
                    b10 = 92;
                }
                break;
            case 46795609:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_TIME_OUT)) {
                    b10 = 93;
                }
                break;
            case 46795610:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOADED_FILE)) {
                    b10 = 94;
                }
                break;
            case 46795611:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOADED_FILE_FAIL)) {
                    b10 = 95;
                }
                break;
            case 46795633:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_FINISH)) {
                    b10 = 96;
                }
                break;
            case 46795634:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_FAIL)) {
                    b10 = 97;
                }
                break;
            case 46795635:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_CANCEL)) {
                    b10 = 98;
                }
                break;
            case 46795636:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_CANCEL_RESULT)) {
                    b10 = 99;
                }
                break;
            case 46795637:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_UPDATE)) {
                    b10 = 100;
                }
                break;
            case 46795638:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_UPDATE_RESULT)) {
                    b10 = 101;
                }
                break;
            case 46795639:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY)) {
                    b10 = 102;
                }
                break;
            case 46795640:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY_RESULT)) {
                    b10 = e.T;
                }
                break;
            case 46795641:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_WORKING_FILES)) {
                    b10 = 104;
                }
                break;
            case 46795642:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_WORKING_FILES_RESULT)) {
                    b10 = 105;
                }
                break;
            case 46795664:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_SEARCH)) {
                    b10 = 106;
                }
                break;
            case 46795665:
                if (str.equals(Constants.COUNTLY_VIDEO_DOWNLOAD_SEARCH_RESULT)) {
                    b10 = 107;
                }
                break;
            case 46796532:
                if (str.equals(Constants.COUNTLY_SCREEN_MONITOR_REGISTER)) {
                    b10 = 108;
                }
                break;
            case 46796533:
                if (str.equals(Constants.COUNTLY_SCREEN_MONITOR_UNREGISTER)) {
                    b10 = 109;
                }
                break;
            case 46796534:
                if (str.equals(Constants.COUNTLY_SCREEN_CHANGED)) {
                    b10 = 110;
                }
                break;
            case 46796535:
                if (str.equals(Constants.COUNTLY_SCREEN_ORDER_SUCCESS)) {
                    b10 = 111;
                }
                break;
            case 46796536:
                if (str.equals(Constants.COUNTLY_SCREEN_ORDER_FAIL)) {
                    b10 = 112;
                }
                break;
            case 46796537:
                if (str.equals(Constants.COUNTLY_SCREEN_ORDER_TIME_OUT)) {
                    b10 = 113;
                }
                break;
            case 46796538:
                if (str.equals(Constants.COUNTLY_SCREEN_ORDER_RESEND_OUT_OF_LIMIT)) {
                    b10 = 114;
                }
                break;
            case 46797433:
                if (str.equals(Constants.COUNTLY_STREAMING_FREEZE)) {
                    b10 = 115;
                }
                break;
            case 46798393:
                if (str.equals(Constants.COUNTLY_WS_MSG_SEND)) {
                    b10 = 116;
                }
                break;
            case 46798394:
                if (str.equals(Constants.COUNTLY_WS_MSG_SEND_SUCCESS)) {
                    b10 = 117;
                }
                break;
            case 46798395:
                if (str.equals(Constants.COUNTLY_WS_MSG_SEND_FAILURE)) {
                    b10 = 118;
                }
                break;
            case 46798396:
                if (str.equals(Constants.COUNTLY_WS_MSG_RECEIVE)) {
                    b10 = 119;
                }
                break;
            case 46819536:
                if (str.equals(Constants.COUNTYLY_GET_CLOUDPHONEINFO)) {
                    b10 = e.R;
                }
                break;
            case 46819537:
                if (str.equals(Constants.COUNTYLY_GET_CONNECT)) {
                    b10 = 121;
                }
                break;
            case 46819538:
                if (str.equals(Constants.COUNTYLY_GET_REFRESH)) {
                    b10 = 122;
                }
                break;
            case 46819539:
                if (str.equals(Constants.COUNTYLY_GET_CLOUDPHONEINFO_SUCCESS)) {
                    b10 = 123;
                }
                break;
            case 46819540:
                if (str.equals(Constants.COUNTYLY_GET_CLOUDPHONEINFO_FAIL)) {
                    b10 = 124;
                }
                break;
            case 46819541:
                if (str.equals(Constants.COUNTYLY_GET_CONNECT_SUCCESS)) {
                    b10 = 125;
                }
                break;
            case 46819542:
                if (str.equals(Constants.COUNTYLY_GET_CONNECT_FAIL)) {
                    b10 = 126;
                }
                break;
            case 46819543:
                if (str.equals(Constants.COUNTYLY_GET_REFRESH_SUCCESS)) {
                    b10 = ByteCompanionObject.MAX_VALUE;
                }
                break;
            case 46819565:
                if (str.equals(Constants.COUNTYLY_GET_REFRESH_FAIL)) {
                    b10 = 128;
                }
                break;
            case 46819566:
                if (str.equals(Constants.COUNTYLY_GET_DISCONNECT)) {
                    b10 = DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE;
                }
                break;
            case 46819567:
                if (str.equals(Constants.COUNTYLY_GET_DISCONNECT_SUCCESS)) {
                    b10 = 130;
                }
                break;
            case 46819568:
                if (str.equals(Constants.COUNTYLY_GET_DISCONNECT_FAIL)) {
                    b10 = 131;
                }
                break;
            case 46819569:
                if (str.equals(Constants.COUNTYLY_GET_RESOLUTION)) {
                    b10 = 132;
                }
                break;
            case 46819570:
                if (str.equals(Constants.COUNTYLY_GET_RESOLUTION_SUCCESS)) {
                    b10 = 133;
                }
                break;
            case 46819571:
                if (str.equals(Constants.COUNTYLY_GET_RESOLUTION_FAIL)) {
                    b10 = 134;
                }
                break;
            case 46819692:
                if (str.equals(Constants.COUNTYLY_STOP_GAME_ERROR)) {
                    b10 = 135;
                }
                break;
            case 46821489:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V3)) {
                    b10 = 136;
                }
                break;
            case 46821490:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_SUCCESS)) {
                    b10 = 137;
                }
                break;
            case 46821491:
                if (str.equals(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL)) {
                    b10 = 138;
                }
                break;
            case 46821492:
                if (str.equals(Constants.COUNTYLY_RTC_START_CONNECT)) {
                    b10 = 139;
                }
                break;
            case 46821493:
                if (str.equals(Constants.COUNTYLY_RTC_CONNECT_SUCCESS)) {
                    b10 = 140;
                }
                break;
            case 46821494:
                if (str.equals(Constants.COUNTYLY_RTC_CONNECT_FAIL)) {
                    b10 = 141;
                }
                break;
            case 46821495:
                if (str.equals(Constants.COUNTYLY_RTC_SELF_RECONNECT_SUCCESS)) {
                    b10 = 142;
                }
                break;
            case 46821496:
                if (str.equals(Constants.COUNTYLY_RTC_RECONNECT_FAIL)) {
                    b10 = 143;
                }
                break;
            case 46821518:
                if (str.equals(Constants.COUNTYLY_RTC_SIGNALING_TIME_OUT)) {
                    b10 = 144;
                }
                break;
            case 46821519:
                if (str.equals(Constants.COUNTYLY_RTC_SENT_JOIN)) {
                    b10 = 145;
                }
                break;
            case 46821520:
                if (str.equals(Constants.COUNTYLY_RTC_RECEIVE_OFFER)) {
                    b10 = 146;
                }
                break;
            case 46821521:
                if (str.equals(Constants.COUNTYLY_RTC_CREATE_ANSWER)) {
                    b10 = 147;
                }
                break;
            case 46821522:
                if (str.equals(Constants.COUNTYLY_RTC_SENT_ANSWER)) {
                    b10 = 148;
                }
                break;
            case 46821523:
                if (str.equals(Constants.COUNTYLY_RTC_RECEIVE_CANDIDATE)) {
                    b10 = 149;
                }
                break;
            case 46821524:
                if (str.equals(Constants.COUNTYLY_RTC_SENT_CANDIDATE)) {
                    b10 = 150;
                }
                break;
            case 46821525:
                if (str.equals(Constants.COUNTYLY_RTC_SIGNALING_CONNECTED_AND_SENT_JOIN_AGAIN)) {
                    b10 = 151;
                }
                break;
            case 46821526:
                if (str.equals(Constants.COUNTYLY_RTC_ICE_CONNECTION_FAILED)) {
                    b10 = 152;
                }
                break;
            case 46821527:
                if (str.equals(Constants.COUNTYLY_RTC_PEER_ICE_CONNECTION_STATE_DISCONNECTED)) {
                    b10 = 153;
                }
                break;
            case 46821549:
                if (str.equals(Constants.COUNTYLY_RTC_CLEAR_CONNECT_TIME_OUT_TIMER)) {
                    b10 = 154;
                }
                break;
            case 46821550:
                if (str.equals(Constants.COUNTYLY_RTC_TRY_RECONNECTING)) {
                    b10 = 155;
                }
                break;
            case 46821551:
                if (str.equals(Constants.COUNTYLY_RTC_CLOSE)) {
                    b10 = 156;
                }
                break;
            case 46821581:
                if (str.equals(Constants.COUNTYLY_RTC_SIGNAL_CONNECT_SUCCESS)) {
                    b10 = 157;
                }
                break;
            case 46821582:
                if (str.equals(Constants.COUNTYLY_RTC_SIGNAL_DISCONNECTED)) {
                    b10 = 158;
                }
                break;
            case 46821585:
                if (str.equals(Constants.COUNTYLY_RTC_SIGNAL_STATUS)) {
                    b10 = 159;
                }
                break;
            case 46821586:
                if (str.equals(Constants.COUNTYLY_RTC_CODEC_INFO)) {
                    b10 = 160;
                }
                break;
            case 46821588:
                if (str.equals(Constants.COUNTYLY_RTC_FIRST_FRAME_RECVED)) {
                    b10 = 161;
                }
                break;
            case 46821589:
                if (str.equals(Constants.COUNTYLY_RTC_FIRST_FRAME_DECODED)) {
                    b10 = 162;
                }
                break;
            case 46822418:
                if (str.equals(Constants.COUNTYLY_GET_START_LIVING)) {
                    b10 = 163;
                }
                break;
            case 46822419:
                if (str.equals(Constants.COUNTYLY_GET_START_LIVING_SUCCESS)) {
                    b10 = 164;
                }
                break;
            case 46822420:
                if (str.equals(Constants.COUNTYLY_GET_START_LIVING_FAIL)) {
                    b10 = 165;
                }
                break;
            case 46822421:
                if (str.equals(Constants.COUNTYLY_GET_STOP_LIVING)) {
                    b10 = 166;
                }
                break;
            case 46822422:
                if (str.equals(Constants.COUNTYLY_GET_STOP_LIVING_SUCCESS)) {
                    b10 = 167;
                }
                break;
            case 46822423:
                if (str.equals(Constants.COUNTYLY_GET_STOP_LIVING_FAIL)) {
                    b10 = 168;
                }
                break;
            case 46822424:
                if (str.equals(Constants.COUNTYLY_GET_PIN_CODE)) {
                    b10 = 169;
                }
                break;
            case 46822425:
                if (str.equals(Constants.COUNTYLY_GET_PIN_CODE_SUCCESS)) {
                    b10 = 170;
                }
                break;
            case 46822426:
                if (str.equals(Constants.COUNTYLY_GET_PIN_CODE_FAIL)) {
                    b10 = 171;
                }
                break;
            case 46822448:
                if (str.equals(Constants.COUNTYLY_GET_CONTRON)) {
                    b10 = 172;
                }
                break;
            case 46822449:
                if (str.equals(Constants.COUNTYLY_GET_CONTRON_SUCCESS)) {
                    b10 = 173;
                }
                break;
            case 46822450:
                if (str.equals(Constants.COUNTYLY_GET_CONTRON_FAIL)) {
                    b10 = 174;
                }
                break;
            case 46822451:
                if (str.equals(Constants.COUNTYLY_HAVE_CONTRON_SUCCESS)) {
                    b10 = 175;
                }
                break;
            case 46822452:
                if (str.equals(Constants.COUNTYLY_HAVE_CONTRON_FAIL)) {
                    b10 = 176;
                }
                break;
            case 46822453:
                if (str.equals(Constants.COUNTYLY_LOST_CONTRON_FAIL)) {
                    b10 = 177;
                }
                break;
            case 46822457:
                if (str.equals(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL)) {
                    b10 = 178;
                }
                break;
            case 46822485:
                if (str.equals(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL)) {
                    b10 = 179;
                }
                break;
            case 46822487:
                if (str.equals(Constants.COUNTLY_RELAUNCH_GAME)) {
                    b10 = 180;
                }
                break;
            case 46822488:
                if (str.equals(Constants.COUNTLY_RELAUNCH_GAME_SUCCESS)) {
                    b10 = 181;
                }
                break;
            case 46822515:
                if (str.equals(Constants.COUNTLY_START_RECORD_STREAM)) {
                    b10 = 182;
                }
                break;
            case 46822516:
                if (str.equals(Constants.COUNTLY_START_RECORD_STREAM_FAIL)) {
                    b10 = 183;
                }
                break;
            case 46822517:
                if (str.equals(Constants.COUNTLY_STOP_RECORD_STREAM)) {
                    b10 = 184;
                }
                break;
            case 46822518:
                if (str.equals(Constants.COUNTLY_STOP_RECORD_STREAM_FAIL)) {
                    b10 = 185;
                }
                break;
            case 46822541:
                if (str.equals(Constants.COUNTLY_RELAUNCH_GAME_FAIL)) {
                    b10 = 186;
                }
                break;
            case 46823448:
                if (str.equals(Constants.COUNTLY_GAME_PAD_DEVICE_INFO)) {
                    b10 = ByteSourceJsonBootstrapper.UTF8_BOM_2;
                }
                break;
            case 46823533:
                if (str.equals(Constants.COUNTYLY_RTC_PEER_CONN_DISCONNECT)) {
                    b10 = 188;
                }
                break;
            case 46823538:
                if (str.equals(Constants.COUNTLY_RTC_DC_DEVICE_CREATED)) {
                    b10 = 189;
                }
                break;
            case 46823539:
                if (str.equals(Constants.COUNTLY_RTC_DC_RECVED_FIRST_BINARY)) {
                    b10 = 190;
                }
                break;
            case 46823540:
                if (str.equals(Constants.COUNTLY_RTC_DC_RECVED_FIRST_TEXT)) {
                    b10 = ByteSourceJsonBootstrapper.UTF8_BOM_3;
                }
                break;
            case 46823541:
                if (str.equals(Constants.COUNTLY_RTC_DC_SEND_FIRST_BINARY)) {
                    b10 = 192;
                }
                break;
            case 46823542:
                if (str.equals(Constants.COUNTLY_RTC_DC_SEND_FIRST_TEXT)) {
                    b10 = 193;
                }
                break;
            case 46823564:
                if (str.equals(Constants.COUNTLY_RTC_DC_DESTROY)) {
                    b10 = 194;
                }
                break;
            case 46824340:
                if (str.equals(Constants.COUNTYLY_PING_DELAY_INFO)) {
                    b10 = 195;
                }
                break;
            case 46824341:
                if (str.equals(Constants.COUNTYLY_WEBSOCKET_HEART_BEAT_TIME_OUT_COUNT)) {
                    b10 = 196;
                }
                break;
            case 46824342:
                if (str.equals(Constants.COUNTYLY_WEBSOCKET_HEART_BEAT_FAIL)) {
                    b10 = 197;
                }
                break;
            case 46824343:
                if (str.equals(Constants.COUNTYLY_CALL_BACK_STATUS_TO_APP)) {
                    b10 = 198;
                }
                break;
            case 46824344:
                if (str.equals(Constants.COUNTYLY_CALL_BACK_SCENE_TO_APP)) {
                    b10 = 199;
                }
                break;
            case 46824345:
                if (str.equals(Constants.COUNTYLY_NO_NET_WORK)) {
                    b10 = 200;
                }
                break;
            case 46826262:
                if (str.equals(Constants.COUNTLY_GET_SPECIAL_INFO)) {
                    b10 = 201;
                }
                break;
            case 46826263:
                if (str.equals(Constants.COUNTLY_GET_SPECIAL_INFO_SUCCESS)) {
                    b10 = 202;
                }
                break;
            case 46826264:
                if (str.equals(Constants.COUNTLY_GET_SPECIAL_INFO_FAIL)) {
                    b10 = 203;
                }
                break;
            case 46826265:
                if (str.equals(Constants.COUNTLY_SPEED_TEST_STATUS)) {
                    b10 = 204;
                }
                break;
            case 46827222:
                if (str.equals(Constants.COUNTLY_GET_SWITCH_STREAM_TYPE)) {
                    b10 = 205;
                }
                break;
            case 46827223:
                if (str.equals(Constants.COUNTLY_GET_SWITCH_STREAM_INFO)) {
                    b10 = 206;
                }
                break;
            case 46827224:
                if (str.equals(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_SUCCESS)) {
                    b10 = 207;
                }
                break;
            case 46827225:
                if (str.equals(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL)) {
                    b10 = 208;
                }
                break;
            case 46849329:
                if (str.equals(Constants.COUNTLY_CONNECT_SAAS_WS_HEART_BEAT)) {
                    b10 = 209;
                }
                break;
            case 46879116:
                if (str.equals(Constants.COUNTYLY_APP_CLOUD_GAME_FINISH)) {
                    b10 = 210;
                }
                break;
        }
        switch (b10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case 168:
            case 169:
            case 170:
            case 171:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 177:
            case 178:
            case 179:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
            case 197:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
            case 209:
            case 210:
                return true;
            default:
                return false;
        }
    }

    public static boolean isOverWrittenEvent(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.hashCode();
        return str.equals(Constants.COUNTYLY_NO_NET_WORK);
    }

    public static void openCache() {
        allowCache = true;
    }

    public static void recordCheckErrorCodeEvent(String str, String str2) {
        if (isCheckErrorCode) {
            recordEvent(str, str2);
            LogUtils.d("recordCheckErrorCodeEvent", "errorCode :" + str + " checkInfo : " + str2);
        }
    }

    public static void recordErrorEvent(String str) {
        try {
            String strEncode = URLEncoder.encode(str, "utf-8");
            if (!TextUtils.isEmpty(strEncode)) {
                strEncode = strEncode.replaceAll("%22", "");
            }
            recordEvent("12200", strEncode);
        } catch (Exception unused) {
            recordEvent("12200", "URLEncoder.encode.error");
        }
    }

    public static void recordErrorEventRaw(String str) {
        try {
            recordEvent("12200", str);
        } catch (Exception unused) {
            recordEvent("12200", "URLEncoder.encode.error");
        }
    }

    public static void recordEvent(String str, String str2) {
        recordEvent(str, str2, 0L);
    }

    static void recordToDisk(final String str, final String str2, final Map map) {
        executorService.submit(new Runnable() { // from class: com.haima.hmcp.countly.CountlyUtil.2
            @Override // java.lang.Runnable
            public void run() {
                if (CountlyUtil.mContext == null || map == null) {
                    return;
                }
                CountlyDBInfo countlyDBInfo = new CountlyDBInfo();
                countlyDBInfo.eventId = str;
                countlyDBInfo.timeStamp = str2;
                countlyDBInfo.json = JsonUtil.toJsonString(map);
                CountlyUtil.countlyDiskPolicy.recordToDisk(countlyDBInfo);
            }
        });
    }

    private static void sendCacheEvent() {
        new Thread(new Runnable() { // from class: com.haima.hmcp.countly.CountlyUtil.5
            @Override // java.lang.Runnable
            public void run() {
                Map map;
                while (!CountlyUtil.eventQueue.isEmpty()) {
                    HttpCountly httpCountly2 = CountlyUtil.httpCountly;
                    if (httpCountly2 != null && httpCountly2.isServerInfoInited() && (map = (Map) CountlyUtil.eventQueue.poll()) != null) {
                        CountlyUtil.httpCountly.postEventData(Constants.COUNTYLY_EVENT_NAME, map, 1, true);
                        LogUtils.e(CountlyUtil.TAG, map.toString());
                        try {
                            Thread.sleep(50L);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }).start();
    }

    private static void sendDiskEvent() {
        List<CountlyDBInfo> diskCacheEvent;
        CountlyDiskPolicy<CountlyDBInfo> countlyDiskPolicy2 = countlyDiskPolicy;
        if (countlyDiskPolicy2 == null || (diskCacheEvent = countlyDiskPolicy2.getDiskCacheEvent()) == null || diskCacheEvent.isEmpty()) {
            return;
        }
        LogUtils.i(TAG, "===sendDBEvent==" + diskCacheEvent.size());
        for (CountlyDBInfo countlyDBInfo : diskCacheEvent) {
            LogUtils.i(TAG, "===sendDBEvent==" + countlyDBInfo.json);
            Map map = (Map) JsonUtil.parse(countlyDBInfo.json);
            map.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, countlyDBInfo.timeStamp);
            map.put("eventID", countlyDBInfo.eventId);
            eventQueue.add(map);
        }
    }

    public static void setAppInfo(String str, String str2) {
        pkgName = str;
        appChannel = str2;
    }

    public static void setCountlUrlList(List<String> list) {
        httpCountly.setServerList(list);
    }

    public static void setCountlyInfo(String str, String str2) {
        httpCountly.setServerInfo(str, str2);
    }

    public static void setDiskPolicy(Context context) {
        if (context == null) {
            return;
        }
        countlyDiskPolicy = CountlyDbPolicy.getInstance(context.getApplicationContext());
    }

    private static void stopDataReportAndClearCache() {
        List<CountlyDBInfo> diskCacheEvent;
        unInit();
        CountlyResendFailEventsManager.getInstance().stopResend();
        CountlyDiskPolicy<CountlyDBInfo> countlyDiskPolicy2 = countlyDiskPolicy;
        if (countlyDiskPolicy2 == null || (diskCacheEvent = countlyDiskPolicy2.getDiskCacheEvent()) == null || diskCacheEvent.isEmpty()) {
            return;
        }
        LogUtils.i(TAG, "===stopDataReportAndClearCache==" + diskCacheEvent.size());
        Iterator<CountlyDBInfo> it2 = diskCacheEvent.iterator();
        while (it2.hasNext()) {
            countlyDiskPolicy.deleteDiskCacheEvent(it2.next());
        }
    }

    public static void unInit() {
        LogUtils.i(TAG, "==unInit===");
        if (mStart) {
            clearCache();
            mStart = false;
            RtcCountlyUtil.unInit();
        }
    }

    public static void updateDataReportEnable(boolean z10) {
        LogUtils.d(TAG, "updateDataReportIsEnable isEnable = " + z10);
        sIsReport = z10;
        if (z10) {
            return;
        }
        stopDataReportAndClearCache();
    }

    static void deleteDiskCacheEvent(final Map map) {
        executorService.submit(new Runnable() { // from class: com.haima.hmcp.countly.CountlyUtil.4
            @Override // java.lang.Runnable
            public void run() {
                if (CountlyUtil.mContext == null || map == null) {
                    return;
                }
                CountlyDBInfo countlyDBInfo = new CountlyDBInfo();
                countlyDBInfo.eventId = (String) map.get("eventID");
                countlyDBInfo.timeStamp = (String) map.get(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP);
                LogUtils.i(CountlyUtil.TAG, "===delete timeStamp==" + countlyDBInfo.timeStamp + "===delete===" + countlyDBInfo.eventId);
                CountlyUtil.countlyDiskPolicy.deleteDiskCacheEvent(countlyDBInfo);
            }
        });
    }

    public static void recordEvent(String str, int i10) {
        recordEvent(str, "" + i10, 0L);
    }

    public static void recordEvent(String str) {
        recordEvent(str, (String) null);
    }

    public static void recordEvent(String str, String str2, long j10) {
        String strValueOf;
        if (!sIsReport) {
            LogUtils.d(TAG, "recordEvent sIsReport is false, no data report,return!! eventId = " + str);
            return;
        }
        String str3 = TAG;
        LogUtils.i(str3, "===recordEvent==" + str);
        String str4 = "";
        if (j10 != 0) {
            strValueOf = j10 + "";
        } else {
            strValueOf = String.valueOf(System.currentTimeMillis());
        }
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("eventID", str);
        }
        if (!TextUtils.isEmpty(strValueOf)) {
            map.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, strValueOf);
        }
        if (!TextUtils.isEmpty(mDeviceID)) {
            map.put(HmDataChannelManager.SPECIAL_DEVICE_ID, mDeviceID);
        }
        if (!TextUtils.isEmpty(mCloudID)) {
            map.put("cloudID", mCloudID);
        }
        if (!TextUtils.isEmpty(mAccessKey)) {
            map.put("accessKeyId", mAccessKey);
        }
        if (!TextUtils.isEmpty(mNetworkType)) {
            map.put("networkType", mNetworkType);
        }
        if (!TextUtils.isEmpty(mNetStatus)) {
            map.put("netStatus", mNetStatus);
        }
        if (!TextUtils.isEmpty(mChannelId)) {
            map.put("channel", mChannelId);
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put("eventData", str2.replace("\r", " ").replace("\n", " "));
        }
        if (!TextUtils.isEmpty(mExtraId)) {
            map.put("extraId", mExtraId);
        }
        if (!TextUtils.isEmpty("" + Constants.ANDROID_TYPE)) {
            map.put("key", "" + Constants.ANDROID_TYPE);
        }
        if (!TextUtils.isEmpty(mUID)) {
            map.put("uid", StringUtils.encodeToBase64String(mUID));
        }
        if (!TextUtils.isEmpty(mServerTimestamp)) {
            map.put("serverTimestamp", mServerTimestamp);
        }
        if (!TextUtils.isEmpty(mTransid)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(mTransid);
            if (mSEQ > 0) {
                str4 = o0.f49827a + mSEQ;
            }
            sb2.append(str4);
            map.put("clientTransId", sb2.toString());
        }
        JSONObject extension = getExtension();
        if (extension != null && extension.length() > 0) {
            map.put("extension", extension);
        }
        if (mStart) {
            try {
                LogUtils.i(str3, "===recordEvent==" + str + "==clientTransId==" + map.get("clientTransId") + "==serverTimestamp==" + mServerTimestamp + "==timeStamp==" + strValueOf + "==did==" + mDeviceID + "==cid==" + mCloudID + "==accessKey==" + mAccessKey + "==networkType==" + mNetworkType + "==netStatus==" + mNetStatus + "==channel id====extension==" + extension + mChannelId + "==extra id==" + mExtraId + "==uid==" + mUID + "==eventData==" + str2);
                httpCountly.postEventData(Constants.COUNTYLY_EVENT_NAME, (Map) map, 1, false);
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, e10.toString());
                return;
            }
        }
        if (allowCache && isCacheEvent(str)) {
            eventQueue.add(map);
        }
    }
}
