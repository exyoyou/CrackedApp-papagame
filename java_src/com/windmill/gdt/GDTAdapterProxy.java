package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.IBidding;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class GDTAdapterProxy extends WMCustomAdapterProxy {
    public static final DownloadConfirmListener DOWNLOAD_CONFIRM_LISTENER = new DownloadConfirmListener() { // from class: com.windmill.gdt.GDTAdapterProxy.2
        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public final void onDownloadConfirm(Activity activity, int i10, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            try {
                a aVar = new a(activity, str, downloadConfirmCallBack);
                if ((i10 & 256) != 0) {
                    aVar.f86070a.setText("立即安装");
                }
                aVar.show();
            } catch (Throwable th) {
                SigmobLog.e(" show DownloadApkConfirmDialogWebView fail", th);
            }
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMCustomController f86002c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f86000a = "buyer_id";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f86001b = "sdk_info";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f86003d = getClass().getSimpleName();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:58:0x0114  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Map<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        int i10;
        int i11;
        HashMap map2 = new HashMap();
        if (map.containsKey("gdt_fail")) {
            WMLogUtil.i("-------Gdtproxy 没有填充或者已触发总超时");
        }
        byte b10 = 0;
        if (z10) {
            map2.put(IBidding.EXPECT_COST_PRICE, map.get(WMBidUtil.WIN_ECPM));
            map2.put("highestLossPrice", map.get(WMBidUtil.LOSS_ECPM));
            if (map.get(WMBidUtil.LOSS_ECPM) != null && map.get(WMBidUtil.WIN_ECPM) != null && ((int) Double.parseDouble(map.get(WMBidUtil.LOSS_ECPM))) > ((int) Double.parseDouble(map.get(WMBidUtil.WIN_ECPM)))) {
                map2.put("highestLossPrice", 0);
            }
        } else {
            map2.put("winPrice", map.get((!map.containsKey(WMBidUtil.ECPM) || map.get(WMBidUtil.ECPM) == null) ? WMBidUtil.WIN_ECPM : WMBidUtil.ECPM));
            String str = map.get(WMBidUtil.REASON);
            if (!TextUtils.isEmpty(str)) {
                str.hashCode();
                switch (str.hashCode()) {
                    case 48625:
                        if (!str.equals(Constants.ERRORCODE_SDK_PREFIX)) {
                            b10 = -1;
                        }
                        break;
                    case 49587:
                        if (!str.equals("201")) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 49589:
                        if (!str.equals("203")) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    case 56313:
                        if (!str.equals("900")) {
                            b10 = -1;
                        } else {
                            b10 = 3;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                switch (b10) {
                    case 0:
                        i10 = 101;
                        break;
                    case 1:
                        i10 = 2;
                        break;
                    case 2:
                    default:
                        i10 = 1;
                        break;
                    case 3:
                        i10 = 10001;
                        break;
                }
            } else {
                i10 = 1;
            }
            map2.put("lossReason", Integer.valueOf(i10));
            if (map.containsKey(WMBidUtil.WINNER_IDTYPE)) {
                String str2 = map.get(WMBidUtil.WINNER_IDTYPE);
                if (!TextUtils.isEmpty(str2) && str2.equals("0")) {
                    i11 = 1;
                } else if (TextUtils.isEmpty(str2) || !str2.equals("1")) {
                    i11 = 2;
                } else {
                    i11 = 4;
                }
            } else {
                i11 = 2;
            }
            map2.put("adnId", i11);
        }
        return map2;
    }

    public static String getDetailCode(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            Matcher matcher = Pattern.compile("详细码：[\\ ]*(\\d+)").matcher(str);
            return matcher.find() ? matcher.group(1) : "";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static Map<String, Object> getRequestId(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        Object obj = map.get("request_id");
        if (obj == null) {
            return null;
        }
        map2.put("request_id", obj.toString());
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
            String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " getBiddingToken:" + str);
            String buyerId = GDTAdSdk.getGDTAdManger().getBuyerId(null);
            String sDKInfo = GDTAdSdk.getGDTAdManger().getSDKInfo(str);
            if (!TextUtils.isEmpty(buyerId) && !TextUtils.isEmpty(sDKInfo)) {
                HashMap map3 = new HashMap();
                map3.put(this.f86000a, buyerId);
                map3.put(this.f86001b, sDKInfo);
                map3.put("thrmei", GdtUtil.getThrmei(map2));
                return map3;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public String getNetworkSdkVersion() {
        return SDKStatus.getIntegrationSDKVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        try {
            GlobalSetting.setPersonalizedState(WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? 0 : 1);
            String str = (String) map.get("appId");
            SigmobLog.i(this.f86003d + " initializeADN:" + str);
            WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
            if (adConfig != null && adConfig.getCustomController() != null) {
                this.f86002c = adConfig.getCustomController();
            }
            if (this.f86002c != null) {
                SigmobLog.i(this.f86003d + " initializeADN:" + str + " " + this.f86002c.isCanUseWifiState());
                HashMap map2 = new HashMap();
                if (!this.f86002c.isCanUseWifiState()) {
                    map2.put("mac_address", Boolean.FALSE);
                }
                if (!this.f86002c.isCanUseAndroidId()) {
                    map2.put("android_id", Boolean.FALSE);
                }
                if (!this.f86002c.isCanUseWifiState()) {
                    Boolean bool = Boolean.FALSE;
                    map2.put(BuildQRCodeActivity_.SSID_EXTRA, bool);
                    map2.put("bssid", bool);
                    map2.put("wipaddr", bool);
                    map2.put("mipaddr", bool);
                }
                if (!this.f86002c.isCanUseLocation()) {
                    map2.put("cell_id", Boolean.FALSE);
                }
                if (!this.f86002c.isCanUsePhoneState()) {
                    Boolean bool2 = Boolean.FALSE;
                    map2.put("device_id", bool2);
                    map2.put("netop", bool2);
                }
                GlobalSetting.setAgreeReadPrivacyInfo(map2);
                if (!this.f86002c.isCanUseAppList()) {
                    GlobalSetting.setEnableCollectAppInstallStatus(false);
                }
            }
            callInitBefore(null);
            if (!TextUtils.isEmpty(str)) {
                GDTAdSdk.initWithoutStart(context, str);
                GDTAdSdk.start(new GDTAdSdk.OnStartListener() { // from class: com.windmill.gdt.GDTAdapterProxy.1
                    @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
                    public final void onStartFailed(Exception exc) {
                        SigmobLog.i(GDTAdapterProxy.this.f86003d + " onStartFailed:" + exc.getMessage());
                        GDTAdapterProxy.this.callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), exc.getMessage());
                    }

                    @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
                    public final void onStartSuccess() {
                        SigmobLog.i(GDTAdapterProxy.this.f86003d + " onStartSuccess");
                        GDTAdapterProxy.this.callInitSuccess();
                    }
                });
                return;
            }
            SigmobLog.i(this.f86003d + " appId is null");
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "appId is null");
        } catch (Throwable th) {
            SigmobLog.i(this.f86003d + " Throwable:   " + th.getMessage());
            int errorCode = WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode();
            StringBuilder sb2 = new StringBuilder("init gdt fail ");
            sb2.append(th.getMessage());
            callInitFail(errorCode, sb2.toString());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        GlobalSetting.setPersonalizedState(!WindMillAd.sharedAds().isPersonalizedAdvertisingOn() ? 1 : 0);
    }
}
