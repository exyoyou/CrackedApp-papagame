package com.join.mgps.ad.adapter;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.join.mgps.pref.PrefDef_;
import com.windmill.sdk.WMNetworkInitListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillConsentStatus;
import com.windmill.sdk.WindMillUserAgeStatus;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f58346a;

    class a implements WMNetworkInitListener {
        a() {
        }

        @Override // com.windmill.sdk.WMNetworkInitListener
        public void onNetworkInitBefore(int channel_id, Object initInstance) {
            if (initInstance instanceof TTAdConfig.Builder) {
                TTAdConfig.Builder builder = (TTAdConfig.Builder) initInstance;
                builder.themeStatus(1);
                builder.useMediation(true);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onNetworkInitBefore----------");
            sb2.append(channel_id);
            sb2.append(" ---initInstance--- ");
            sb2.append(initInstance);
        }

        @Override // com.windmill.sdk.WMNetworkInitListener
        public void onNetworkInitFailed(int channel_id, int error_code, String error_msg) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onNetworkInitFailed----------");
            sb2.append(channel_id);
            sb2.append(":");
            sb2.append(error_code);
            sb2.append(":");
            sb2.append(error_msg);
        }

        @Override // com.windmill.sdk.WMNetworkInitListener
        public void onNetworkInitSuccess(int channel_id) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onNetworkInitSuccess----------");
            sb2.append(channel_id);
        }
    }

    public static void a(Context context, String appId, e6.a callback) {
        try {
            if (new PrefDef_(context).sdkInit().d().booleanValue()) {
                return;
            }
            if (!f58346a) {
                WindMillAd windMillAdSharedAds = WindMillAd.sharedAds();
                windMillAdSharedAds.setUserAge(18);
                windMillAdSharedAds.setAdult(true);
                windMillAdSharedAds.setPersonalizedAdvertisingOn(true);
                windMillAdSharedAds.setIsAgeRestrictedUser(WindMillUserAgeStatus.WindAgeRestrictedStatusNO);
                windMillAdSharedAds.setUserGDPRConsentStatus(WindMillConsentStatus.ACCEPT);
                windMillAdSharedAds.startWithAppId(context, appId);
                windMillAdSharedAds.setSupportMultiProcess(true);
                windMillAdSharedAds.setDebugEnable(false);
                windMillAdSharedAds.setNetworkInitListener(new a());
                f58346a = true;
            }
            if (callback != null) {
                callback.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
