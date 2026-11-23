package com.aggmoread.sdk.adapter.gm;

import android.content.Context;
import com.aggmoread.sdk.adapter.helper.AdapterHelper;
import com.aggmoread.sdk.adapter.helper.LogHelper;
import com.aggmoread.sdk.adapter.helper.ThreadHelper;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdLoader;
import com.aggmoread.sdk.client.AMAdSize;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.AMVideoConfigs;
import com.aggmoread.sdk.client.draw.AMDrawAd;
import com.aggmoread.sdk.client.draw.AMDrawAdListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.draw.MediationCustomDrawLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AMAdapterCustomDrawLoader extends MediationCustomDrawLoader {
    /* JADX INFO: Access modifiers changed from: private */
    public AMVideoConfigs getVideoOptions(AdSlot adSlot) {
        return AdapterHelper.getVideoOptions(adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void load(final Context context, final AdSlot adSlot, final MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogHelper.log("AMAdapterCustomRewardLoader load Ad enter ");
        ThreadHelper.runInWorkerThread(new Runnable() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomDrawLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String aDNNetworkSlotId = mediationCustomServiceConfig.getADNNetworkSlotId();
                    int imgAcceptedWidth = adSlot.getImgAcceptedWidth();
                    int imgAcceptedHeight = adSlot.getImgAcceptedHeight();
                    if (imgAcceptedHeight == 0) {
                        imgAcceptedHeight = -2;
                    }
                    AMAdLoader aMAdLoaderMakeAdLoader = AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(aDNNetworkSlotId).setAdCount(1).setAMAdSize(new AMAdSize(imgAcceptedWidth, imgAcceptedHeight)).setVideoConfig(AMAdapterCustomDrawLoader.this.getVideoOptions(adSlot)).build());
                    if (aMAdLoaderMakeAdLoader != null) {
                        aMAdLoaderMakeAdLoader.loadDrawAd(context, new AMDrawAdListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomDrawLoader.1.1
                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoadFail(AMError aMError) {
                                LogHelper.log("AMAdapterCustomRewardLoader onAdLoadFail " + aMError);
                                if (aMError == null) {
                                    AMAdapterCustomDrawLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "no ad");
                                    return;
                                }
                                LogHelper.log("onNoAD errorCode = " + aMError.code + " errorMessage = " + aMError.msg);
                                AMAdapterCustomDrawLoader.this.callLoadFail(aMError.code, aMError.msg);
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoaded(List<AMDrawAd> list) {
                                LogHelper.log("AMAdapterCustomDrawLoader onAdLoaded ");
                                if (list == null || list.isEmpty()) {
                                    AMAdapterCustomDrawLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "广告加载失败，没有匹配到合适的广告!");
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                for (int i10 = 0; i10 < list.size(); i10++) {
                                    AMDrawAd aMDrawAd = list.get(i10);
                                    int price = AdapterHelper.getPrice(aMDrawAd.getAdExtras());
                                    if (price < 0) {
                                        price = 0;
                                    }
                                    AMCustomDrawAd aMCustomDrawAd = new AMCustomDrawAd(aMDrawAd, adSlot);
                                    aMCustomDrawAd.setBiddingPrice(price);
                                    arrayList.add(aMCustomDrawAd);
                                }
                                AMAdapterCustomDrawLoader.this.callLoadSuccess(arrayList);
                            }
                        });
                    } else {
                        AMAdapterCustomDrawLoader.this.callLoadFail(AdapterHelper.ERROR_HANDLE_CODE, "广告加载器构建失败!");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    LogHelper.log("reward err " + e10.getMessage());
                }
            }
        });
    }
}
