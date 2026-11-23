package com.windmill.sdk.strategy;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.volley.VolleyError;
import com.windmill.sdk.WMAdnInitConfig;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.Android;
import com.windmill.sdk.models.ChannelConfig;
import com.windmill.sdk.models.Common;
import com.windmill.sdk.models.CommonEndpointsConfig;
import com.windmill.sdk.models.SdkConfig;
import com.windmill.sdk.models.SdkConfigResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class WMSdkConfig {
    private static final String CONFIG_FILE_NAME = "/tb_config";
    private static final String SDK_CONFIG_URL = "https://tm.sigmob.cn/w/config";
    private static final String SDK_CONFIG_URL_BACK = "https://c.tobidad.cn/w/config";
    private static final String SDK_CONFIG_VER = "sdkConfigVer";
    private static final String SDK_GDPR_URL = "https://tm.sigmob.cn/extconfig?";
    public static String _TIMEOUT = "_timeout";
    private static String backupConfigUrl = "";
    private static WMSdkConfig gInstance = null;
    private static Handler handler = null;
    private static boolean isRetry = false;
    private static String lance = "";
    private static boolean mIsGDPRRegion;
    private static Runnable runnable;
    private a mOnSDKUpdateListener;
    private static ConcurrentHashMap<String, b> initListenerMap = new ConcurrentHashMap<>();
    private static SdkConfig rewardSdkConfig = null;
    private final String ver = "tb-4.8.7";
    private long mRefreshTimeMillis = 0;
    private SdkConfig mSdkConfig = null;
    private SdkConfig mDefaultSDKConfig = null;
    private String STRATEGY_URL = "https://tm.sigmob.cn/strategy/v6";
    private String BIDDING_URL = "https://tm.sigmob.cn/waterfall/v1";
    private String SDK_LOG_URL = "https://dc.sigmob.cn/log";
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Runnable mRefreshRunnable = new Runnable() { // from class: com.windmill.sdk.strategy.WMSdkConfig.1
        @Override // java.lang.Runnable
        public void run() {
            WMSdkConfig.this.scheduleRefreshSDKConfigRunnable();
        }
    };
    private boolean mCurrentAutoRefreshStatus = true;

    public interface a {
        void a();
    }

    public interface b {
        void a(VolleyError volleyError);

        void a(SdkConfig config);
    }

    private WMSdkConfig() {
        initDefaultSDKConfig();
        loadFromFile();
    }

    public static void addSDKInitConfigListener(String loadId, b sdkInitConfigListener) {
        try {
            initListenerMap.put(loadId, sdkInitConfigListener);
            if (rewardSdkConfig != null && sdkInitConfigListener != null) {
                WMLogUtil.i("------addSDKInitConfigListener: " + rewardSdkConfig.hashCode());
                sdkInitConfigListener.a(rewardSdkConfig);
            }
            if (rewardSdkConfig == null) {
                handler = new Handler(WindMillAd.sharedAds().getHandler().getLooper());
                runnable = new Runnable() { // from class: com.windmill.sdk.strategy.WMSdkConfig.2
                    @Override // java.lang.Runnable
                    public void run() {
                        WMSdkConfig.handListener();
                    }
                };
                handler.postDelayed(runnable, (sharedInstance().mSdkConfig == null || sharedInstance().mSdkConfig.android_config == null || sharedInstance().mSdkConfig.android_config.init_sync_timeout.intValue() <= 0) ? 2000L : sharedInstance().mSdkConfig.android_config.init_sync_timeout.intValue());
            }
        } catch (Exception unused) {
        }
    }

    private void cancelRefreshTimer() {
        Handler handler2 = this.mHandler;
        if (handler2 != null) {
            handler2.removeCallbacks(this.mRefreshRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBackupConfigUrl() {
        try {
            String str = getCommonConfig().endpoints.config;
            if (!TextUtils.isEmpty(str)) {
                if (str.indexOf(63) == -1) {
                    return str + "?" + getServerQueryString();
                }
                return str + x.a.f97576d + getServerQueryString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "https://c.tobidad.cn/w/config?" + getServerQueryString();
    }

    public static String getConfigUrl() {
        if (!TextUtils.isEmpty(backupConfigUrl)) {
            return backupConfigUrl;
        }
        if (TextUtils.isEmpty(lance)) {
            return "https://tm.sigmob.cn/w/config?" + getServerQueryString();
        }
        return lance + "?" + getServerQueryString();
    }

    public static String getGDPRRegionURL() {
        return SDK_GDPR_URL + getServerQueryString();
    }

    public static String getServerQueryString() {
        return "appId=" + WindMillAd.sharedAds().getAppId() + x.a.f97576d + "sdkVersion=4.8.7";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handListener() {
        ConcurrentHashMap<String, b> concurrentHashMap = initListenerMap;
        if (concurrentHashMap != null) {
            if (sharedInstance().mSdkConfig != null) {
                rewardSdkConfig = sharedInstance().mSdkConfig;
            }
            for (b bVar : concurrentHashMap.values()) {
                SdkConfig sdkConfig = rewardSdkConfig;
                if (sdkConfig != null) {
                    bVar.a(sdkConfig);
                } else {
                    bVar.a((VolleyError) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUpdateConfig(SdkConfig config) {
        Common common;
        if (config == null || (common = config.common_config) == null) {
            return;
        }
        this.mSdkConfig = config;
        this.mRefreshTimeMillis = common.configRefresh.intValue() * 1000;
        a aVar = this.mOnSDKUpdateListener;
        if (aVar != null) {
            aVar.a();
        }
        Config.sharedInstance().update(mIsGDPRRegion, isDisableBootMark(), getOaidApiDisable(), getDisable_up_OAid(), getLogUrl(), getSendLogInterval(), getMaxSendLogRecords(), getLog_enc());
        TrackManager.getInstance().setRetryExpiredTime(getTracking_expiration_time());
        TrackManager.getInstance().setRetryInterval(getTracking_retry_interval());
    }

    private void initDefaultSDKConfig() {
        if (this.mDefaultSDKConfig == null) {
            SdkConfig.Builder builder = new SdkConfig.Builder();
            Common.Builder builder2 = new Common.Builder();
            Android.Builder builder3 = new Android.Builder();
            CommonEndpointsConfig.Builder builder4 = new CommonEndpointsConfig.Builder();
            builder4.log(this.SDK_LOG_URL);
            builder4.strategy(this.STRATEGY_URL);
            builder4.bidding_url(this.BIDDING_URL);
            builder4.config(SDK_CONFIG_URL_BACK);
            builder2.endpoints(builder4.build());
            builder2.configRefresh(1000);
            Boolean bool = Boolean.TRUE;
            builder2.disable_up_location(bool);
            Boolean bool2 = Boolean.FALSE;
            builder2.is_gdpr_region(bool2);
            builder2.enable_debug_level(bool2);
            builder3.disable_boot_mark(bool);
            builder3.oaid_api_is_disable(bool);
            builder3.enable_permission(bool2);
            builder3.enable_report_crash(bool2);
            builder3.gm_price_percent(Android.DEFAULT_GM_PRICE_PERCENT);
            builder3.quick_app_schema = new ArrayList();
            builder3.redirect_link_collection_switch(bool2);
            builder3.redirect_link_collection_ratio(0);
            builder.common_config(builder2.build());
            builder.android_config(builder3.build());
            builder.channel_configs(new HashMap());
            this.mDefaultSDKConfig = builder.build();
        }
    }

    public static boolean isGDPRRegion() {
        return mIsGDPRRegion;
    }

    private void loadConfig() {
        SigmobRequestQueue requestQueue = Networking.getRequestQueue();
        h hVar = new h(getConfigUrl(), new h.a() { // from class: com.windmill.sdk.strategy.WMSdkConfig.3
            @Override // com.windmill.sdk.strategy.h.a
            public void a(SdkConfigResponse sdkConfigResponse) throws Throwable {
                WMLogUtil.dd(WMLogUtil.TAG, "SdkConfigResponse:" + sdkConfigResponse.toString());
                boolean unused = WMSdkConfig.isRetry = false;
                SdkConfig sdkConfig = sdkConfigResponse.config;
                if (sdkConfigResponse.code.intValue() != 0 || sdkConfig == null) {
                    WMLogUtil.e("ConfigResponseError:" + sdkConfigResponse.error_message);
                } else {
                    WMSdkConfig.this.handleUpdateConfig(sdkConfig);
                    WMSdkConfig.this.saveToFile(sdkConfig);
                }
                WMSdkConfig.this.scheduleRefreshTimerIfEnabled();
            }

            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                WMLogUtil.e("ConfigResponseError:" + error.toString());
                String unused = WMSdkConfig.backupConfigUrl = WMSdkConfig.this.getBackupConfigUrl();
                if (WMSdkConfig.isRetry) {
                    WMSdkConfig.this.scheduleRefreshTimerIfEnabled();
                } else {
                    boolean unused2 = WMSdkConfig.isRetry = true;
                    WMSdkConfig.this.mHandler.post(WMSdkConfig.this.mRefreshRunnable);
                }
            }
        });
        if (requestQueue == null) {
            WMLogUtil.e("queue is null");
            scheduleRefreshTimerIfEnabled();
        } else {
            requestQueue.add(hVar);
            WMLogUtil.i(WMLogUtil.TAG, "start update sdk config");
        }
    }

    private void loadFromFile() {
        if (ClientMetadata.getInstance() == null) {
            handleUpdateConfig(this.mDefaultSDKConfig);
            return;
        }
        ObjectInputStream objectInputStream = null;
        String string = com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).getString(SDK_CONFIG_VER, null);
        File file = new File(com.windmill.sdk.utils.e.b() + CONFIG_FILE_NAME);
        if ("tb-4.8.7".equals(string)) {
            try {
                if (file.exists()) {
                    try {
                        ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
                        try {
                            SdkConfig sdkConfigDecode = SdkConfig.ADAPTER.decode(objectInputStream2);
                            handleUpdateConfig(sdkConfigDecode);
                            preInitAdn(sdkConfigDecode);
                            objectInputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            objectInputStream = objectInputStream2;
                            try {
                                handleUpdateConfig(this.mDefaultSDKConfig);
                                WMLogUtil.e(th.getMessage());
                                if (objectInputStream == null) {
                                    return;
                                } else {
                                    objectInputStream.close();
                                }
                            } catch (Throwable th2) {
                                if (objectInputStream != null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th3) {
                                        WMLogUtil.e(th3.getMessage());
                                    }
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    return;
                }
            } catch (Throwable th5) {
                WMLogUtil.e(th5.getMessage());
                return;
            }
        }
        handleUpdateConfig(this.mDefaultSDKConfig);
    }

    private void preInitAdn(SdkConfig sdkConfig) {
        try {
            Map<Integer, ChannelConfig> map = sdkConfig.channel_configs;
            if (map == null || map.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<Integer, ChannelConfig> entry : map.entrySet()) {
                Integer key = entry.getKey();
                ChannelConfig value = entry.getValue();
                if (!TextUtils.isEmpty(value.channel_appId)) {
                    arrayList.add(new WMAdnInitConfig(key.intValue(), value.channel_appId, value.channel_appkey));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            com.windmill.sdk.common.h.a().a(ClientMetadata.getInstance().getContext(), arrayList);
        } catch (Throwable unused) {
        }
    }

    public static void removeInitConfigListener(String loadId) {
        ConcurrentHashMap<String, b> concurrentHashMap = initListenerMap;
        if (concurrentHashMap != null) {
            concurrentHashMap.remove(loadId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveToFile(SdkConfig sdkConfig) throws Throwable {
        if (sdkConfig == null) {
            return;
        }
        File file = new File(com.windmill.sdk.utils.e.b() + CONFIG_FILE_NAME);
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(file));
                    try {
                        sdkConfig.encode(objectOutputStream2);
                        com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).edit().putString(SDK_CONFIG_VER, "tb-4.8.7").apply();
                        objectOutputStream2.close();
                    } catch (IOException e10) {
                        e = e10;
                        objectOutputStream = objectOutputStream2;
                        WMLogUtil.e(e.getMessage());
                        if (objectOutputStream == null) {
                        } else {
                            objectOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        if (objectOutputStream != null) {
                            try {
                                objectOutputStream.close();
                            } catch (IOException e11) {
                                WMLogUtil.e(e11.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e = e12;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            WMLogUtil.e(e13.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefreshSDKConfigRunnable() {
        if (ClientMetadata.getInstance() == null) {
            return;
        }
        if (ClientMetadata.getInstance().isNetworkConnected(getConfigUrl()) && com.windmill.sdk.common.c.b()) {
            loadConfig();
        } else {
            WMLogUtil.e("Can't load an ad because  is no network or can not CollectPersonalInformation");
            scheduleRefreshTimerIfEnabled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefreshTimerIfEnabled() {
        cancelRefreshTimer();
        if (this.mCurrentAutoRefreshStatus) {
            this.mHandler.postDelayed(this.mRefreshRunnable, Math.max(30000L, this.mRefreshTimeMillis));
        }
    }

    public static WMSdkConfig sharedInstance() {
        if (gInstance == null) {
            synchronized (WMSdkConfig.class) {
                if (gInstance == null) {
                    gInstance = new WMSdkConfig();
                }
            }
        }
        return gInstance;
    }

    public int enableReport_log() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return 0;
        }
        return getAndroidConfig().report_log.intValue();
    }

    public Android getAndroidConfig() {
        return getSdkConfig().android_config;
    }

    public String getBiddingUrl() {
        String str = getCommonConfig().endpoints.bidding_url;
        if (TextUtils.isEmpty(str)) {
            return this.BIDDING_URL + "?" + getServerQueryString();
        }
        if (str.indexOf(63) == -1) {
            return str + "?" + getServerQueryString();
        }
        return str + x.a.f97576d + getServerQueryString();
    }

    public Map<Integer, ChannelConfig> getChannelConfigs() {
        return getSdkConfig().channel_configs;
    }

    public Common getCommonConfig() {
        return getSdkConfig().common_config;
    }

    public int getDisable_up_OAid() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return 0;
        }
        return getAndroidConfig().disable_up_oaid.intValue();
    }

    public List<String> getGMPricePackages() {
        return (getSdkConfig() == null || getAndroidConfig() == null) ? new ArrayList() : getAndroidConfig().gm_price_packages;
    }

    public int getGMPricePercent() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return 0;
        }
        return getAndroidConfig().gm_price_percent.intValue();
    }

    public long getLoadPeriodTime() {
        Integer num = getCommonConfig().load_interval;
        if (num == null || num.intValue() < 1) {
            return 0L;
        }
        return num.intValue() * 1000;
    }

    public List<Integer> getLogBlackList() {
        return getCommonConfig().dclog_blacklist;
    }

    public String getLogUrl() {
        String str = getCommonConfig().endpoints.log;
        if (TextUtils.isEmpty(str)) {
            return this.SDK_LOG_URL + "?" + getServerQueryString();
        }
        if (str.indexOf(63) == -1) {
            return str + "?" + getServerQueryString();
        }
        return str + x.a.f97576d + getServerQueryString();
    }

    public boolean getLog_enc() {
        if (getCommonConfig() != null) {
            return getCommonConfig().log_enc.booleanValue();
        }
        return false;
    }

    public int getMaxSendLogRecords() {
        int iIntValue = getCommonConfig().max_send_log_records.intValue();
        if (iIntValue < 10) {
            return 100;
        }
        return iIntValue;
    }

    public boolean getOaidApiDisable() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return true;
        }
        return getAndroidConfig().oaid_api_is_disable.booleanValue();
    }

    public List<String> getQuickAppSchemes() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return null;
        }
        return getAndroidConfig().quick_app_schema;
    }

    public int getQuickAppSchenemCollectionRatio() {
        Integer num;
        if (getSdkConfig() == null || getAndroidConfig() == null || (num = getAndroidConfig().redirect_link_collection_ratio) == null) {
            return 0;
        }
        return num.intValue();
    }

    public long getReadyExpired() {
        int iIntValue = getCommonConfig().ready_expire_timestamp.intValue();
        if (iIntValue < 1) {
            iIntValue = 900;
        }
        return ((long) iIntValue) * 1000;
    }

    public SdkConfig getSdkConfig() {
        SdkConfig sdkConfig = this.mSdkConfig;
        return sdkConfig == null ? this.mDefaultSDKConfig : sdkConfig;
    }

    public int getSendLogInterval() {
        int iIntValue = getCommonConfig().send_log_interval.intValue();
        if (iIntValue < 3) {
            return 3;
        }
        return iIntValue;
    }

    public String getStrategyUrl() {
        String str = getCommonConfig().endpoints.strategy;
        if (TextUtils.isEmpty(str)) {
            return this.STRATEGY_URL + "?" + getServerQueryString();
        }
        if (str.indexOf(63) == -1) {
            return str + "?" + getServerQueryString();
        }
        return str + x.a.f97576d + getServerQueryString();
    }

    public int getTracking_expiration_time() {
        if (getCommonConfig() == null || getCommonConfig().tracking_expiration_time.intValue() < 1) {
            return 86400;
        }
        return getCommonConfig().tracking_expiration_time.intValue();
    }

    public int getTracking_retry_interval() {
        if (getCommonConfig() == null || getCommonConfig().tracking_retry_interval.intValue() < 10) {
            return 180;
        }
        return getCommonConfig().tracking_retry_interval.intValue();
    }

    public boolean isDisableBootMark() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return true;
        }
        return getAndroidConfig().disable_boot_mark.booleanValue();
    }

    public boolean isDisable_up_location() {
        if (getSdkConfig() == null || getCommonConfig().disable_up_location == null) {
            return true;
        }
        return getCommonConfig().disable_up_location.booleanValue();
    }

    public boolean isEnableAppCheck() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return false;
        }
        return getAndroidConfig().redirect_link_collection_switch.booleanValue();
    }

    public boolean isEnableGmPriceCache() {
        return getSdkConfig() == null || getAndroidConfig() == null || getAndroidConfig().gm_price_cache_switch.intValue() != 2;
    }

    public boolean isEnable_debug_level() {
        if (getSdkConfig() == null || getCommonConfig().enable_debug_level == null) {
            return false;
        }
        return getCommonConfig().enable_debug_level.booleanValue();
    }

    public boolean isEnable_permission() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return false;
        }
        return getAndroidConfig().enable_permission.booleanValue();
    }

    public boolean isEnable_report_crash() {
        if (getSdkConfig() == null || getAndroidConfig() == null) {
            return false;
        }
        return getAndroidConfig().enable_report_crash.booleanValue();
    }

    public long loadAdTimeout(String key) {
        int i10 = 0;
        try {
            i10 = com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).getInt(key + _TIMEOUT, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i10;
    }

    public WMSdkConfig setOnSDKUpdateListener(a onSDKUpdateListener) {
        this.mOnSDKUpdateListener = onSDKUpdateListener;
        return gInstance;
    }

    public void startUpdate() {
        cancelRefreshTimer();
        Handler handler2 = this.mHandler;
        if (handler2 != null) {
            handler2.post(this.mRefreshRunnable);
        }
    }
}
