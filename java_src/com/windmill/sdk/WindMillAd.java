package com.windmill.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.exceptions.CrashHandler;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.JsonRequest;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.kuaishou.weapon.p0.g;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.windad.consent.ConsentStatus;
import com.sigmob.windad.consent.WindAdConsentInformation;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.c;
import com.windmill.sdk.common.h;
import com.windmill.sdk.common.o;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import com.windmill.sdk.models.WMFilter;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWMCommon;
import com.windmill.sdk.point.PointEntityWMCrash;
import com.windmill.sdk.point.PointType;
import com.windmill.sdk.strategy.WMSdkConfig;
import com.windmill.sdk.strategy.d;
import com.windmill.sdk.utils.e;
import com.windmill.sdk.utils.f;
import com.windmill.sdk.utils.i;
import com.windmill.sdk.utils.l;
import com.windmill.sdk.utils.m;
import com.windmill.sdk.utils.n;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class WindMillAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile WindMillAd f86512a = null;
    public static String mAppId = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static HandlerThread f86513o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f86515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<Activity> f86516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f86517e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f86523k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WMAdConfig f86524l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WMNetworkInitListener f86525m;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private WMNetworkConfig f86529r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86514b = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WindMillUserAgeStatus f86518f = WindMillUserAgeStatus.WindAgeRestrictedStatusUnknown;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WindMillConsentStatus f86519g = WindMillConsentStatus.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f86520h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f86521i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f86522j = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private StringBuffer f86526n = new StringBuffer();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f86527p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f86528q = "";

    /* JADX INFO: renamed from: com.windmill.sdk.WindMillAd$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86534a;

        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f86534a = iArr;
            try {
                iArr[ConsentStatus.ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86534a[ConsentStatus.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86534a[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface WindMillAdInitListener {
        void onInitFailed(int errorCode, String errorMsg);

        void onInitSuccess();
    }

    private WindMillAd() {
        mAppId = "";
        this.f86517e = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ImageManager.with(this.f86515c).clearCache();
    }

    private WindMillConsentStatus e() {
        try {
            getUserGDPRConsentStatus();
            WindMillConsentStatus windMillConsentStatus = this.f86519g;
            WindMillConsentStatus windMillConsentStatus2 = WindMillConsentStatus.UNKNOWN;
            if (windMillConsentStatus == windMillConsentStatus2) {
                int i10 = AnonymousClass3.f86534a[WindAdConsentInformation.getInstance(this.f86515c).getConsentStatus().ordinal()];
                if (i10 == 1) {
                    setUserGDPRConsentStatus(WindMillConsentStatus.ACCEPT);
                } else if (i10 == 2) {
                    setUserGDPRConsentStatus(WindMillConsentStatus.DENIED);
                } else if (i10 == 3) {
                    setUserGDPRConsentStatus(windMillConsentStatus2);
                }
            }
        } catch (Throwable unused) {
        }
        return this.f86519g;
    }

    private void f() {
        try {
            if (this.f86529r != null) {
                h.a().a(this.f86515c, this.f86529r.getAdnInitConfigList());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String getUserId() {
        return ClientMetadata.getUserId();
    }

    public static String getVersion() {
        return WMConstants.SDK_VERSION;
    }

    public static boolean isMainUI() {
        try {
            return Looper.getMainLooper().getThread().equals(Thread.currentThread());
        } catch (Exception unused) {
            return false;
        }
    }

    public static void requestPermission(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 23) {
            return;
        }
        boolean zIsPermissionGranted = ClientMetadata.isPermissionGranted(activity, g.f74779c);
        boolean zIsPermissionGranted2 = ClientMetadata.isPermissionGranted(activity, g.f74786j);
        boolean zIsPermissionGranted3 = ClientMetadata.isPermissionGranted(activity, g.f74783g);
        if (zIsPermissionGranted && zIsPermissionGranted2 && zIsPermissionGranted3) {
            return;
        }
        activity.requestPermissions(new String[]{g.f74779c, g.f74786j, g.f74783g}, 0);
    }

    public static void setUserId(String userId) {
        ClientMetadata.setUserId(userId);
    }

    public static WindMillAd sharedAds() {
        if (f86512a == null) {
            synchronized (WindMillAd.class) {
                if (f86512a == null) {
                    f86512a = new WindMillAd();
                    SigmobLog.setSdkHandlerLevel(Level.INFO);
                }
            }
        }
        return f86512a;
    }

    public void addFilter(WMFilter filter) {
        if (filter instanceof WMWaterfallFilter) {
            synchronized (this) {
                d.a().a(filter);
            }
        }
    }

    public void addQuickAppScheme(String scheme) {
        com.windmill.sdk.utils.g.a(scheme);
    }

    public boolean canCollectPersonalInformation() {
        return c.b();
    }

    public void enableQuickAppCheck(boolean enableQuickAppCheck) {
        com.windmill.sdk.utils.g.a(enableQuickAppCheck);
    }

    public WMAdConfig getAdConfig() {
        return this.f86524l;
    }

    public WindMillUserAgeStatus getAgeRestrictedStatus() {
        Context context;
        try {
            WindMillUserAgeStatus windMillUserAgeStatus = this.f86518f;
            WindMillUserAgeStatus windMillUserAgeStatus2 = WindMillUserAgeStatus.WindAgeRestrictedStatusUnknown;
            if (windMillUserAgeStatus == windMillUserAgeStatus2 && (context = this.f86515c) != null) {
                int i10 = n.a(context).getInt(Constants.AGE_RESTRICTED_STATUS, windMillUserAgeStatus2.getValue());
                WindMillUserAgeStatus windMillUserAgeStatus3 = WindMillUserAgeStatus.WindAgeRestrictedStatusNO;
                if (i10 == windMillUserAgeStatus3.getValue()) {
                    this.f86518f = windMillUserAgeStatus3;
                } else {
                    WindMillUserAgeStatus windMillUserAgeStatus4 = WindMillUserAgeStatus.WindAgeRestrictedStatusYES;
                    if (i10 == windMillUserAgeStatus4.getValue()) {
                        this.f86518f = windMillUserAgeStatus4;
                    } else {
                        this.f86518f = windMillUserAgeStatus2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return this.f86518f;
    }

    public String getAppId() {
        return mAppId;
    }

    public Context getContext() {
        return this.f86515c.getApplicationContext();
    }

    public Handler getHandler() {
        if (this.f86517e == null) {
            this.f86517e = new Handler(Looper.getMainLooper());
        }
        return this.f86517e;
    }

    public WMNetworkInitListener getNetworkInitListener() {
        return this.f86525m;
    }

    public String getOaidVersion() {
        return this.f86523k;
    }

    public Looper getTobidHandlerLooper() {
        Looper looper;
        synchronized (this) {
            try {
                try {
                    if (f86513o == null) {
                        f86513o = new HandlerThread("Tobid_HandlerThread");
                    }
                    if (!f86513o.isAlive()) {
                        f86513o.start();
                    }
                    looper = f86513o.getLooper();
                } catch (Exception unused) {
                    return Looper.getMainLooper();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public int getUserAge() {
        Context context;
        try {
            if (this.f86522j == 0 && (context = this.f86515c) != null) {
                this.f86522j = n.a(context).getInt(Constants.USER_AGE, 0);
            }
        } catch (Throwable unused) {
        }
        return this.f86522j;
    }

    public WindMillConsentStatus getUserGDPRConsentStatus() {
        Context context;
        WindMillConsentStatus windMillConsentStatus = this.f86519g;
        WindMillConsentStatus windMillConsentStatus2 = WindMillConsentStatus.UNKNOWN;
        if (windMillConsentStatus == windMillConsentStatus2 && (context = this.f86515c) != null) {
            try {
                int i10 = n.a(context).getInt(Constants.GDPR_CONSENT_STATUS, windMillConsentStatus2.getValue());
                WindMillConsentStatus windMillConsentStatus3 = WindMillConsentStatus.ACCEPT;
                if (i10 == windMillConsentStatus3.getValue()) {
                    this.f86519g = windMillConsentStatus3;
                } else {
                    WindMillConsentStatus windMillConsentStatus4 = WindMillConsentStatus.DENIED;
                    if (i10 == windMillConsentStatus4.getValue()) {
                        this.f86519g = windMillConsentStatus4;
                    } else {
                        this.f86519g = windMillConsentStatus2;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return this.f86519g;
    }

    public String getWxOpenAppId() {
        return this.f86528q;
    }

    public void initCustomMap(Map<String, String> map) {
        d.a().a(map);
    }

    public void initPlacementCustomMap(String placementId, Map<String, String> map) {
        d.a().a(placementId, map);
    }

    public boolean initSDK(Context context, String appId, WindMillAdInitListener initListener) {
        synchronized (this) {
            if (context != null) {
                if (!TextUtils.isEmpty(appId)) {
                    if (202 < l.a()) {
                        throw new SecurityException("please integration right common version and must be equal or higher than " + l.a());
                    }
                    if (!this.f86514b) {
                        try {
                            WMLogUtil.d("-----initSDK:version " + getVersion() + " c_version202");
                            mAppId = appId;
                            this.f86515c = context.getApplicationContext();
                            d.a().b().put("installTime", i.a(this.f86515c));
                            String strA = e.a(this.f86515c, WMConstants.SDK_FOLDER);
                            if (!TextUtils.isEmpty(strA)) {
                                this.f86526n.append(strA);
                            }
                            ClientMetadata.getInstance().initialize(this.f86515c);
                            a(this.f86515c);
                            WMAdConfig wMAdConfig = this.f86524l;
                            if (wMAdConfig == null || wMAdConfig.getCustomController() == null) {
                                com.windmill.sdk.utils.d.a().a((WMCustomController) null);
                            } else {
                                com.windmill.sdk.utils.d.a().a(this.f86524l.getCustomController());
                            }
                            try {
                                com.windmill.sdk.strategy.i.a().a(this.f86515c);
                                com.windmill.sdk.strategy.c.a().b();
                            } catch (Exception e10) {
                                this.f86526n.append("WMFrequencyManager: " + e10.getMessage());
                            }
                            c.a().a(this.f86515c);
                            c.a().a(this.f86521i, false);
                            c.a().b(this.f86520h, false);
                            c.a().a(getUserAge(), false);
                            c.a().b(getAgeRestrictedStatus().getValue(), false);
                            c.a().c(e().getValue(), false);
                            o.a((Application) context.getApplicationContext());
                            f();
                            b();
                            SharedPreferences sharedPreferencesA = n.a(this.f86515c);
                            String string = sharedPreferencesA.getString(WMConstants.INIT_STATUS, "");
                            if (TextUtils.isEmpty(string)) {
                                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                                editorEdit.putString(WMConstants.INIT_STATUS, "1");
                                editorEdit.commit();
                            } else if (string.equals("1")) {
                                SharedPreferences.Editor editorEdit2 = sharedPreferencesA.edit();
                                editorEdit2.putString(WMConstants.INIT_STATUS, "2");
                                editorEdit2.commit();
                            }
                            this.f86514b = true;
                            if (initListener != null) {
                                initListener.onInitSuccess();
                                if (!TextUtils.isEmpty(this.f86526n.toString())) {
                                    m.a("error", PointCategory.INIT_EXCEPTION, null, null, null, WindMillError.ERROR_INIT_FAIL.getErrorCode(), "", this.f86526n.toString(), null);
                                }
                            }
                            com.windmill.sdk.utils.h.a(context, appId);
                        } catch (Throwable th) {
                            try {
                                StringWriter stringWriter = new StringWriter();
                                th.printStackTrace(new PrintWriter(stringWriter));
                                String string2 = stringWriter.toString();
                                if (!this.f86514b && initListener != null) {
                                    initListener.onInitFailed(WindMillError.ERROR_INIT_FAIL.getErrorCode(), string2);
                                }
                                WMLogUtil.d("----startWithOptions throwable:" + th.getMessage() + " " + string2);
                                m.a("error", "init", null, null, null, WindMillError.ERROR_INIT_FAIL.getErrorCode(), "", string2, null);
                            } catch (Throwable th2) {
                                th2.printStackTrace();
                            }
                        }
                    } else if (initListener != null) {
                        initListener.onInitSuccess();
                    }
                    WMLogUtil.d("already startWithOptions");
                    return this.f86514b;
                }
            }
            WMLogUtil.d("startWithOptions with invalid parameter!");
            if (initListener != null) {
                initListener.onInitFailed(WindMillError.ERROR_INIT_FAIL.getErrorCode(), "AppId 为空或者context为空");
            }
            return false;
        }
    }

    public boolean isAdult() {
        return this.f86521i;
    }

    public boolean isInit() {
        return this.f86514b;
    }

    public synchronized boolean isNeedInit(Integer channelId) {
        try {
            synchronized (this) {
                WMCustomAdapterProxy wMCustomAdapterProxyA = h.a().a(channelId);
                boolean z10 = true;
                if (wMCustomAdapterProxyA == null) {
                    return true;
                }
                if (wMCustomAdapterProxyA.getInitStatus() != -1 && wMCustomAdapterProxyA.getInitStatus() != 1) {
                    z10 = false;
                }
                return z10;
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean isPersonalizedAdvertisingOn() {
        return this.f86520h;
    }

    public int isQuickApp(Intent intent) {
        return com.windmill.sdk.utils.g.a(intent);
    }

    public boolean isSupportMultiProcess() {
        return this.f86527p;
    }

    public void removeFilterWithPlacementIds(String... tobidIds) {
        synchronized (this) {
            d.a().a(tobidIds);
        }
    }

    public void removeFilters() {
        synchronized (this) {
            d.a().g();
        }
    }

    @Deprecated
    public void removeIdsFilter(String... tobidIds) {
        synchronized (this) {
            d.a().a(tobidIds);
        }
    }

    public void reportSceneExposure(String sceneId, String sceneDesc) {
        synchronized (this) {
            if (TextUtils.isEmpty(sceneId)) {
                return;
            }
            PointEntityWMCommon pointEntityWMCommon = new PointEntityWMCommon();
            pointEntityWMCommon.setAc_type(PointType.WIND_MILL_SCENE);
            pointEntityWMCommon.setCategory(PointCategory.SCENE_SHOW);
            pointEntityWMCommon.setSceneId(sceneId);
            if (!TextUtils.isEmpty(sceneDesc)) {
                pointEntityWMCommon.setSceneId(sceneDesc);
            }
            pointEntityWMCommon.setIs_mediation("1");
            pointEntityWMCommon.commit();
        }
    }

    public void setAdult(boolean isAdult) {
        this.f86521i = isAdult;
        if (this.f86514b) {
            c.a().a(this.f86521i, true);
        }
    }

    public void setDebugEnable(boolean enable) {
        WMLogUtil.isEnableLog = enable;
        SigmobLog.setSdkHandlerLevel(enable ? Level.INFO : Level.SEVERE);
    }

    @Deprecated
    public void setFilterNetworkFirmIdList(String placementId, List<String> networkFirmIdList) {
        synchronized (this) {
            d.a().a(placementId, networkFirmIdList);
        }
    }

    public void setInitNetworkConfig(WMNetworkConfig networkConfig) {
        this.f86529r = networkConfig;
    }

    public void setIsAgeRestrictedUser(WindMillUserAgeStatus ageRestrictedUserStatus) {
        this.f86518f = ageRestrictedUserStatus;
        if (this.f86514b) {
            c.a().b(this.f86518f.getValue(), true);
        }
    }

    public void setLocalStrategyAssetPath(Context context, String dirName) {
        synchronized (this) {
            d.a().a(context, dirName);
        }
    }

    public void setNetworkInitListener(WMNetworkInitListener listener) {
        this.f86525m = new f(listener);
    }

    public void setOAIDCertPem(String certPem) {
        try {
            ClientMetadata.setOAIDCertPem(certPem);
        } catch (Throwable unused) {
            SigmobLog.e("not support OAID Module");
        }
    }

    public void setOaidVersion(String oaidVersion) {
        this.f86523k = oaidVersion;
    }

    public void setPersonalizedAdvertisingOn(boolean isPersonalizedAdvertisingOn) {
        this.f86520h = isPersonalizedAdvertisingOn;
        if (this.f86514b) {
            c.a().b(this.f86520h, true);
        }
    }

    public void setSupportMultiProcess(boolean multiProcess) {
        this.f86527p = multiProcess;
    }

    public void setUserAge(int age) {
        this.f86522j = age;
        if (this.f86514b) {
            c.a().a(age, true);
        }
    }

    public void setUserGDPRConsentStatus(WindMillConsentStatus status) {
        this.f86519g = status;
        if (this.f86514b) {
            c.a().c(status.getValue(), true);
        }
    }

    public void setWxOpenAppId(String wxOpenAppId) {
        this.f86528q = wxOpenAppId;
    }

    public boolean startWithAppId(Context context, String appId) {
        return initSDK(context, appId, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int i10;
        PointEntityWMCommon pointEntityWMCommon = new PointEntityWMCommon();
        pointEntityWMCommon.setAc_type(PointType.WIND_MILL_COMMON);
        pointEntityWMCommon.setCategory(PointCategory.AGGRE_INIT);
        pointEntityWMCommon.setIs_mediation("1");
        if (WMSdkConfig.sharedInstance().isDisable_up_location()) {
            i10 = 0;
        } else {
            ClientMetadata.getInstance().setEnableLocation(true);
            i10 = 1;
        }
        WMAdConfig wMAdConfig = this.f86524l;
        WMCustomController customController = wMAdConfig != null ? wMAdConfig.getCustomController() : null;
        int i11 = (customController == null || customController.isCanUseLocation() || customController.getLocation() != null) ? 1 : 0;
        HashMap map = new HashMap();
        try {
            if (d.a().b() != null) {
                String strSerialize = JSONSerializer.Serialize(d.a().b());
                if (!TextUtils.isEmpty(strSerialize)) {
                    map.put("custom_info", strSerialize);
                    pointEntityWMCommon.setOptions(map);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        pointEntityWMCommon.setLocation_switch(i10 + "," + i11);
        map.put(PointParamKey.IS_MINOR, this.f86521i ? "0" : "1");
        map.put(PointParamKey.IS_UNPERSONALIZED, this.f86520h ? "0" : "1");
        pointEntityWMCommon.setOptions(map);
        pointEntityWMCommon.commit();
    }

    private void b() {
        Networking.getRequestQueue().add(new JsonRequest(WMSdkConfig.getGDPRRegionURL(), new JsonRequest.Listener() { // from class: com.windmill.sdk.WindMillAd.1
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                c.a().i();
                WindMillAd.this.c();
            }

            @Override // com.czhj.sdk.common.network.JsonRequest.Listener
            public void onSuccess(JSONObject response) {
                if (response != null) {
                    try {
                        c.a().a(Boolean.valueOf(response.optBoolean(Constants.IS_REQUEST_IN_EEA_OR_UNKNOWN)).booleanValue());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                WindMillAd.this.c();
            }
        }, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        c.a().a(this.f86521i, true);
        c.a().b(this.f86520h, true);
        c.a().a(getUserAge(), true);
        c.a().b(getAgeRestrictedStatus().getValue(), true);
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.windmill.sdk.WindMillAd.2
            @Override // java.lang.Runnable
            public void run() {
                WindMillAd.this.a();
                WMSdkConfig.sharedInstance().startUpdate();
                TrackManager.getInstance().setToBidTrackListener(new TrackManager.Listener() { // from class: com.windmill.sdk.WindMillAd.2.1
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker tracker, VolleyError error) {
                        WMLogUtil.d(WMLogUtil.TAG, "------startServices----trackingEvent------onErrorResponse----------");
                        com.windmill.sdk.common.l.a(tracker, 0, error != null ? error.networkResponse : null);
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker tracker, NetworkResponse response) {
                        WMLogUtil.d(WMLogUtil.TAG, "-------startServices---trackingEvent------onSuccess----------");
                        com.windmill.sdk.common.l.a(tracker, 1, response);
                    }
                });
                TrackManager.getInstance().startRetryTracking();
                if (WMSdkConfig.sharedInstance().isEnable_report_crash()) {
                    CrashHandler.getInstance().add(new CrashHandler.CrashHandlerListener() { // from class: com.windmill.sdk.WindMillAd.2.2
                        @Override // com.czhj.sdk.common.exceptions.CrashHandler.CrashHandlerListener
                        public void reportCrash(String crash) {
                            if (TextUtils.isEmpty(crash) || !crash.contains("com.windmill")) {
                                return;
                            }
                            PointEntityWMCrash.WindCrash(crash).sendServe();
                        }
                    });
                }
                com.windmill.sdk.utils.a.c.c();
                WindMillAd.this.d();
            }
        });
    }

    public void startWithAppId(Context context, String appId, WindMillAdInitListener initListener) {
        initSDK(context, appId, initListener);
    }

    public boolean startWithAppId(Context context, String appId, WMAdConfig adConfig) {
        this.f86524l = adConfig;
        return startWithAppId(context, appId);
    }

    public void startWithAppId(Context context, String appId, WMAdConfig adConfig, WindMillAdInitListener initListener) {
        this.f86524l = adConfig;
        startWithAppId(context, appId, initListener);
    }

    private static void a(Context context) {
        Networking.AddSigmobServerURL(WMSdkConfig.getConfigUrl());
        Networking.AddSigmobServerURL(WMSdkConfig.sharedInstance().getLogUrl());
        Networking.AddSigmobServerURL(WMSdkConfig.sharedInstance().getStrategyUrl());
        Networking.initializeMill(context);
    }
}
