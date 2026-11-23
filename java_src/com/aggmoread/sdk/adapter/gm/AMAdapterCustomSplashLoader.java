package com.aggmoread.sdk.adapter.gm;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.adapter.helper.AdapterHelper;
import com.aggmoread.sdk.adapter.helper.LogHelper;
import com.aggmoread.sdk.adapter.helper.ThreadHelper;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdLoader;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.splash.AMSplashAd;
import com.aggmoread.sdk.client.splash.AMSplashAdListener;
import com.aggmoread.sdk.client.splash.AMSplashInteractionListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.splash.MediationCustomSplashLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class AMAdapterCustomSplashLoader extends MediationCustomSplashLoader {
    private AMSplashAd amSplashAd;
    private Context mContext;

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void load(final Context context, AdSlot adSlot, final MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogHelper.log("AdapterCustomSplashLoader load Ad enter ");
        ThreadHelper.runInWorkerThread(new Runnable() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomSplashLoader.2
            @Override // java.lang.Runnable
            public void run() {
                AMAdapterCustomSplashLoader.this.mContext = context;
                try {
                    AMAdLoader aMAdLoaderMakeAdLoader = AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(mediationCustomServiceConfig.getADNNetworkSlotId()).setAdCount(1).setFetchTimeOut(3000).build());
                    if (aMAdLoaderMakeAdLoader != null) {
                        aMAdLoaderMakeAdLoader.loadSplashAd(context, new AMSplashAdListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomSplashLoader.2.1
                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoadFail(AMError aMError) {
                                LogHelper.log("AdapterCustomSplashLoader onAdLoadFail " + aMError);
                                if (aMError == null) {
                                    AMAdapterCustomSplashLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "no ad");
                                    return;
                                }
                                LogHelper.log("onNoAD errorCode = " + aMError.code + " errorMessage = " + aMError.msg);
                                AMAdapterCustomSplashLoader.this.callLoadFail(aMError.code, aMError.msg);
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoaded(List<AMSplashAd> list) {
                                LogHelper.log("AdapterCustomSplashLoader onAdLoaded ");
                                if (list == null || list.isEmpty()) {
                                    AMAdapterCustomSplashLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "广告加载失败，没有匹配到合适的广告!");
                                    return;
                                }
                                AMAdapterCustomSplashLoader.this.amSplashAd = list.get(0);
                                int price = AdapterHelper.getPrice(AMAdapterCustomSplashLoader.this.amSplashAd.getAdExtras());
                                if (price > 0) {
                                    AMAdapterCustomSplashLoader.this.callLoadSuccess(price);
                                } else {
                                    AMAdapterCustomSplashLoader.this.callLoadSuccess();
                                }
                            }
                        });
                    } else {
                        AMAdapterCustomSplashLoader.this.callLoadFail(AdapterHelper.ERROR_HANDLE_CODE, "广告加载器构建失败!");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    LogHelper.log("splash err " + e10.getMessage());
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void receiveBidResult(boolean z10, double d10, int i10, @Nullable Map<String, Object> map) {
        if (AdapterHelper.notifyBidResult(this.amSplashAd, z10, d10, i10)) {
            return;
        }
        super.receiveBidResult(z10, d10, i10, map);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.splash.MediationCustomSplashLoader
    public void showAd(final ViewGroup viewGroup) {
        LogHelper.log("AdapterCustomSplashLoader show Ad enter ");
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomSplashLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AMAdapterCustomSplashLoader.this.amSplashAd != null) {
                        AMAdapterCustomSplashLoader.this.amSplashAd.showViewGroup(viewGroup, new AMSplashInteractionListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomSplashLoader.1.1
                            @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
                            public void onAdClicked() {
                                AMAdapterCustomSplashLoader.this.callSplashAdClicked();
                            }

                            @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
                            public void onAdClosed() {
                                AMAdapterCustomSplashLoader.this.callSplashAdDismiss();
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdInteractionListener
                            public void onAdError(AMError aMError) {
                                LogHelper.log("splash show err : " + aMError);
                            }

                            @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
                            public void onAdExposed() {
                                AMAdapterCustomSplashLoader.this.callSplashAdShow();
                            }

                            @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
                            public void onAdTick(long j10) {
                            }
                        });
                    } else {
                        LogHelper.log("splash show err , ad is null！");
                    }
                }
            });
        }
    }
}
