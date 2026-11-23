package com.windmill.toutiao;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig;
import com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.sigmob.sdk.base.mta.PointType;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMInitManager;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static TTAdNative f87647b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTAdConfig f87648a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMCustomController f87649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f87650d = getClass().getSimpleName();

    class a implements LocationProvider {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Location f87656b;

        public a(Location location) {
            this.f87656b = location;
        }

        @Override // com.bytedance.sdk.openadsdk.LocationProvider
        public final double getLatitude() {
            return this.f87656b.getLatitude();
        }

        @Override // com.bytedance.sdk.openadsdk.LocationProvider
        public final double getLongitude() {
            return this.f87656b.getLongitude();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0043  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:83:0x0117  */
    /* JADX WARN: switch over string: strings are not added: [[203]] */
    public static Map<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        String str;
        String str2;
        HashMap map2 = new HashMap();
        if (z10) {
            str = map.get(WMBidUtil.LOSS_ECPM);
            str2 = "auctionBidToWin";
        } else {
            map2.put("auctionPrice", map.get(WMBidUtil.ECPM));
            String str3 = map.get(WMBidUtil.REASON);
            boolean zIsEmpty = TextUtils.isEmpty(str3);
            byte b10 = 4;
            String str4 = PointType.ANTI_SPAM_TOUCH;
            if (!zIsEmpty) {
                str3.hashCode();
                switch (str3) {
                    case "100":
                        str4 = "2";
                        break;
                    case "202":
                        str4 = Constants.ERRORCODE_SDK_PREFIX;
                        break;
                    case "204":
                        str4 = "201";
                        break;
                    case "900":
                        str4 = "1";
                        break;
                }
            }
            map2.put("lossReason", str4);
            String str5 = map.get(WMBidUtil.ADN);
            if (!TextUtils.isEmpty(str5)) {
                str5.hashCode();
                switch (str5.hashCode()) {
                    case 53:
                        if (!str5.equals("5")) {
                            b10 = -1;
                        } else {
                            b10 = 0;
                        }
                        break;
                    case 55:
                        if (!str5.equals("7")) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 1568:
                        if (!str5.equals("11")) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    case 1569:
                        if (!str5.equals("12")) {
                            b10 = -1;
                        } else {
                            b10 = 3;
                        }
                        break;
                    case 1572:
                        if (!str5.equals("15")) {
                            b10 = -1;
                        }
                        break;
                    case 1573:
                        if (!str5.equals("16")) {
                            b10 = -1;
                        } else {
                            b10 = 5;
                        }
                        break;
                    case 1576:
                        if (!str5.equals("19")) {
                            b10 = -1;
                        } else {
                            b10 = 6;
                        }
                        break;
                    case 1599:
                        if (!str5.equals("21")) {
                            b10 = -1;
                        } else {
                            b10 = 7;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                switch (b10) {
                    case 0:
                        str = "applovin";
                        break;
                    case 1:
                        str = bm.ae;
                        break;
                    case 2:
                        str = MediationConstant.ADN_ADMOB;
                        break;
                    case 3:
                        str = "tapjoy";
                        break;
                    case 4:
                        str = "fan";
                        break;
                    case 5:
                        str = "ylh";
                        break;
                    case 6:
                        str = "kuai";
                        break;
                    case 7:
                        str = "bqt";
                        break;
                    default:
                        str = "";
                        break;
                }
            } else {
                str = "";
            }
            str2 = "winBidder";
        }
        map2.put(str2, str);
        return map2;
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

    public static TTAdNative getTTAdNative() {
        return f87647b;
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
            String str = (String) map2.get("placementId");
            String str2 = "";
            SigmobLog.i(this.f87650d + "-----loadBidding getBiddingToken localExtra: " + map);
            new HashMap();
            int iIntValue = 7;
            if (map != null) {
                try {
                    Object obj = map.get("TB_UserId");
                    str2 = obj != null ? (String) obj : "";
                    iIntValue = ((Integer) map.get("adtype")).intValue();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            SigmobLog.i(this.f87650d + "-----loadBidding getBiddingToken codeId: " + str + " adtype " + iIntValue + " userid:" + str2);
            String biddingToken = TTAdSdk.getAdManager().getBiddingToken(new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID(str2).build(), true, iIntValue);
            if (TextUtils.isEmpty(biddingToken)) {
                return null;
            }
            HashMap map3 = new HashMap();
            map3.put(com.czhj.sdk.common.Constants.TOKEN, biddingToken);
            return map3;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
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
                Object obj = map.get("useMediation");
                boolean zBooleanValue = obj != null ? ((Boolean) obj).booleanValue() : false;
                SigmobLog.i(this.f87650d + "---initializeADN:" + str2 + ":" + zBooleanValue);
                try {
                    PackageManager packageManager = context.getPackageManager();
                    str = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
                } catch (Throwable unused) {
                }
                String str3 = WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]" : "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]";
                WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
                if (adConfig != null && adConfig.getCustomController() != null) {
                    this.f87649c = adConfig.getCustomController();
                }
                TTAdConfig.Builder builder = new TTAdConfig.Builder();
                builder.titleBarTheme(1).data(str3).allowShowNotify(true).directDownloadNetworkType(4, 6, 5, 3, 2, 1);
                builder.appId(str2).appName(str).supportMultiProcess(WindMillAd.sharedAds().isSupportMultiProcess()).customController(new TTCustomController() { // from class: com.windmill.toutiao.TouTiaoAdapterProxy.1
                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean alist() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseAppList() : super.alist();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getAndroidId() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.getAndroidId() : super.getAndroidId();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getDevImei() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.getDevImei() : super.getDevImei();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getDevOaid() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.getDevOaid() : super.getDevOaid();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final String getMacAddress() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.getMacAddress() : super.getMacAddress();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final IMediationPrivacyConfig getMediationPrivacyConfig() {
                        return new MediationPrivacyConfig() { // from class: com.windmill.toutiao.TouTiaoAdapterProxy.1.1
                            @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                            public final boolean isCanUseOaid() {
                                return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseOaid() : super.isCanUseOaid();
                            }
                        };
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final LocationProvider getTTLocation() {
                        if (TouTiaoAdapterProxy.this.f87649c == null || TouTiaoAdapterProxy.this.f87649c.getLocation() == null) {
                            return super.getTTLocation();
                        }
                        TouTiaoAdapterProxy touTiaoAdapterProxy = TouTiaoAdapterProxy.this;
                        return touTiaoAdapterProxy.new a(touTiaoAdapterProxy.f87649c.getLocation());
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseAndroidId() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseAndroidId() : super.isCanUseAndroidId();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseLocation() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseLocation() : super.isCanUseLocation();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUsePermissionRecordAudio() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUsePermissionRecordAudio() : super.isCanUsePermissionRecordAudio();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUsePhoneState() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUsePhoneState() : super.isCanUsePhoneState();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseWifiState() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseWifiState() : super.isCanUseWifiState();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTCustomController
                    public final boolean isCanUseWriteExternal() {
                        return TouTiaoAdapterProxy.this.f87649c != null ? TouTiaoAdapterProxy.this.f87649c.isCanUseWriteExternal() : super.isCanUseWriteExternal();
                    }
                });
                try {
                    TTAdConfig.Builder.class.getMethod("useMediation", Boolean.TYPE).invoke(builder, Boolean.valueOf(zBooleanValue));
                } catch (Throwable unused2) {
                    WMLogUtil.e("not support useMediation method");
                }
                callInitBefore(builder);
                this.f87648a = builder.build();
                if (TTAdSdk.isSdkReady()) {
                    callInitSuccess();
                } else {
                    SigmobLog.i(this.f87650d + "--initializeADN:" + WMInitManager.sharedInstance().isInitiating());
                    if (WMInitManager.sharedInstance().isInitiating()) {
                        WMInitManager.sharedInstance().addInitListener(this, new WMInitManager.InitListener() { // from class: com.windmill.toutiao.TouTiaoAdapterProxy.2
                            @Override // com.windmill.sdk.base.WMInitManager.InitListener
                            public final void onError(int i10, String str4) {
                                SigmobLog.i(TouTiaoAdapterProxy.this.f87650d + "---WMInitManager onError:" + i10 + ":" + str4);
                                TouTiaoAdapterProxy.this.callInitFail(i10, str4);
                            }

                            @Override // com.windmill.sdk.base.WMInitManager.InitListener
                            public final void onSuccess() {
                                SigmobLog.i(TouTiaoAdapterProxy.this.f87650d + "---WMInitManager onSuccess");
                                TouTiaoAdapterProxy.this.callInitSuccess();
                            }
                        });
                    } else {
                        SigmobLog.i(this.f87650d + "--initializeADN: start");
                        WMInitManager.sharedInstance().setInitiating(true);
                        TTAdSdk.init(context, this.f87648a);
                        TTAdSdk.start(new TTAdSdk.Callback() { // from class: com.windmill.toutiao.TouTiaoAdapterProxy.3
                            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
                            public final void fail(int i10, String str4) {
                                SigmobLog.i(TouTiaoAdapterProxy.this.f87650d + "---fail:" + i10 + ":" + str4);
                                TouTiaoAdapterProxy.this.callInitFail(i10, str4);
                                WMInitManager.sharedInstance().callInitFail(i10, str4);
                            }

                            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
                            public final void success() {
                                SigmobLog.i(TouTiaoAdapterProxy.this.f87650d + "----success");
                                TouTiaoAdapterProxy.this.callInitSuccess();
                                WMInitManager.sharedInstance().callInitSuccess();
                            }
                        });
                    }
                }
                f87647b = TTAdSdk.getAdManager().createAdNative(context.getApplicationContext());
            }
        } catch (Throwable th) {
            th.printStackTrace();
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        SigmobLog.i(getClass().getSimpleName() + " notifyPrivacyStatusChange");
        if (this.f87648a != null) {
            this.f87648a.setData(WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]" : "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]");
            TTAdSdk.updateAdConfig(this.f87648a);
        }
    }
}
