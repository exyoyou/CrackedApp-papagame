package com.aggmoread.sdk.adapter.gm;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.adapter.helper.AdapterHelper;
import com.aggmoread.sdk.adapter.helper.LogHelper;
import com.aggmoread.sdk.adapter.helper.ThreadHelper;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdLoader;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.AMVideoConfigs;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAd;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAdListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.interstitial.MediationCustomInterstitialLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class AMAdapterCustomInterLoader extends MediationCustomInterstitialLoader {
    private AMInterstitialAd amInterstitialAd;

    /* JADX INFO: Access modifiers changed from: private */
    public AMVideoConfigs getVideoOptions(AdSlot adSlot) {
        return AdapterHelper.getVideoOptions(adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void load(final Context context, final AdSlot adSlot, final MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogHelper.log("AMAdapterCustomInterLoader load Ad enter ");
        ThreadHelper.runInWorkerThread(new Runnable() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomInterLoader.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AMAdLoader aMAdLoaderMakeAdLoader = AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(mediationCustomServiceConfig.getADNNetworkSlotId()).setAdCount(1).setVideoConfig(AMAdapterCustomInterLoader.this.getVideoOptions(adSlot)).build());
                    if (aMAdLoaderMakeAdLoader != null) {
                        aMAdLoaderMakeAdLoader.loadInterstitialAd(context, new AMInterstitialAdListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomInterLoader.2.1
                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoadFail(AMError aMError) {
                                LogHelper.log("AMAdapterCustomInterLoader onAdLoadFail " + aMError);
                                if (aMError == null) {
                                    AMAdapterCustomInterLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "no ad");
                                    return;
                                }
                                LogHelper.log("onNoAD errorCode = " + aMError.code + " errorMessage = " + aMError.msg);
                                AMAdapterCustomInterLoader.this.callLoadFail(aMError.code, aMError.msg);
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoaded(List<AMInterstitialAd> list) {
                                LogHelper.log("AMAdapterCustomInterLoader onAdLoaded ");
                                if (list == null || list.isEmpty()) {
                                    AMAdapterCustomInterLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "广告加载失败，没有匹配到合适的广告!");
                                    return;
                                }
                                AMAdapterCustomInterLoader.this.amInterstitialAd = list.get(0);
                                int price = AdapterHelper.getPrice(AMAdapterCustomInterLoader.this.amInterstitialAd.getAdExtras());
                                if (price > 0) {
                                    AMAdapterCustomInterLoader.this.callLoadSuccess(price);
                                } else {
                                    AMAdapterCustomInterLoader.this.callLoadSuccess();
                                }
                            }

                            @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdListener
                            public void onAdVideoCached() {
                            }
                        });
                    } else {
                        AMAdapterCustomInterLoader.this.callLoadFail(AdapterHelper.ERROR_HANDLE_CODE, "广告加载器构建失败!");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    LogHelper.log("reward err " + e10.getMessage());
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void receiveBidResult(boolean z10, double d10, int i10, @Nullable Map<String, Object> map) {
        if (AdapterHelper.notifyBidResult(this.amInterstitialAd, z10, d10, i10)) {
            return;
        }
        super.receiveBidResult(z10, d10, i10, map);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.interstitial.MediationCustomInterstitialLoader
    public void showAd(Activity activity) {
        AMInterstitialAd aMInterstitialAd = this.amInterstitialAd;
        if (aMInterstitialAd != null) {
            aMInterstitialAd.show(activity, new AMInterstitialAdInteractionListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomInterLoader.1
                @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener
                public void onADLeftApplication() {
                    AMAdapterCustomInterLoader.this.callInterstitialAdLeftApplication();
                }

                @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener
                public void onAdClicked() {
                    AMAdapterCustomInterLoader.this.callInterstitialAdClick();
                }

                @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener
                public void onAdClosed() {
                    AMAdapterCustomInterLoader.this.callInterstitialClosed();
                }

                @Override // com.aggmoread.sdk.client.IAMAdInteractionListener
                public void onAdError(AMError aMError) {
                }

                @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener
                public void onAdExposed() {
                    AMAdapterCustomInterLoader.this.callInterstitialShow();
                }

                @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener
                public void onAdVideoCompleted() {
                }
            });
        }
    }
}
