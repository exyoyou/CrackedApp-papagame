package com.haima.hmcp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.beans.CheckCloudServiceResult;
import com.haima.hmcp.beans.GSMUsbNatData;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.GameStreamingType;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.beans.NetTestData;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.RecommendInfo;
import com.haima.hmcp.beans.ReportInitFailed;
import com.haima.hmcp.beans.ReportTranceRoute;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.beans.UserInfo2;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.HmcpRequestManager;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.language.AbsLanguageManager;
import com.haima.hmcp.listeners.OnGameIsAliveListener;
import com.haima.hmcp.listeners.OnGameStreamingTypeListener;
import com.haima.hmcp.listeners.OnGetPublicIPV4Listener;
import com.haima.hmcp.listeners.OnGetResolutionsCallBackListener;
import com.haima.hmcp.listeners.OnIdcQueryCallBackListener;
import com.haima.hmcp.listeners.OnInitCallBackListener;
import com.haima.hmcp.listeners.OnNetPingListener;
import com.haima.hmcp.listeners.OnSaveGameCallBackListener;
import com.haima.hmcp.listeners.OnSpeedTestCallBackListener;
import com.haima.hmcp.listeners.OnTraceRouteListener;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.CryptoUtils;
import com.haima.hmcp.utils.DataUtils;
import com.haima.hmcp.utils.FileDownloadUtil;
import com.haima.hmcp.utils.FileUtil;
import com.haima.hmcp.utils.HmNetWorkManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetworkUtil;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.widgets.HmcpVideoView;
import com.netcheck.LDNetDiagnoService.LDNetDiagnoListener;
import com.netcheck.LDNetDiagnoService.LDNetDiagnoService;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.Serializable;
import java.net.URL;
import java.net.URLEncoder;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import net.lingala.zip4j.util.e;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpManager implements HmcpRequestManager.OnHmcpSaasRequestListener {
    public static String ACCESS_KEY_ID = "HMCP_ACCESS_KEY_ID";
    private static String ACCESS_URL = "";
    public static String BUNDLE_ACCESS_URL = "ACCESS_URL";
    public static String BUNDLE_CERTIFICATE = "BUNDLE_CERTIFICATE";
    public static String BUNDLE_COUNTLY_KEY = "COUNTLY_KEY";
    public static String BUNDLE_COUNTLY_URL = "COUNTLY_URL";
    public static String BUNDLE_HMCP_SAAS_AUTH_URL = "HMCP_SAAS_AUTH_URL";
    private static Certificate CERTIFICATE = null;
    public static String CHANNEL_ID = "HMCP_CHANNEL_ID";
    private static String COUNTLY_KEY = "";
    private static String COUNTLY_URL = "";
    public static final int DATA_REPORT_DISABLE = 0;
    public static final int DATA_REPORT_ENABLE = 1;
    public static final int DATA_REPORT_UNKNOWN = -1;
    public static String GAME_BID = "GAME_BID";
    private static String HMCP_SAAS_AUTH_URL = "";
    public static boolean INIT_SUCCESS = false;
    public static boolean IsSpeedTesting = false;
    public static final int RENDER_SURFACE_VIEW = 1;
    public static final int RENDER_TEXTURE_VIEW = 2;
    public static int count;
    private static HmcpManager mHmcpManager;
    public boolean isJson;
    private FileDownloadUtil mAdvertFileDownload;
    private Context mAppContext;
    private OnInitCallBackListener mCallbackListener;
    private HmcpRequest mHmcpRequestManager;
    private List<IntroImageInfo> mIntroImageInfos;
    private RecommendInfo mRecommendInfo;
    private List<ResolutionInfo> mResolutionList;
    private Map<String, List<ResolutionInfo>> mResolutionMap;
    private HashMap<String, String> mTips;
    private List<TipsInfo> mTipsInfos;
    private HmcpVideoView mVideoView;
    private LDNetDiagnoService netDiagnoService;
    private com.netcheck.LDNetDiagnoService.a ping;
    private String streamType;
    public List<String> surfaceTypeList;
    private String TAG = "HmcpManager";
    private boolean isInitializing = false;
    private AtomicInteger renderType = new AtomicInteger(2);
    private volatile boolean isDataReportEnabled = false;
    private volatile boolean isReadDataReportFromSp = false;
    private final ArrayList<OnUpdateDataReportStatusListener> mOnUpdateDataReportStatusListenerList = new ArrayList<>();
    private GameArchitectureType mGameArchitectureType = GameArchitectureType.ARM;
    private boolean mPlatformFormInited = false;
    private final AbsLanguageManager mLanguageManager = new AbsLanguageManager() { // from class: com.haima.hmcp.HmcpManager.1
    };

    private class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {
        RecommendInfo info;

        public DownloadImageTask(RecommendInfo recommendInfo) {
            this.info = recommendInfo;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            String str = strArr[0];
            LogUtils.d("DownloadImageTask", str);
            try {
                return BitmapFactory.decodeStream(new URL(str).openStream());
            } catch (Exception e10) {
                LogUtils.e("download icon Error: ", e10.getMessage());
                e10.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            this.info.setBitmap(bitmap);
        }
    }

    public interface OnUpdateDataReportStatusListener {
        boolean updateDataReportEnable(boolean z10);
    }

    private HmcpManager() {
    }

    private void addEvent(String str, String str2) {
        LogUtils.d(this.TAG, "addEvent eventId:" + str + ",data:" + str2);
        CountlyUtil.recordEvent(str, str2);
    }

    private boolean checkInitParams(Context context, OnInitCallBackListener onInitCallBackListener) {
        String string;
        String str;
        String string2 = "";
        if (context == null) {
            LogUtils.e(this.TAG, "context cannot be null!");
            if (onInitCallBackListener != null) {
                onInitCallBackListener.fail("context cannot be null!");
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "context is null", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
            return false;
        }
        if (!NetworkUtil.isNetworkConnected(context)) {
            LogUtils.e(this.TAG, "Network unavailable!");
            if (onInitCallBackListener != null) {
                onInitCallBackListener.fail("Network unavailable");
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "Network unavailable", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
            return false;
        }
        if (TextUtils.isEmpty(CountlyUtil.mAccessKey) || TextUtils.isEmpty(CountlyUtil.mChannelId)) {
            try {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                string = bundle.getString(ACCESS_KEY_ID);
                try {
                    string2 = bundle.getString(CHANNEL_ID);
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                }
            } catch (Exception e11) {
                e = e11;
                string = "";
            }
            str = string;
        } else {
            str = CountlyUtil.mAccessKey;
            string2 = CountlyUtil.mChannelId;
        }
        String str2 = string2;
        if (str == null || str.isEmpty()) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "Must specify Access Key ID", 0, "", 0, "", str2)));
            this.isInitializing = false;
            INIT_SUCCESS = false;
            if (onInitCallBackListener != null) {
                onInitCallBackListener.fail("mAccessKeyId cannot be null!");
            }
            LogUtils.e(this.TAG, "mAccessKeyId cannot be null!");
            return false;
        }
        if (str2 != null && !str2.isEmpty()) {
            return true;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "Must specify Channel Key ID", 0, "", 0, "", "")));
        this.isInitializing = false;
        INIT_SUCCESS = false;
        if (onInitCallBackListener != null) {
            onInitCallBackListener.fail("mChannelId cannot be null!");
        }
        LogUtils.e(this.TAG, "mChannelId cannot be null!");
        return false;
    }

    private String getDataReportDisableMsg() {
        return ResourceManager.getString(R.string.hmcp_fail_msg_with_disable_data_report);
    }

    public static HmcpManager getInstance() {
        if (mHmcpManager == null) {
            mHmcpManager = new HmcpManager();
        }
        return mHmcpManager;
    }

    private String getLocalStr(int i10, Locale locale) {
        if (locale == null) {
            String string = Locale.getDefault().toString();
            LogUtils.d(this.TAG, "languageConfigLevel = " + i10 + " getLocalStr SDK_INT = " + Build.VERSION.SDK_INT + " locale == null,return Locale.getDefault() , result = " + string);
            return string;
        }
        String string2 = locale.toString();
        LogUtils.d(this.TAG, "languageConfigLevel = " + i10 + " getLocalStr SDK_INT = " + Build.VERSION.SDK_INT + " , result = " + string2);
        return string2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private String getProcessName() throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
                try {
                    String strTrim = bufferedReader.readLine().trim();
                    try {
                        bufferedReader.close();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return strTrim;
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e14) {
            e = e14;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                bufferedReader2.close();
            }
            throw th;
        }
    }

    private void initInternal(Context context, OnInitCallBackListener onInitCallBackListener, boolean z10) {
        HmNetWorkManager.init(context);
        CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_CALL);
        if (onInitCallBackListener == null) {
            LogUtils.e(this.TAG, "callBack is null");
            return;
        }
        ResourceManager.getInstance().init(context, "");
        if (getDataReportStatus(context) != 1) {
            onInitCallBackListener.fail(ResourceManager.getString(R.string.hmcp_init_fail_by_no_data_report));
            return;
        }
        this.mCallbackListener = onInitCallBackListener;
        if (context == null) {
            LogUtils.e(this.TAG, "context is null");
            OnInitCallBackListener onInitCallBackListener2 = this.mCallbackListener;
            if (onInitCallBackListener2 != null) {
                onInitCallBackListener2.fail("context is null");
                return;
            }
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (!checkInitParams(applicationContext, this.mCallbackListener)) {
            this.mCallbackListener = null;
            return;
        }
        if (!this.mPlatformFormInited) {
            this.mPlatformFormInited = true;
            Constants.ANDROID_TYPE = z10 ? 8 : 2;
        }
        this.mAppContext = context.getApplicationContext();
        CountlyUtil.setDiskPolicy(context);
        CountlyUtil.processName = getProcessName();
        this.isInitializing = true;
        String preferences = DataUtils.getSharedInstance(applicationContext).getPreferences(DataUtils.CONFIG_INFO_KEY, "");
        if (!TextUtils.isEmpty(preferences)) {
            int length = preferences.length();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("old configInfo :");
            sb2.append(preferences.substring(0, length <= 120 ? length : 120));
            sb2.append(" ,len:");
            sb2.append(length);
            CountlyUtil.recordErrorEvent(sb2.toString());
            DataUtils.getSharedInstance(applicationContext).putPreferences(DataUtils.CONFIG_INFO_KEY, "");
        }
        if (TextUtils.isEmpty(FileUtil.S_DEFAULT_STORAGE_PATH)) {
            String storagePath = FileUtil.getStoragePath(context);
            if (!TextUtils.isEmpty(storagePath)) {
                FileUtil.S_DEFAULT_STORAGE_PATH = storagePath + File.separator;
            }
        }
        stopAdvertDownload();
        if (TextUtils.isEmpty(Constants.DATA_PATH)) {
            String path = context.getDir("libs", 0).getPath();
            Constants.DATA_PATH = path;
            LogUtils.e(this.TAG, path);
        }
        String str = UUID.randomUUID().toString() + System.currentTimeMillis();
        if (TextUtils.isEmpty(CountlyUtil.mTransid)) {
            CountlyUtil.mTransid = CryptoUtils.md5(str);
        }
        HmcpRequest hmcpRequest = HmcpRequest.getInstance(context);
        this.mHmcpRequestManager = hmcpRequest;
        hmcpRequest.initConfigInfo();
        this.mHmcpRequestManager.getDeviceId(new OnInitCallBackListener() { // from class: com.haima.hmcp.HmcpManager.2
            @Override // com.haima.hmcp.listeners.OnInitCallBackListener
            public void fail(String str2) {
                HmcpManager.this.isInitializing = false;
                HmcpManager.INIT_SUCCESS = false;
                if (HmcpManager.this.mCallbackListener == null) {
                    LogUtils.d(HmcpManager.this.TAG, "onInitCallBack is null");
                    return;
                }
                LogUtils.d(HmcpManager.this.TAG, "onInitCallBack fail" + str2);
                HmcpManager.this.mCallbackListener.fail(str2);
                HmcpManager.this.mCallbackListener = null;
            }

            @Override // com.haima.hmcp.listeners.OnInitCallBackListener
            public void success() {
                HmcpManager.this.isInitializing = false;
                HmcpManager.INIT_SUCCESS = true;
                if (HmcpManager.this.mCallbackListener == null) {
                    LogUtils.e(HmcpManager.this.TAG, "onInitCallBack is null");
                    return;
                }
                LogUtils.d(HmcpManager.this.TAG, "onInitCallBack success");
                HmcpManager.this.mCallbackListener.success();
                HmcpManager.this.mCallbackListener = null;
            }
        });
        DataUtils.getSharedInstance(applicationContext).putPreferences(Constants.SHARED_PREF_LAUNCH_TIMES, DataUtils.getSharedInstance(applicationContext).getPreferences(Constants.SHARED_PREF_LAUNCH_TIMES, 0) + 1);
    }

    private void initRequestManager() {
        if (this.mHmcpRequestManager != null || this.mAppContext == null) {
            return;
        }
        LogUtils.e(this.TAG, "==initRequestManager======== ");
        this.mHmcpRequestManager = new HmcpRequest(this.mAppContext);
    }

    public static boolean isSpeedTesting() {
        return IsSpeedTesting;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$streamingTypeQuery$0(OnGameStreamingTypeListener onGameStreamingTypeListener, boolean z10, String str) {
        if (onGameStreamingTypeListener != null) {
            onGameStreamingTypeListener.onStreamingType(z10, str);
        }
    }

    public static void release() {
        HmcpManager hmcpManager = mHmcpManager;
        if (hmcpManager != null) {
            hmcpManager.mHmcpRequestManager = null;
        }
    }

    private void setTransId(String str) {
        LogUtils.d(this.TAG, "setClientTransId transId:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        CountlyUtil.mTransid = str;
    }

    public void addOnUpdateDataReportStatusListener(OnUpdateDataReportStatusListener onUpdateDataReportStatusListener) {
        if (onUpdateDataReportStatusListener != null) {
            this.mOnUpdateDataReportStatusListenerList.add(onUpdateDataReportStatusListener);
        }
        LogUtils.d(this.TAG, "addOnUpdateDataReportStatusListener " + this.mOnUpdateDataReportStatusListenerList.size());
    }

    public void checkPlayingCidStatus(UserInfo userInfo, String str, final OnGameIsAliveListener onGameIsAliveListener) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.checkPlayingCidStatus(userInfo, str, new OnGameIsAliveListener() { // from class: com.haima.hmcp.HmcpManager.13
                @Override // com.haima.hmcp.listeners.OnGameIsAliveListener
                public void fail(String str2) {
                    OnGameIsAliveListener onGameIsAliveListener2 = onGameIsAliveListener;
                    if (onGameIsAliveListener2 != null) {
                        onGameIsAliveListener2.fail(str2);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnGameIsAliveListener
                public void success(List<CheckCloudServiceResult.ChannelInfo> list) {
                    OnGameIsAliveListener onGameIsAliveListener2 = onGameIsAliveListener;
                    if (onGameIsAliveListener2 != null) {
                        onGameIsAliveListener2.success(list);
                    }
                }
            });
        }
    }

    public void checkPlayingGame(UserInfo userInfo, OnGameIsAliveListener onGameIsAliveListener) {
        checkPlayingGame(userInfo, "", onGameIsAliveListener);
    }

    public void clearCertificate() {
        CERTIFICATE = null;
    }

    public void doNetPing(String str, int i10, int i11, final OnNetPingListener onNetPingListener) {
        com.netcheck.LDNetDiagnoService.a aVar = this.ping;
        if (aVar == null || !aVar.d()) {
            com.netcheck.LDNetDiagnoService.a aVar2 = new com.netcheck.LDNetDiagnoService.a(new com.netcheck.LDNetDiagnoService.a.InterfaceC0971a() { // from class: com.haima.hmcp.HmcpManager.16
                @Override // com.netcheck.LDNetDiagnoService.a.InterfaceC0971a
                public void OnNetPingFinished(String str2) {
                    OnNetPingListener onNetPingListener2 = onNetPingListener;
                    if (onNetPingListener2 != null) {
                        onNetPingListener2.netFinished(str2);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_NET_PING_BAIDU, str2);
                }
            }, i10, i11, str);
            this.ping = aVar2;
            aVar2.execute(new Object[0]);
        }
    }

    public void doTraceRoute(Context context, String str, int i10, final OnTraceRouteListener onTraceRouteListener) {
        String strSubstring = str;
        LDNetDiagnoService lDNetDiagnoService = this.netDiagnoService;
        if (lDNetDiagnoService == null || !lDNetDiagnoService.isRunning()) {
            if (strSubstring.contains("//")) {
                strSubstring = strSubstring.substring(strSubstring.indexOf("//") + 2);
            }
            if (strSubstring.contains(":")) {
                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(":"));
            } else if (strSubstring.contains(e.F0)) {
                strSubstring = strSubstring.substring(0, strSubstring.indexOf(e.F0));
            }
            final String str2 = strSubstring;
            LDNetDiagnoService lDNetDiagnoService2 = new LDNetDiagnoService(context, "hmsdk", "1.0", "haima", "deviceID(option)", str2, "carriname", "ISOCountyCode", "MobilCountryCode", "MobileNetCode", new LDNetDiagnoListener() { // from class: com.haima.hmcp.HmcpManager.15
                @Override // com.netcheck.LDNetDiagnoService.LDNetDiagnoListener
                public void OnNetDiagnoFinished(String str3, List list) {
                    OnTraceRouteListener onTraceRouteListener2 = onTraceRouteListener;
                    if (onTraceRouteListener2 != null) {
                        onTraceRouteListener2.netFinished(list);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTYLY_TRACE_ROUTE, JsonUtil.toJsonString(new ReportTranceRoute(URLEncoder.encode(str2), str2 + ":" + StringUtils.replaceSpecialStr(str3))));
                }

                @Override // com.netcheck.LDNetDiagnoService.LDNetDiagnoListener
                public void OnNetDiagnoUpdated(String str3) {
                }
            });
            this.netDiagnoService = lDNetDiagnoService2;
            lDNetDiagnoService2.setIfUseJNICTrace(true);
            this.netDiagnoService.setTraceTimes(i10);
            this.netDiagnoService.execute(new String[0]);
        }
    }

    @Deprecated
    public void gameArchived(String str, UserInfo userInfo, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        gameArchived(str, userInfo, "", onSaveGameCallBackListener);
    }

    public String getAccessUrl() {
        return ACCESS_URL;
    }

    public String getApplyInstanceParams(Bundle bundle) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            return JsonUtil.toJsonString(hmcpRequest.getApplyInstanceParams(bundle));
        }
        LogUtils.e(this.TAG, "mHmcpRequestManager is null");
        return "";
    }

    public Certificate getCertificate() {
        return CERTIFICATE;
    }

    public String getCloudId() {
        return TextUtils.isEmpty(CountlyUtil.mCloudID) ? "" : CountlyUtil.mCloudID;
    }

    public String getCountlyKey() {
        return COUNTLY_KEY;
    }

    public String getCountlyUrl() {
        return COUNTLY_URL;
    }

    @RequiresApi(api = 28)
    public float[] getCutOutsHeightPercent(Activity activity) {
        return ConfigUtil.getCutOutsHeightPercent(activity);
    }

    public int getDataReportStatus(Context context) {
        if (context == null) {
            LogUtils.e(this.TAG, "isDataReportEnabled context == null ,return false");
            return -1;
        }
        if (!this.isReadDataReportFromSp) {
            this.isDataReportEnabled = DataUtils.getSharedInstance(context.getApplicationContext()).readDataReportIsEnabled();
            this.isReadDataReportFromSp = true;
        }
        LogUtils.d(this.TAG, "isDataReportEnabled isDataReportEnabled = " + this.isDataReportEnabled);
        return this.isDataReportEnabled ? 1 : 0;
    }

    public GameArchitectureType getGameArchitectureType() {
        return this.mGameArchitectureType;
    }

    @Deprecated
    public void getGameArchiveStatus(String str, UserInfo userInfo, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        getGameArchiveStatus(str, userInfo, "", onSaveGameCallBackListener);
    }

    public String getHmcpSaasAuthUrl() {
        return HMCP_SAAS_AUTH_URL;
    }

    public List<IntroImageInfo> getIntroImageInfos(int i10) {
        if (i10 == -16711936) {
            return this.mIntroImageInfos;
        }
        return null;
    }

    @Deprecated
    public String getNetText(HmcpVideoView hmcpVideoView) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest == null) {
            return null;
        }
        ArrayList netText = hmcpRequest.getNetText();
        ArrayList netText2 = hmcpVideoView != null ? hmcpVideoView.getNetText() : null;
        if (netText == null && netText2 == null) {
            return null;
        }
        if (netText == null) {
            netText = new ArrayList();
        } else if (netText2 == null) {
            netText2 = new ArrayList();
        }
        netText.addAll(netText2);
        netText2.clear();
        String jSONString = com.alibaba.fastjson.a.toJSONString(netText);
        Iterator it2 = netText.iterator();
        while (it2.hasNext()) {
            LogUtils.i("Manager", ((NetTestData) it2.next()).toString());
        }
        netText.clear();
        return jSONString;
    }

    public RecommendInfo getRecommendInfo() {
        return this.mRecommendInfo;
    }

    public List<ResolutionInfo> getResolutionDatas() {
        if (TextUtils.isEmpty(this.streamType)) {
            CountlyUtil.recordErrorEvent("getResolutionDatas-->streamType is null");
        }
        Map<String, List<ResolutionInfo>> map = this.mResolutionMap;
        if (map == null) {
            return null;
        }
        List<ResolutionInfo> list = map.get(this.streamType);
        if (list == null) {
            CountlyUtil.recordErrorEvent("getResolutionDatas-->" + this.streamType + " Resolution Info List is null");
        }
        return list;
    }

    public void getResolutionInfos(String str, String str2, String str3, StreamType streamType, final OnGetResolutionsCallBackListener onGetResolutionsCallBackListener) {
        HmcpRequest hmcpRequest;
        if (onGetResolutionsCallBackListener == null) {
            LogUtils.e(this.TAG, "getResolutionInfos listener can't be null,return ");
            return;
        }
        initRequestManager();
        if (INIT_SUCCESS && (hmcpRequest = this.mHmcpRequestManager) != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.getResolutionInfos(str, str2, str3, streamType, new OnGetResolutionsCallBackListener() { // from class: com.haima.hmcp.HmcpManager.14
                @Override // com.haima.hmcp.listeners.OnGetResolutionsCallBackListener
                public void fail(String str4) {
                    onGetResolutionsCallBackListener.fail(str4);
                }

                @Override // com.haima.hmcp.listeners.OnGetResolutionsCallBackListener
                public void success(List list) {
                    onGetResolutionsCallBackListener.success(list);
                }
            });
            return;
        }
        String string = ResourceManager.getString(R.string.Error_000003);
        if (TextUtils.isEmpty(string)) {
            string = "Initialization incomplete";
        }
        LogUtils.e(this.TAG, "getResolutionInfos: " + string);
        onGetResolutionsCallBackListener.fail(string);
    }

    public String getSDKVersion() {
        return Constants.SDK_VERSION;
    }

    public StreamType getStreamType() {
        StreamType streamType = StreamType.WEBRTC;
        return streamType.name().equals(this.streamType) ? streamType : StreamType.RTMP;
    }

    public String getSystemLocalStr(int i10) {
        int i11 = Build.VERSION.SDK_INT;
        String localStr = getLocalStr(i10, i11 >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault());
        LogUtils.d(this.TAG, "languageConfigLevel = " + i10 + " getSystemLocal SDK_INT = " + i11 + " , result = " + localStr);
        return localStr;
    }

    public HashMap<String, String> getTips(int i10) {
        if (i10 == -16711936) {
            return this.mTips;
        }
        return null;
    }

    public List<TipsInfo> getTipsInfos(int i10) {
        if (i10 == -16711936) {
            return this.mTipsInfos;
        }
        return null;
    }

    @Deprecated
    public int getVideoViewType(Context context) {
        return this.renderType.get();
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void handleMessage(String str) {
    }

    public void idcQuery(boolean z10, String str, String str2, String str3, OnIdcQueryCallBackListener onIdcQueryCallBackListener) {
        idcQuery(z10, str, str2, str3, "", onIdcQueryCallBackListener);
    }

    public void init(Bundle bundle, Context context, OnInitCallBackListener onInitCallBackListener) {
        init(bundle, context, onInitCallBackListener, false, false);
    }

    public boolean isRtcStream() {
        return Constants.STREAM_TYPE_RTC.equals(this.streamType);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public /* synthetic */ void onGSMUsbNatData(GSMUsbNatData gSMUsbNatData) {
        com.haima.hmcp.business.b.a(this, gSMUsbNatData);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onGetCloudServiceSuccess(String str, boolean z10, String str2, int i10, boolean z11) {
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveDistance(long j10) {
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveExtraConfigs(HashMap<String, String> map, boolean z10) {
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveMetaInfos(int i10, HashMap<String, String> map, List<TipsInfo> list, Map<String, List<ResolutionInfo>> map2, List<IntroImageInfo> list2) {
        if (i10 != -16711936) {
            return;
        }
        this.mTips = map;
        this.mTipsInfos = list;
        this.mResolutionMap = map2;
        this.mIntroImageInfos = list2;
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onResponse(int i10, String str) {
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void playPreparation(int i10, PlayStreamPayloadData playStreamPayloadData) {
    }

    public void releaseRequestManager() {
        HmcpRequest.release();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.clearNetText();
            this.mHmcpRequestManager = null;
        }
    }

    public void removeOnUpdateDataReportStatusListener(OnUpdateDataReportStatusListener onUpdateDataReportStatusListener) {
        if (onUpdateDataReportStatusListener != null) {
            this.mOnUpdateDataReportStatusListenerList.remove(onUpdateDataReportStatusListener);
        }
        LogUtils.d(this.TAG, "removeOnUpdateDataReportStatusListener " + this.mOnUpdateDataReportStatusListenerList.size());
    }

    public void setAdvertFileDownload(FileDownloadUtil fileDownloadUtil) {
        this.mAdvertFileDownload = fileDownloadUtil;
    }

    public void setGameArchitectureType(GameArchitectureType gameArchitectureType) {
        this.mGameArchitectureType = gameArchitectureType;
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void setGamePlatformType(GamePlatformType gamePlatformType) {
    }

    public void setRecommandInfo(RecommendInfo recommendInfo) {
        this.mRecommendInfo = recommendInfo;
        if (recommendInfo == null || TextUtils.isEmpty(recommendInfo.iconUrl)) {
            LogUtils.d("setRecommandInfo ", "mRecommendInfo is null");
        } else {
            new DownloadImageTask(this.mRecommendInfo).execute(this.mRecommendInfo.iconUrl);
        }
    }

    @Deprecated
    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo userInfo, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        setReleaseCid(str, str2, str3, str4, userInfo, (String) null, onSaveGameCallBackListener);
    }

    public void setResolutionDatas(int i10, List<ResolutionInfo> list) {
        if (i10 != -16711936) {
            return;
        }
        this.mResolutionList = list;
    }

    public boolean setServiceUrl(Bundle bundle) {
        String string = bundle.getString(BUNDLE_HMCP_SAAS_AUTH_URL, "");
        if (!TextUtils.isEmpty(string) && !string.equals(HMCP_SAAS_AUTH_URL)) {
            INIT_SUCCESS = false;
        }
        if (!INIT_SUCCESS) {
            HMCP_SAAS_AUTH_URL = string;
            ACCESS_URL = bundle.getString(BUNDLE_ACCESS_URL, "");
            COUNTLY_URL = bundle.getString(BUNDLE_COUNTLY_URL, "");
            COUNTLY_KEY = bundle.getString(BUNDLE_COUNTLY_KEY, "");
            Serializable serializable = bundle.getSerializable(BUNDLE_CERTIFICATE);
            if (serializable instanceof Certificate) {
                CERTIFICATE = (Certificate) serializable;
                LogUtils.d(this.TAG, "initSSLSocketFactory HmcpManager Certificate success");
            }
        }
        return !INIT_SUCCESS;
    }

    public void setStreamType(String str) {
        this.streamType = str;
    }

    @Deprecated
    public void setSurfaceViewList(List list) {
        LogUtils.d(this.TAG, "setSurfaceViewList is  Deprecated ,remove this method by next version,please use setVideoViewType(int type)");
        if (list == null || !list.contains(Build.MODEL)) {
            setVideoViewType(2);
        } else {
            setVideoViewType(1);
        }
    }

    public void setVideoViewType(int i10) {
        LogUtils.d(this.TAG, "setVideoViewType renderType = " + i10);
        if (i10 < 1 || i10 > 2) {
            return;
        }
        this.renderType.set(i10);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void showRetryPrompt(String str, String str2, String str3) {
    }

    public void stopAdvertDownload() {
        FileDownloadUtil fileDownloadUtil = this.mAdvertFileDownload;
        if (fileDownloadUtil != null) {
            fileDownloadUtil.isAllowDownloadFlag = false;
            this.mAdvertFileDownload = null;
        }
    }

    public void stopNetPing() {
        com.netcheck.LDNetDiagnoService.a aVar = this.ping;
        if (aVar != null) {
            aVar.cancel(true);
            this.ping = null;
        }
    }

    public void stopSpeedTesting() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", ConstantsInternal.STOP);
            jSONObject.put("stopByApp", "1");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject.toString());
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.stopSpeedTesting();
        }
    }

    public void stopTraceRoute() {
        LDNetDiagnoService lDNetDiagnoService = this.netDiagnoService;
        if (lDNetDiagnoService != null) {
            lDNetDiagnoService.stopNetDialogsis();
            this.netDiagnoService = null;
        }
    }

    public void streamingTypeQuery(GameStreamingType gameStreamingType, final OnGameStreamingTypeListener onGameStreamingTypeListener) {
        if (onGameStreamingTypeListener == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, "OnGameStreamingTypeListener is null");
            LogUtils.d(this.TAG, "tv_battle->streaming type query fail: OnGameStreamingTypeListener is null");
            return;
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null && INIT_SUCCESS) {
            hmcpRequest.getStreamingType(gameStreamingType, new OnGameStreamingTypeListener() { // from class: com.haima.hmcp.b
                @Override // com.haima.hmcp.listeners.OnGameStreamingTypeListener
                public final void onStreamingType(boolean z10, String str) {
                    HmcpManager.lambda$streamingTypeQuery$0(onGameStreamingTypeListener, z10, str);
                }
            });
            return;
        }
        String str = hmcpRequest == null ? "HmcpRequestManager is null" : "init is not success";
        CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, str);
        LogUtils.d(this.TAG, "tv_battle->streaming type query fail: " + str);
        onGameStreamingTypeListener.onStreamingType(false, "Not init");
    }

    public void testSpeed(boolean z10, int i10, String str, String str2, String str3, OnSpeedTestCallBackListener onSpeedTestCallBackListener) {
        testSpeed(z10, i10, str, str2, str3, "", onSpeedTestCallBackListener);
    }

    public int updateDataReportStatus(Context context, boolean z10) {
        if (context == null) {
            LogUtils.e(this.TAG, "updateDataReportIsEnable context == null ,return false");
            return -1;
        }
        LogUtils.d(this.TAG, "updateDataReportIsEnable isEnable = " + z10);
        DataUtils.getSharedInstance(context).updateDataReportEnable(z10);
        this.isDataReportEnabled = z10;
        CountlyUtil.setDiskPolicy(context);
        CountlyUtil.updateDataReportEnable(z10);
        if (!z10) {
            INIT_SUCCESS = false;
        }
        Iterator<OnUpdateDataReportStatusListener> it2 = this.mOnUpdateDataReportStatusListenerList.iterator();
        while (it2.hasNext()) {
            it2.next().updateDataReportEnable(z10);
        }
        return z10 ? 1 : 0;
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void waitStreamUrl(String str) {
    }

    public void checkPlayingGame(UserInfo userInfo, String str, final OnGameIsAliveListener onGameIsAliveListener) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.checkPlayingGameRequest(userInfo, str, new OnGameIsAliveListener() { // from class: com.haima.hmcp.HmcpManager.12
                @Override // com.haima.hmcp.listeners.OnGameIsAliveListener
                public void fail(String str2) {
                    OnGameIsAliveListener onGameIsAliveListener2 = onGameIsAliveListener;
                    if (onGameIsAliveListener2 != null) {
                        onGameIsAliveListener2.fail(str2);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnGameIsAliveListener
                public void success(List<CheckCloudServiceResult.ChannelInfo> list) {
                    OnGameIsAliveListener onGameIsAliveListener2 = onGameIsAliveListener;
                    if (onGameIsAliveListener2 != null) {
                        onGameIsAliveListener2.success(list);
                    }
                }
            });
        }
    }

    @Deprecated
    public void gameArchived(String str, UserInfo userInfo, String str2, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        initRequestManager();
        if (!this.isDataReportEnabled) {
            if (onSaveGameCallBackListener != null) {
                onSaveGameCallBackListener.fail(getDataReportDisableMsg());
                return;
            } else {
                LogUtils.e(this.TAG, "gameArchived DataReport is disable and listener is null");
                return;
            }
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.gameArchived(str, userInfo, str2, new OnSaveGameCallBackListener() { // from class: com.haima.hmcp.HmcpManager.9
                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void fail(String str3) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.fail(str3);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void success(boolean z10) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.success(z10);
                    }
                }
            });
        }
    }

    @Deprecated
    public void getGameArchiveStatus(String str, UserInfo userInfo, String str2, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        initRequestManager();
        if (!this.isDataReportEnabled) {
            if (onSaveGameCallBackListener != null) {
                onSaveGameCallBackListener.fail(getDataReportDisableMsg());
                return;
            } else {
                LogUtils.e(this.TAG, "gameArchived DataReport is disable and listener is null");
                return;
            }
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.getGameArchiveStatus(str, userInfo, str2, new OnSaveGameCallBackListener() { // from class: com.haima.hmcp.HmcpManager.7
                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void fail(String str3) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.fail(str3);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void success(boolean z10) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.success(z10);
                    }
                }
            });
        }
    }

    public int getVideoViewType() {
        return this.renderType.get();
    }

    public void idcQuery(boolean z10, final String str, final String str2, final String str3, final String str4, final OnIdcQueryCallBackListener onIdcQueryCallBackListener) {
        if (TextUtils.isEmpty("") || !Constants.CONFIG_IS_COMPATIBLE_IPV6 || !z10) {
            idcQuery(str, str2, str3, "", str4, onIdcQueryCallBackListener);
            return;
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest == null) {
            return;
        }
        hmcpRequest.resetHttpStatus();
        this.mHmcpRequestManager.getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.HmcpManager.4
            @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
            public void fail(String str5) {
                HmcpManager.this.idcQuery(str, str2, str3, "", str4, onIdcQueryCallBackListener);
            }

            @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
            public void success(String str5) {
                HmcpManager.this.idcQuery(str, str2, str3, str5, str4, onIdcQueryCallBackListener);
            }
        });
    }

    public void init(Bundle bundle, Context context, OnInitCallBackListener onInitCallBackListener, boolean z10, boolean z11) {
        int i10;
        this.isJson = z10;
        if (bundle != null) {
            CountlyUtil.mChannelId = bundle.getString(CHANNEL_ID, "");
            String string = bundle.getString(ACCESS_KEY_ID, "");
            CountlyUtil.mAccessKey = string;
            CountlyUtil.mRegisterAccessKey = string;
            String string2 = bundle.getString(Language.LANGUAGE_CONFIG, "");
            if (TextUtils.isEmpty(string2) && AbsLanguageManager.IS_AUTO_BY_SYSTEM) {
                string2 = getSystemLocalStr(10);
                i10 = 10;
            } else {
                i10 = 0;
            }
            this.mLanguageManager.updateLanguage(string2, "SDK init", i10);
        }
        initInternal(context, onInitCallBackListener, z11);
    }

    @Deprecated
    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo userInfo, String str5, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userType = userInfo.userType;
        userInfo2.userLevel = userInfo.userLevel;
        setReleaseCid(str, str2, str3, str4, userInfo2, str5, null, null, onSaveGameCallBackListener);
    }

    public void testSpeed(boolean z10, final int i10, final String str, final String str2, final String str3, final String str4, final OnSpeedTestCallBackListener onSpeedTestCallBackListener) {
        if (TextUtils.isEmpty("") || !Constants.CONFIG_IS_COMPATIBLE_IPV6 || !z10) {
            testSpeed(i10, str, str2, str3, "", str4, onSpeedTestCallBackListener);
            return;
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest == null) {
            return;
        }
        hmcpRequest.resetHttpStatus();
        this.mHmcpRequestManager.getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.HmcpManager.3
            @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
            public void fail(String str5) {
                HmcpManager.this.testSpeed(i10, str, str2, str3, "", str4, onSpeedTestCallBackListener);
            }

            @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
            public void success(String str5) {
                HmcpManager.this.testSpeed(i10, str, str2, str3, str5, str4, onSpeedTestCallBackListener);
            }
        });
    }

    private void idcQuery(String str, String str2, String str3, String str4, OnIdcQueryCallBackListener onIdcQueryCallBackListener) {
        idcQuery(str, str2, str3, str4, "", onIdcQueryCallBackListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void testSpeed(int i10, String str, String str2, String str3, String str4, String str5, final OnSpeedTestCallBackListener onSpeedTestCallBackListener) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            IsSpeedTesting = true;
            this.mHmcpRequestManager.getSpecialInfo(i10, str, str2, str3, str4, str5, new OnSpeedTestCallBackListener() { // from class: com.haima.hmcp.HmcpManager.5
                @Override // com.haima.hmcp.listeners.OnSpeedTestCallBackListener
                public void onComplete(boolean z10, int i11, int i12) {
                    HmcpManager.IsSpeedTesting = false;
                    OnSpeedTestCallBackListener onSpeedTestCallBackListener2 = onSpeedTestCallBackListener;
                    if (onSpeedTestCallBackListener2 != null) {
                        onSpeedTestCallBackListener2.onComplete(z10, i11, i12);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void idcQuery(String str, String str2, String str3, String str4, String str5, final OnIdcQueryCallBackListener onIdcQueryCallBackListener) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.getSpecialInfo(str, str2, str3, str4, str5, new OnIdcQueryCallBackListener() { // from class: com.haima.hmcp.HmcpManager.6
                @Override // com.haima.hmcp.listeners.OnIdcQueryCallBackListener
                public void fail(String str6) {
                    OnIdcQueryCallBackListener onIdcQueryCallBackListener2 = onIdcQueryCallBackListener;
                    if (onIdcQueryCallBackListener2 != null) {
                        onIdcQueryCallBackListener2.fail(str6);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnIdcQueryCallBackListener
                public void success(String str6, String str7) {
                    OnIdcQueryCallBackListener onIdcQueryCallBackListener2 = onIdcQueryCallBackListener;
                    if (onIdcQueryCallBackListener2 != null) {
                        onIdcQueryCallBackListener2.success(str6, str7);
                    }
                }
            });
        }
    }

    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo2 userInfo2, Long l10, Long l11, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        setReleaseCid(str, str2, str3, str4, userInfo2, "", l10, l11, onSaveGameCallBackListener);
    }

    public void gameArchived(String str, UserInfo userInfo, String str2, String str3, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        initRequestManager();
        if (!this.isDataReportEnabled) {
            if (onSaveGameCallBackListener != null) {
                onSaveGameCallBackListener.fail(getDataReportDisableMsg());
                return;
            } else {
                LogUtils.e(this.TAG, "gameArchived DataReport is disable and listener is null");
                return;
            }
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.gameArchived(str, userInfo, str2, str3, new OnSaveGameCallBackListener() { // from class: com.haima.hmcp.HmcpManager.10
                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void fail(String str4) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.fail(str4);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void success(boolean z10) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.success(z10);
                    }
                }
            });
        }
    }

    public void getGameArchiveStatus(String str, UserInfo userInfo, String str2, String str3, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        initRequestManager();
        if (!this.isDataReportEnabled) {
            if (onSaveGameCallBackListener != null) {
                onSaveGameCallBackListener.fail(getDataReportDisableMsg());
                return;
            } else {
                LogUtils.e(this.TAG, "gameArchived DataReport is disable and listener is null");
                return;
            }
        }
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.getGameArchiveStatus(str, userInfo, str2, str3, new OnSaveGameCallBackListener() { // from class: com.haima.hmcp.HmcpManager.8
                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void fail(String str4) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.fail(str4);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void success(boolean z10) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.success(z10);
                    }
                }
            });
        }
    }

    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo2 userInfo2, Long l10, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        setReleaseCid(str, str2, str3, str4, userInfo2, "", l10, null, onSaveGameCallBackListener);
    }

    public void getResolutionInfos(String str, String str2, String str3, OnGetResolutionsCallBackListener onGetResolutionsCallBackListener) {
        getResolutionInfos(str, str2, str3, StreamType.RTMP, onGetResolutionsCallBackListener);
    }

    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo2 userInfo2, String str5, Long l10, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        setReleaseCid(str, str2, str3, str4, userInfo2, str5, l10, null, onSaveGameCallBackListener);
    }

    public void getResolutionInfos(String str, String str2, OnGetResolutionsCallBackListener onGetResolutionsCallBackListener) {
        getResolutionInfos(str, str2, "", onGetResolutionsCallBackListener);
    }

    @Deprecated
    public void init(Context context, OnInitCallBackListener onInitCallBackListener) {
        LogUtils.d(this.TAG, "init(Context context, final OnInitCallBackListener callBack)");
        initInternal(context, onInitCallBackListener, false);
    }

    public void setReleaseCid(String str, String str2, String str3, String str4, UserInfo2 userInfo2, String str5, Long l10, Long l11, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        initRequestManager();
        HmcpRequest hmcpRequest = this.mHmcpRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetHttpStatus();
            this.mHmcpRequestManager.setReleaseCid(str, str2, str3, str4, userInfo2, str5, l10, l11, new OnSaveGameCallBackListener() { // from class: com.haima.hmcp.HmcpManager.11
                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void fail(String str6) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.fail(str6);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSaveGameCallBackListener
                public void success(boolean z10) {
                    OnSaveGameCallBackListener onSaveGameCallBackListener2 = onSaveGameCallBackListener;
                    if (onSaveGameCallBackListener2 != null) {
                        onSaveGameCallBackListener2.success(z10);
                    }
                }
            });
        }
    }

    public void testSpeed(int i10, String str, String str2, String str3, OnSpeedTestCallBackListener onSpeedTestCallBackListener) {
        testSpeed(i10, str, str2, str3, "", "", onSpeedTestCallBackListener);
    }
}
