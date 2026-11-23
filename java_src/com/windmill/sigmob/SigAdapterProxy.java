package com.windmill.sigmob;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import com.sigmob.windad.OnInitializationListener;
import com.sigmob.windad.OnStartListener;
import com.sigmob.windad.WindAdBiddingLossReason;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMCustomController f87580a;

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a3  */
    public static Map<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        String str;
        String str2;
        String str3;
        Integer num;
        HashMap map2 = new HashMap();
        if (map == null) {
            return map2;
        }
        String str4 = map.get(WMBidUtil.CURRENCY);
        if (TextUtils.isEmpty(str4)) {
            str = WindAds.CNY;
        } else {
            str = WindAds.USD;
            if (!str4.equals(WindAds.USD)) {
                str = WindAds.CNY;
            }
        }
        map2.put(WindAds.CURRENCY, str);
        String str5 = map.get(WMBidUtil.WIN_ECPM);
        if (z10) {
            map2.put(WindAds.AUCTION_PRICE, str5);
            str2 = map.get(WMBidUtil.LOSS_ECPM);
            str3 = WindAds.HIGHEST_LOSS_PRICE;
        } else {
            String str6 = map.get(WMBidUtil.ECPM);
            if (str6 != null) {
                map2.put(WindAds.AUCTION_PRICE, str6);
            }
            if (str5 != null) {
                map2.put(WindAds.AUCTION_PRICE, str5);
            }
            String str7 = map.get(WMBidUtil.REASON);
            HashMap<String, Integer> map3 = new HashMap<String, Integer>() { // from class: com.windmill.sigmob.SigAdapterProxy.4
                {
                    put(Constants.ERRORCODE_SDK_PREFIX, Integer.valueOf(WindAdBiddingLossReason.LOSS_REASON_RETURN_TIMEOUT.getCode()));
                    put("203", Integer.valueOf(WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE.getCode()));
                    put("900", Integer.valueOf(WindAdBiddingLossReason.LOSS_REASON_RETURN_ERROR.getCode()));
                }
            };
            int code = WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE.getCode();
            if (!TextUtils.isEmpty(str7) && (num = map3.get(str7)) != null) {
                code = num.intValue();
            }
            map2.put(WindAds.LOSS_REASON, Integer.valueOf(code));
            String str8 = map.get(WMBidUtil.ADN);
            HashMap<String, String> map4 = new HashMap<String, String>() { // from class: com.windmill.sigmob.SigAdapterProxy.5
                {
                    put("9", "1");
                    put(PointType.SIGMOB_REPORT_TRACKING, "2");
                    put("16", "3");
                    put("19", "4");
                    put("21", "5");
                    put("1", "6");
                    put("4", "7");
                    put("15", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD);
                }
            };
            if (TextUtils.isEmpty(str8)) {
                str2 = "10001";
            } else {
                str2 = map4.get(str8);
                if (TextUtils.isEmpty(str2)) {
                    str2 = "10001";
                }
            }
            str3 = WindAds.ADN_ID;
        }
        map2.put(str3, str2);
        return map2;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public int baseOnToBidCustomAdapterVersion() {
        return 2;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public int getAdapterSdkVersion() {
        return 39000;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public Map<String, String> getBiddingToken(Context context, Map<String, Object> map, Map<String, Object> map2) {
        SigmobLog.i("SigAdapterProxy#getBiddingToken");
        HashMap map3 = new HashMap();
        map3.put("sdkVersion", WindAds.getVersion());
        map3.put(WMConstants.SDK_TOKEN, WindAds.sharedAds().getSDKToken());
        return map3;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getNetworkSdkVersion() {
        return WindAds.getVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        try {
            String str = (String) map.get("appId");
            String str2 = (String) map.get(WMConstants.API_KEY);
            String appId = WindMillAd.sharedAds().getAppId();
            if (TextUtils.isEmpty(str)) {
                str = appId;
            }
            SigmobLog.i("SigAdapterProxy#initializeADN: appId = ".concat(String.valueOf(str)));
            WindAds windAdsSharedAds = WindAds.sharedAds();
            windAdsSharedAds.setDebugEnable(WMLogUtil.isEnableLog);
            windAdsSharedAds.setUserAge(WindMillAd.sharedAds().getUserAge());
            windAdsSharedAds.setAdult(WindMillAd.sharedAds().isAdult());
            windAdsSharedAds.setIsAgeRestrictedUser(WindMillAd.sharedAds().getAgeRestrictedStatus().getValue());
            windAdsSharedAds.setUserGDPRConsentStatus(WindMillAd.sharedAds().getUserGDPRConsentStatus().getValue());
            windAdsSharedAds.setPersonalizedAdvertisingOn(WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
            WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
            this.f87580a = adConfig == null ? null : adConfig.getCustomController();
            WindAdOptions windAdOptions = new WindAdOptions(str, str2);
            windAdOptions.setCustomController(new WindCustomController() { // from class: com.windmill.sigmob.SigAdapterProxy.3
                @Override // com.sigmob.windad.WindCustomController
                public final String getAndroidId() {
                    return SigAdapterProxy.this.f87580a == null ? super.getAndroidId() : SigAdapterProxy.this.f87580a.getAndroidId();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final String getDevImei() {
                    return SigAdapterProxy.this.f87580a == null ? super.getDevImei() : SigAdapterProxy.this.f87580a.getDevImei();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final String getDevOaid() {
                    return SigAdapterProxy.this.f87580a == null ? super.getDevOaid() : SigAdapterProxy.this.f87580a.getDevOaid();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final List<PackageInfo> getInstallPackageInfoList() {
                    return SigAdapterProxy.this.f87580a == null ? super.getInstallPackageInfoList() : SigAdapterProxy.this.f87580a.getInstalledPackages();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final Location getLocation() {
                    return SigAdapterProxy.this.f87580a == null ? super.getLocation() : SigAdapterProxy.this.f87580a.getLocation();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final boolean isCanUseAndroidId() {
                    return SigAdapterProxy.this.f87580a == null ? super.isCanUseAndroidId() : SigAdapterProxy.this.f87580a.isCanUseAndroidId();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final boolean isCanUseAppList() {
                    return SigAdapterProxy.this.f87580a == null ? super.isCanUseAppList() : SigAdapterProxy.this.f87580a.isCanUseAppList();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final boolean isCanUseLocation() {
                    return SigAdapterProxy.this.f87580a == null ? super.isCanUseLocation() : SigAdapterProxy.this.f87580a.isCanUseLocation();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final boolean isCanUseOaid() {
                    return SigAdapterProxy.this.f87580a == null ? super.isCanUseOaid() : SigAdapterProxy.this.f87580a.isCanUseOaid();
                }

                @Override // com.sigmob.windad.WindCustomController
                public final boolean isCanUsePhoneState() {
                    return SigAdapterProxy.this.f87580a == null ? super.isCanUsePhoneState() : SigAdapterProxy.this.f87580a.isCanUsePhoneState();
                }
            });
            try {
                WMLogUtil.i("SigAdapterProxy#", "initializeADN: method = " + windAdsSharedAds.getClass().getMethod("init", Context.class, WindAdOptions.class, OnInitializationListener.class).getName());
                callInitBefore(windAdOptions);
                windAdsSharedAds.init(context, windAdOptions, new OnInitializationListener() { // from class: com.windmill.sigmob.SigAdapterProxy.1
                    @Override // com.sigmob.windad.OnInitializationListener
                    public final void onInitializationFail(String str3) {
                        WMLogUtil.e("SigAdapterProxy#", "onInitializationFail: error = ".concat(String.valueOf(str3)));
                    }

                    @Override // com.sigmob.windad.OnInitializationListener
                    public final void onInitializationSuccess() {
                        WMLogUtil.i("SigAdapterProxy#", "onInitializationSuccess");
                    }
                });
                windAdsSharedAds.start(new OnStartListener() { // from class: com.windmill.sigmob.SigAdapterProxy.2
                    @Override // com.sigmob.windad.OnStartListener
                    public final void onStartFail(String str3) {
                        SigAdapterProxy.this.callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), str3);
                    }

                    @Override // com.sigmob.windad.OnStartListener
                    public final void onStartSuccess() {
                        SigAdapterProxy.this.callInitSuccess();
                    }
                });
            } catch (Throwable th) {
                Method method = windAdsSharedAds.getClass().getMethod("startWithOptions", Context.class, WindAdOptions.class);
                WMLogUtil.e("SigAdapterProxy#", "initializeADN: method = " + method.getName() + ", error = " + th.getMessage());
                method.invoke(windAdsSharedAds, context, windAdOptions);
                callInitSuccess();
            }
        } catch (Throwable th2) {
            WMLogUtil.e("SigAdapterProxy#", "initializeADN: error = " + th2.getMessage());
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th2.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        SigmobLog.i("SigAdapterProxy#notifyPrivacyStatusChange");
        try {
            WindAds windAdsSharedAds = WindAds.sharedAds();
            boolean zIsPersonalizedAdvertisingOn = windAdsSharedAds.isPersonalizedAdvertisingOn();
            boolean zIsPersonalizedAdvertisingOn2 = WindMillAd.sharedAds().isPersonalizedAdvertisingOn();
            if (zIsPersonalizedAdvertisingOn == zIsPersonalizedAdvertisingOn2) {
                return;
            }
            windAdsSharedAds.setPersonalizedAdvertisingOn(zIsPersonalizedAdvertisingOn2);
        } catch (Exception e10) {
            SigmobLog.i("SigAdapterProxy#notifyPrivacyStatusChange: error = " + e10.getMessage());
        }
    }
}
