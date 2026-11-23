package com.windmill.adscope;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.BeiZiCustomController;
import com.beizi.fusion.BeiZis;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class AdScopeAdapterProxy extends WMCustomAdapterProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMCustomController f85824a;

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
        return BeiZis.getSdkVersion();
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void initializeADN(Context context, Map<String, Object> map) {
        try {
            String str = (String) map.get("appId");
            SigmobLog.i(getClass().getSimpleName() + " initializeADN:" + str);
            if (!TextUtils.isEmpty(WindMillAd.sharedAds().getOaidVersion())) {
                BeiZis.setOaidVersion(WindMillAd.sharedAds().getOaidVersion());
            }
            WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
            if (adConfig != null && adConfig.getCustomController() != null) {
                this.f85824a = adConfig.getCustomController();
            }
            callInitBefore(null);
            BeiZis.init(context, str, new BeiZiCustomController() { // from class: com.windmill.adscope.AdScopeAdapterProxy.1
                @Override // com.beizi.fusion.BeiZiCustomController
                public final String getDevOaid() {
                    return AdScopeAdapterProxy.this.f85824a != null ? AdScopeAdapterProxy.this.f85824a.getDevOaid() : super.getDevOaid();
                }

                @Override // com.beizi.fusion.BeiZiCustomController
                public final String getOaidVersion() {
                    return !TextUtils.isEmpty(WindMillAd.sharedAds().getOaidVersion()) ? WindMillAd.sharedAds().getOaidVersion() : super.getOaidVersion();
                }

                @Override // com.beizi.fusion.BeiZiCustomController
                public final boolean isCanUseLocation() {
                    return AdScopeAdapterProxy.this.f85824a != null ? AdScopeAdapterProxy.this.f85824a.isCanUseLocation() : super.isCanUseLocation();
                }

                @Override // com.beizi.fusion.BeiZiCustomController
                public final boolean isCanUseOaid() {
                    return AdScopeAdapterProxy.this.f85824a != null ? AdScopeAdapterProxy.this.f85824a.isCanUseOaid() : super.isCanUseOaid();
                }

                @Override // com.beizi.fusion.BeiZiCustomController
                public final boolean isCanUsePhoneState() {
                    return AdScopeAdapterProxy.this.f85824a != null ? AdScopeAdapterProxy.this.f85824a.isCanUsePhoneState() : super.isCanUsePhoneState();
                }

                @Override // com.beizi.fusion.BeiZiCustomController
                public final boolean isCanUseWifiState() {
                    return AdScopeAdapterProxy.this.f85824a != null ? AdScopeAdapterProxy.this.f85824a.isCanUseWifiState() : super.isCanUseWifiState();
                }
            });
            callInitSuccess();
        } catch (Throwable th) {
            th.printStackTrace();
            callInitFail(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy
    public void notifyPrivacyStatusChange() {
        try {
            BeiZis.setSupportPersonalized(WindMillAd.sharedAds().isPersonalizedAdvertisingOn());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
