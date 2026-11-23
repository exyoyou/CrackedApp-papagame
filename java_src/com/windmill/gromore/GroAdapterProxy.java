package com.windmill.gromore;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig;
import com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMInitManager;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class GroAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f86144a = "-1";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static TTAdNative f86145d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTAdConfig f86146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f86147c = getClass().getSimpleName();

    class a implements LocationProvider {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Location f86154b;

        public a(Location location) {
            this.f86154b = location;
        }

        @Override // com.bytedance.sdk.openadsdk.LocationProvider
        public final double getLatitude() {
            return this.f86154b.getLatitude();
        }

        @Override // com.bytedance.sdk.openadsdk.LocationProvider
        public final double getLongitude() {
            return this.f86154b.getLongitude();
        }
    }

    public static Map<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        return new HashMap();
    }

    public static String getPluginVersion() {
        if (!TextUtils.isEmpty(f86144a) && !f86144a.equals("0") && !f86144a.equals(WMConstants.TIMER_STAGE_NONE) && !f86144a.equals("-2")) {
            return f86144a;
        }
        try {
            int version = Zeus.getPlugin("com.byted.pangle").getVersion();
            WMLogUtil.i("GroAdapterProxy getPluginVersion version: ".concat(String.valueOf(version)));
            String strValueOf = String.valueOf(version);
            f86144a = strValueOf;
            return strValueOf;
        } catch (Exception e10) {
            WMLogUtil.e("GroAdapterProxy getPluginVersion error: " + e10.getMessage());
            return "-2";
        }
    }

    public static String getReason(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            Matcher matcher = Pattern.compile("reason:[\\ ]*(\\d+)").matcher(str);
            return matcher.find() ? matcher.group(1) : "";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static Map<String, Object> getRequestId(Map<String, Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    Object obj = map.get("request_id");
                    WMLogUtil.i("-------getRequestId ".concat(String.valueOf(obj)));
                    if (obj == null) {
                        return null;
                    }
                    HashMap map2 = new HashMap();
                    map2.put("request_id", obj);
                    return map2;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        WMLogUtil.i("----GroAdapterProxy---getRequestId map null");
        return null;
    }

    public static TTAdNative getTTAdNative() {
        return f86145d;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public int baseOnToBidCustomAdapterVersion() {
        return 2;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getAdapterPluginVersion() {
        return getPluginVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public int getAdapterSdkVersion() {
        return 39000;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getNetworkSdkVersion() {
        return TTAdSdk.getAdManager().getSDKVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        String str = "unknown";
        try {
            if (TTAdSdk.getAdManager() != null) {
                String str2 = (String) map.get("appId");
                SigmobLog.i(getClass().getSimpleName() + "---initializeADN:" + str2 + ":" + TTAdSdk.isInitSuccess());
                try {
                    PackageManager packageManager = context.getPackageManager();
                    str = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
                } catch (Throwable unused) {
                }
                String str3 = WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]" : "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]";
                WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
                final WMCustomController customController = (adConfig == null || adConfig.getCustomController() == null) ? null : adConfig.getCustomController();
                TTAdConfig.Builder builder = new TTAdConfig.Builder();
                builder.titleBarTheme(1).data(str3).allowShowNotify(true).directDownloadNetworkType(4, 6, 5, 3, 2, 1);
                builder.appId(str2).appName(str).supportMultiProcess(WindMillAd.sharedAds().isSupportMultiProcess()).customController(new TTCustomController() { // from class: com.windmill.gromore.GroAdapterProxy.1
                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean alist() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUseAppList() : super.alist();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getAndroidId() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.getAndroidId() : super.getAndroidId();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getDevImei() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.getDevImei() : super.getDevImei();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getDevOaid() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.getDevOaid() : super.getDevOaid();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getMacAddress() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.getMacAddress() : super.getMacAddress();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final IMediationPrivacyConfig getMediationPrivacyConfig() {
                        return new MediationPrivacyConfig() { // from class: com.windmill.gromore.GroAdapterProxy.1.1
                            @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                            public final boolean isCanUseOaid() {
                                WMCustomController wMCustomController = customController;
                                return wMCustomController != null ? wMCustomController.isCanUseOaid() : super.isCanUseOaid();
                            }

                            @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                            public final boolean isLimitPersonalAds() {
                                return !WindMillAd.sharedAds().isPersonalizedAdvertisingOn();
                            }
                        };
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final LocationProvider getTTLocation() {
                        WMCustomController wMCustomController = customController;
                        return (wMCustomController == null || wMCustomController.getLocation() == null) ? super.getTTLocation() : GroAdapterProxy.this.new a(customController.getLocation());
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseAndroidId() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUseAndroidId() : super.isCanUseAndroidId();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseLocation() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUseLocation() : super.isCanUseLocation();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUsePermissionRecordAudio() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUsePermissionRecordAudio() : super.isCanUsePermissionRecordAudio();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUsePhoneState() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUsePhoneState() : super.isCanUsePhoneState();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseWifiState() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUseWifiState() : super.isCanUseWifiState();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseWriteExternal() {
                        WMCustomController wMCustomController = customController;
                        return wMCustomController != null ? wMCustomController.isCanUseWriteExternal() : super.isCanUseWriteExternal();
                    }
                });
                try {
                    builder.useMediation(true);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                callInitBefore(builder);
                this.f86146b = builder.build();
                if (TTAdSdk.isSdkReady()) {
                    callInitSuccess();
                } else {
                    SigmobLog.i(getClass().getSimpleName() + " initializeADN:" + WMInitManager.sharedInstance().isInitiating());
                    if (WMInitManager.sharedInstance().isInitiating()) {
                        WMInitManager.sharedInstance().addInitListener(this, new WMInitManager.InitListener() { // from class: com.windmill.gromore.GroAdapterProxy.2
                            @Override // com.windmill.sdk.base.WMInitManager.InitListener
                            public final void onError(int i10, String str4) {
                                SigmobLog.i(GroAdapterProxy.this.getClass().getSimpleName() + " WMInitManager onError:" + i10 + ":" + str4);
                                GroAdapterProxy.this.callInitFail(i10, str4);
                            }

                            @Override // com.windmill.sdk.base.WMInitManager.InitListener
                            public final void onSuccess() {
                                SigmobLog.i(GroAdapterProxy.this.getClass().getSimpleName() + " WMInitManager onSuccess");
                                GroAdapterProxy.this.callInitSuccess();
                            }
                        });
                    } else {
                        WMInitManager.sharedInstance().setInitiating(true);
                        TTAdSdk.init(context, this.f86146b);
                        TTAdSdk.start(new TTAdSdk.Callback() { // from class: com.windmill.gromore.GroAdapterProxy.3
                            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
                            public final void fail(int i10, String str4) {
                                SigmobLog.i(GroAdapterProxy.this.getClass().getSimpleName() + " fail:" + i10 + ":" + str4);
                                GroAdapterProxy.this.callInitFail(i10, str4);
                                WMInitManager.sharedInstance().callInitFail(i10, str4);
                            }

                            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
                            public final void success() {
                                SigmobLog.i(GroAdapterProxy.this.getClass().getSimpleName() + " success");
                                GroAdapterProxy.this.callInitSuccess();
                                WMInitManager.sharedInstance().callInitSuccess();
                            }
                        });
                    }
                }
                f86145d = TTAdSdk.getAdManager().createAdNative(context.getApplicationContext());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th2.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        SigmobLog.i(getClass().getSimpleName() + " notifyPrivacyStatusChange");
        if (this.f86146b != null) {
            this.f86146b.setData(WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]" : "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]");
            TTAdSdk.updateAdConfig(this.f86146b);
        }
    }
}
