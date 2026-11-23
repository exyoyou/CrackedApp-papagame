package com.windmill.kuaishou;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kuaishou.weapon.p0.t;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsCustomController;
import com.kwad.sdk.api.KsInitCallback;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.SdkConfig;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.AdnName;
import com.sigmob.sdk.base.mta.PointType;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import com.windmill.sdk.utils.MUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMCustomController f86366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f86367b = getClass().getSimpleName();

    /* JADX WARN: Code duplicated, block: B:32:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b1  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Map<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        int iIntValue;
        int iIntValue2;
        byte b10;
        HashMap map2 = new HashMap();
        if (z10) {
            map2.put("bidEcpm", map.get(!TextUtils.isEmpty(map.get(WMBidUtil.WIN_ECPM)) ? WMBidUtil.WIN_ECPM : WMBidUtil.WINNER_ECPM));
            SigmobLog.i("---notifyBiddingResult---castBiddingInfo---isWin:" + map.get(WMBidUtil.LOSS_ECPM));
            map2.put("lossBidEcpm", map.get(TextUtils.isEmpty(map.get(WMBidUtil.LOSS_ECPM)) ? WMBidUtil.WIN_ECPM : WMBidUtil.LOSS_ECPM));
        } else {
            AdExposureFailedReason adExposureFailedReason = new AdExposureFailedReason();
            byte b11 = -1;
            int i10 = 0;
            try {
                adExposureFailedReason.setAdnType(2);
                String str = map.get(WMBidUtil.ADN);
                String str2 = AdnName.OTHER;
                if (!TextUtils.isEmpty(str)) {
                    int iHashCode = str.hashCode();
                    if (iHashCode != 1570) {
                        if (iHashCode != 1573) {
                            if (iHashCode == 1599 && str.equals("21")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str.equals("16")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                    } else if (str.equals(PointType.SIGMOB_REPORT_TRACKING)) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0) {
                        str2 = AdnName.CHUANSHANJIA;
                    } else if (b10 == 1) {
                        str2 = AdnName.GUANGDIANTONG;
                    } else if (b10 == 2) {
                        str2 = "baidu";
                    }
                }
                adExposureFailedReason.setAdnName(str2);
                try {
                    iIntValue = WMBidUtil.parseInt(map.get(WMBidUtil.IS_SHOW)).intValue();
                } catch (Exception unused) {
                    iIntValue = 2;
                }
                adExposureFailedReason.setIsShow(iIntValue);
                try {
                    iIntValue2 = WMBidUtil.parseInt(map.get(WMBidUtil.IS_CLICK)).intValue();
                } catch (Exception unused2) {
                    iIntValue2 = 2;
                }
                adExposureFailedReason.setIsClick(iIntValue2);
                if (!TextUtils.isEmpty(map.get(WMBidUtil.AD_USERNAME))) {
                    adExposureFailedReason.setAdUserName(map.get(WMBidUtil.AD_USERNAME));
                }
                if (!TextUtils.isEmpty(map.get(WMBidUtil.AD_TITLE))) {
                    adExposureFailedReason.setAdTitle(map.get(WMBidUtil.AD_TITLE));
                }
                String str3 = map.get(WMBidUtil.ECPM);
                if (!TextUtils.isEmpty(str3)) {
                    try {
                        adExposureFailedReason.setWinEcpm((MUtil.getRandom() * WMBidUtil.parseInt(str3).intValue()) / 100);
                    } catch (Exception e10) {
                        SigmobLog.e("---notifyBiddingResul  ecpm parse error" + e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            map2.put("adExposureFailedReason", adExposureFailedReason);
            String str4 = map.get(WMBidUtil.REASON);
            if (!TextUtils.isEmpty(str4)) {
                str4.hashCode();
                switch (str4.hashCode()) {
                    case 49588:
                        if (str4.equals("202")) {
                            b11 = 0;
                        }
                        break;
                    case 49589:
                        if (str4.equals("203")) {
                            b11 = 1;
                        }
                        break;
                    case 49590:
                        if (str4.equals("204")) {
                            b11 = 2;
                        }
                        break;
                    case 50551:
                        if (str4.equals("304")) {
                            b11 = 3;
                        }
                        break;
                    case 56313:
                        if (str4.equals("900")) {
                            b11 = 4;
                        }
                        break;
                }
                switch (b11) {
                    case 0:
                        i10 = 1;
                        break;
                    case 1:
                    default:
                        i10 = 2;
                        break;
                    case 2:
                        i10 = 3;
                        break;
                    case 3:
                        i10 = 4;
                        break;
                    case 4:
                        break;
                }
            } else {
                i10 = 2;
            }
            map2.put("adExposureFailedReasonCode", Integer.valueOf(i10));
        }
        return map2;
    }

    public static Map<String, Object> getRequestId(Map<String, Object> map) {
        if (map == null) {
            WMLogUtil.i("KuaiShouAdapterProxy------getRequestId map null ");
            return null;
        }
        Object obj = map.get("llsid");
        WMLogUtil.i("KuaiShouAdapterProxy------getRequestId ".concat(String.valueOf(obj)));
        if (obj == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        map2.put("request_id", obj.toString());
        WMLogUtil.i("KuaiShouAdapterProxy------option ".concat(String.valueOf(map2)));
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
        try {
            String strSubstring = (String) map2.get("placementId");
            int i10 = 1;
            if (strSubstring.endsWith("L") || strSubstring.endsWith(t.f74879d)) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            Object obj = map2.get(WMConstants.PLAY_DIRECTION);
            if (obj != null && obj.equals("1")) {
                i10 = 2;
            }
            HashMap map3 = new HashMap();
            if (map != null) {
                try {
                    Object obj2 = map.get("TB_UserId");
                    if (obj2 != null) {
                        map3.put("thirdUserId", (String) obj2);
                    }
                    map.remove("TB_UserId");
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    map3.put(BaseVideoView.COMPONENT_EXTRA_DATA, strSerialize);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            String bidRequestTokenV2 = KsAdSDK.getLoadManager().getBidRequestTokenV2(new KsScene.Builder(WMBidUtil.parseLong(strSubstring).longValue()).screenOrientation(i10).rewardCallbackExtraData(map3).build());
            SigmobLog.i(getClass().getSimpleName() + "loadBidding bidRequestToken:" + strSubstring + ":" + bidRequestTokenV2);
            if (TextUtils.isEmpty(bidRequestTokenV2)) {
                return null;
            }
            HashMap map4 = new HashMap();
            map4.put(WMConstants.SDK_TOKEN, bidRequestTokenV2);
            return map4;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getChannelAppId() {
        return KsAdSDK.getAppId();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getNetworkSdkVersion() {
        return KsAdSDK.getSDKVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        String str = "unknown";
        try {
            String str2 = (String) map.get("appId");
            String str3 = (String) map.get(WMConstants.API_KEY);
            WMLogUtil.i(this.f86367b + "---initializeADN:" + str2);
            try {
                Object applicationLabel = map.get("appName");
                if (applicationLabel == null || TextUtils.isEmpty((CharSequence) applicationLabel)) {
                    PackageManager packageManager = context.getPackageManager();
                    applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
                }
                str = (String) applicationLabel;
            } catch (Throwable unused) {
            }
            KsAdSDK.setPersonalRecommend(WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
            KsAdSDK.setProgrammaticRecommend(WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
            WMLogUtil.i(this.f86367b + "---isPersonalizedAdvertisingOn:" + WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
            WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
            if (adConfig != null && adConfig.getCustomController() != null) {
                this.f86366a = adConfig.getCustomController();
            }
            SdkConfig.Builder builderAppName = new SdkConfig.Builder().appName(str);
            boolean z10 = true;
            SdkConfig.Builder builderCustomController = builderAppName.showNotification(true).customController(new KsCustomController() { // from class: com.windmill.kuaishou.KuaiShouAdapterProxy.1
                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canReadInstalledPackages() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseAppList() : super.canReadInstalledPackages();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canReadLocation() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseLocation() : super.canReadLocation();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canUseMacAddress() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseMacAddress() : super.canUseMacAddress();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canUseNetworkState() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseWifiState() : super.canUseNetworkState();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canUseOaid() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseOaid() : super.canUseOaid();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canUsePhoneState() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUsePhoneState() : super.canUsePhoneState();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final boolean canUseStoragePermission() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.isCanUseWriteExternal() : super.canUseStoragePermission();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final String getAndroidId() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.getAndroidId() : super.getAndroidId();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final String getImei() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.getDevImei() : super.getImei();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final List<String> getInstalledPackages() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.a() : super.getInstalledPackages();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final Location getLocation() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.getLocation() : super.getLocation();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final String getMacAddress() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.getMacAddress() : super.getMacAddress();
                }

                @Override // com.kwad.sdk.api.KsCustomController
                public final String getOaid() {
                    return KuaiShouAdapterProxy.this.f86366a != null ? KuaiShouAdapterProxy.this.f86366a.getDevOaid() : super.getOaid();
                }
            });
            try {
                builderCustomController.getClass().getMethod("setStartCallback", KsInitCallback.class).invoke(builderCustomController, new KsInitCallback() { // from class: com.windmill.kuaishou.KuaiShouAdapterProxy.2
                    @Override // com.kwad.sdk.api.KsInitCallback
                    public final void onFail(int i10, String str4) {
                        SigmobLog.i(KuaiShouAdapterProxy.this.getClass().getSimpleName() + " fail:" + i10 + ":" + str4);
                        KuaiShouAdapterProxy.this.callInitFail(i10, str4);
                    }

                    @Override // com.kwad.sdk.api.KsInitCallback
                    public final void onSuccess() {
                        SigmobLog.i(KuaiShouAdapterProxy.this.getClass().getSimpleName() + " success");
                        KuaiShouAdapterProxy.this.callInitSuccess();
                    }
                });
            } catch (Throwable th) {
                WMLogUtil.e("setStartCallback error " + th.getMessage());
                z10 = false;
            }
            callInitBefore(builderCustomController);
            KsAdSDK.init(context, builderCustomController.appId(str2).appKey(str3).build());
            if (!z10) {
                callInitSuccess();
                return;
            }
            try {
                KsAdSDK.class.getMethod("start", new Class[0]).invoke(null, new Object[0]);
            } catch (Throwable th2) {
                callInitFail(0, th2.getMessage());
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th3.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        try {
            KsAdSDK.setPersonalRecommend(WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> a() {
        List<PackageInfo> installedPackages;
        try {
            WMCustomController wMCustomController = this.f86366a;
            if (wMCustomController == null || (installedPackages = wMCustomController.getInstalledPackages()) == null || installedPackages.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                PackageInfo packageInfo = installedPackages.get(i10);
                if (packageInfo != null) {
                    arrayList.add(packageInfo.packageName);
                }
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
