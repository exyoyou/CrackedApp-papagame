package com.windmill.baidu;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.AdSettings;
import com.baidu.mobads.sdk.api.BDAdConfig;
import com.baidu.mobads.sdk.api.BDDialogParams;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.sigmob.sdk.base.mta.PointType;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMCustomController f85844a;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:113:0x017d  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:173:0x026a  */
    /* JADX WARN: Code duplicated, block: B:190:0x028e  */
    /* JADX WARN: Code duplicated, block: B:195:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:211:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:30:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x0082  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:91:0x014e  */
    public static LinkedHashMap<String, Object> castBiddingInfo(boolean z10, Map<String, String> map) {
        int i10;
        int i11;
        int i12;
        Object obj;
        byte b10;
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put("ecpm", map.get(WMBidUtil.LOSS_ECPM));
        String str = map.get(WMBidUtil.ADN);
        if (TextUtils.isEmpty(str)) {
            i10 = 10;
        } else {
            int iHashCode = str.hashCode();
            if (iHashCode != 57) {
                if (iHashCode != 1570) {
                    if (iHashCode != 1573) {
                        if (iHashCode != 1576) {
                            if (iHashCode == 1599 && str.equals("21")) {
                                b10 = 4;
                            } else {
                                b10 = -1;
                            }
                        } else if (str.equals("19")) {
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
            } else if (str.equals("9")) {
                b10 = 3;
            } else {
                b10 = -1;
            }
            if (b10 == 0) {
                i10 = 1;
            } else if (b10 == 1) {
                i10 = 2;
            } else if (b10 == 2) {
                i10 = 3;
            } else if (b10 != 3) {
                i10 = 10;
            } else {
                i10 = 4;
            }
        }
        linkedHashMap.put(SplashAd.KEY_BIDFAIL_ADN, Integer.valueOf(i10));
        String str2 = map.get(WMBidUtil.MATERIAL_TYPE);
        byte b11 = 7;
        String str3 = "1";
        if (!TextUtils.isEmpty(str2)) {
            str2.hashCode();
            switch (str2) {
                case "1":
                    i11 = 1;
                    break;
                case "2":
                    i11 = 2;
                    break;
                case "3":
                    i11 = 3;
                    break;
                case "4":
                    i11 = 4;
                    break;
                case "5":
                    i11 = 5;
                    break;
                case "6":
                    i11 = 6;
                    break;
                default:
                    i11 = 7;
                    break;
            }
        } else {
            i11 = 7;
        }
        linkedHashMap.put("ad_t", Integer.valueOf(i11));
        String str4 = map.get(WMBidUtil.AD_TIME);
        try {
            linkedHashMap.put("ad_time", !TextUtils.isEmpty(str4) ? WMBidUtil.parseLong(str4) : Long.valueOf(System.currentTimeMillis() / 1000));
        } catch (Exception unused) {
            linkedHashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
        }
        String str5 = map.get(WMBidUtil.BID_TYPE);
        if (!TextUtils.isEmpty(str5)) {
            str5.hashCode();
            switch (str5) {
                case "1":
                    i12 = 1;
                    break;
                case "2":
                    i12 = 2;
                    break;
                case "3":
                    i12 = 3;
                    break;
                case "4":
                default:
                    i12 = 4;
                    break;
            }
        } else {
            i12 = 4;
        }
        linkedHashMap.put("bid_t", Integer.valueOf(i12));
        if (map.containsKey(WMBidUtil.AD_TITLE)) {
            linkedHashMap.put("ad_ti", map.get(WMBidUtil.AD_TITLE));
        }
        if (map.containsKey(WMBidUtil.AD_USERNAME)) {
            linkedHashMap.put("ad_n", map.get(WMBidUtil.AD_USERNAME));
        }
        if (!z10) {
            String str6 = map.get(WMBidUtil.ECPM);
            if (TextUtils.isEmpty(str6)) {
                str6 = map.get(WMBidUtil.WIN_ECPM);
            }
            linkedHashMap.put("ecpm", str6);
            String str7 = map.get(WMBidUtil.REASON);
            String str8 = "203";
            if (!TextUtils.isEmpty(str7)) {
                str7.hashCode();
                switch (str7.hashCode()) {
                    case 48625:
                        if (!str7.equals(Constants.ERRORCODE_SDK_PREFIX)) {
                            b11 = -1;
                        } else {
                            b11 = 0;
                        }
                        break;
                    case 49587:
                        if (!str7.equals("201")) {
                            b11 = -1;
                        } else {
                            b11 = 1;
                        }
                        break;
                    case 49588:
                        if (!str7.equals("202")) {
                            b11 = -1;
                        } else {
                            b11 = 2;
                        }
                        break;
                    case 49589:
                        if (!str7.equals("203")) {
                            b11 = -1;
                        } else {
                            b11 = 3;
                        }
                        break;
                    case 50548:
                        if (!str7.equals("301")) {
                            b11 = -1;
                        } else {
                            b11 = 4;
                        }
                        break;
                    case 50549:
                        if (!str7.equals("302")) {
                            b11 = -1;
                        } else {
                            b11 = 5;
                        }
                        break;
                    case 50550:
                        if (!str7.equals("303")) {
                            b11 = -1;
                        } else {
                            b11 = 6;
                        }
                        break;
                    case 56313:
                        if (!str7.equals("900")) {
                            b11 = -1;
                        }
                        break;
                    default:
                        b11 = -1;
                        break;
                }
                switch (b11) {
                    case 0:
                        str8 = Constants.ERRORCODE_SDK_PREFIX;
                        break;
                    case 1:
                        str8 = "201";
                        break;
                    case 2:
                        str8 = "202";
                        break;
                    case 4:
                        str8 = "301";
                        break;
                    case 5:
                        str8 = "302";
                        break;
                    case 6:
                        str8 = "303";
                        break;
                    case 7:
                        str8 = "900";
                        break;
                }
            }
            linkedHashMap.put(MediationConstant.KEY_REASON, str8);
            String str9 = map.get(WMBidUtil.IS_SHOW);
            if (!TextUtils.isEmpty(str9)) {
                str9.hashCode();
                switch (str9) {
                    case "0":
                        obj = "0";
                        break;
                    case "1":
                        obj = "1";
                        break;
                    case "2":
                    default:
                        obj = "2";
                        break;
                }
            } else {
                obj = "2";
            }
            linkedHashMap.put("is_s", obj);
            String str10 = map.get(WMBidUtil.IS_CLICK);
            if (!TextUtils.isEmpty(str10)) {
                str10.hashCode();
                switch (str10) {
                    case "0":
                        str3 = "0";
                        break;
                    case "1":
                        break;
                    case "2":
                    default:
                        str3 = "2";
                        break;
                }
            } else {
                str3 = "2";
            }
            linkedHashMap.put("is_c", str3);
        }
        return linkedHashMap;
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
    public String getNetworkSdkVersion() {
        return AdSettings.getSDKVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        try {
            String str = (String) map.get("appId");
            SigmobLog.i(getClass().getSimpleName() + "---initializeADN:" + str);
            WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
            if (adConfig != null && adConfig.getCustomController() != null) {
                this.f85844a = adConfig.getCustomController();
            }
            WMCustomController wMCustomController = this.f85844a;
            if (wMCustomController != null) {
                MobadsPermissionSettings.setPermissionLocation(wMCustomController.isCanUseLocation());
                MobadsPermissionSettings.setPermissionReadDeviceID(this.f85844a.isCanUsePhoneState());
                MobadsPermissionSettings.setPermissionStorage(this.f85844a.isCanUseWriteExternal());
                MobadsPermissionSettings.setPermissionAppList(this.f85844a.isCanUseAppList());
                MobadsPermissionSettings.setPermissionOAID(this.f85844a.isCanUseOaid());
            }
            MobadsPermissionSettings.setLimitPersonalAds(!WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
            BDAdConfig.Builder dialogParams = new BDAdConfig.Builder().setDialogParams(new BDDialogParams.Builder().setDlDialogType(0).setDlDialogAnimStyle(0).build());
            callInitBefore(dialogParams);
            dialogParams.setAppsid(str).setWXAppid(WindMillAd.sharedAds().getWxOpenAppId()).build(context).init();
            callInitSuccess();
        } catch (Throwable th) {
            th.printStackTrace();
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        try {
            MobadsPermissionSettings.setLimitPersonalAds(!WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
