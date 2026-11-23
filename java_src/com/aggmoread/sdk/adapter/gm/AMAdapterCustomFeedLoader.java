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
import com.aggmoread.sdk.client.feedlist.AMExpressAd;
import com.aggmoread.sdk.client.feedlist.AMExpressAdListener;
import com.aggmoread.sdk.client.feedlist.AMNativeAd;
import com.aggmoread.sdk.client.feedlist.AMNativeAdListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad.MediationCustomNativeLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AMAdapterCustomFeedLoader extends MediationCustomNativeLoader {
    /* JADX INFO: Access modifiers changed from: private */
    public AMVideoConfigs getVideoOptions(AdSlot adSlot) {
        return AdapterHelper.getVideoOptions(adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomAdBaseLoader
    public void load(final Context context, final AdSlot adSlot, final MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogHelper.log("AMAdapterCustomFeedLoader load Ad enter ");
        ThreadHelper.runInWorkerThread(new Runnable() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomFeedLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String aDNNetworkSlotId = mediationCustomServiceConfig.getADNNetworkSlotId();
                    int imgAcceptedWidth = adSlot.getImgAcceptedWidth();
                    int imgAcceptedHeight = adSlot.getImgAcceptedHeight();
                    if (imgAcceptedHeight == 0) {
                        imgAcceptedHeight = -2;
                    }
                    AMAdLoader aMAdLoaderMakeAdLoader = AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(aDNNetworkSlotId).setAdCount(1).setAMAdSize(new AMAdSize(imgAcceptedWidth, imgAcceptedHeight)).setVideoConfig(AMAdapterCustomFeedLoader.this.getVideoOptions(adSlot)).build());
                    if (aMAdLoaderMakeAdLoader == null) {
                        AMAdapterCustomFeedLoader.this.callLoadFail(AdapterHelper.ERROR_HANDLE_CODE, "广告加载器构建失败!");
                    } else if (AMAdapterCustomFeedLoader.this.isNativeAd()) {
                        aMAdLoaderMakeAdLoader.loadNativeAd(context, new AMNativeAdListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomFeedLoader.1.1
                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoadFail(AMError aMError) {
                                if (aMError == null) {
                                    AMAdapterCustomFeedLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "no ad");
                                    return;
                                }
                                LogHelper.log("native onAdLoadFail errorCode = " + aMError.code + " errorMessage = " + aMError.msg);
                                AMAdapterCustomFeedLoader.this.callLoadFail(aMError.code, aMError.msg);
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoaded(List<AMNativeAd> list) {
                                if (list == null || list.isEmpty()) {
                                    AMAdapterCustomFeedLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "广告加载失败，没有匹配到合适的广告!");
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                for (int i10 = 0; i10 < list.size(); i10++) {
                                    AMNativeAd aMNativeAd = list.get(i10);
                                    int price = AdapterHelper.getPrice(aMNativeAd.getAdExtras());
                                    if (price < 0) {
                                        price = 0;
                                    }
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AMCustomNativeAd aMCustomNativeAd = new AMCustomNativeAd(context, aMNativeAd, adSlot);
                                    aMCustomNativeAd.setBiddingPrice(price);
                                    arrayList.add(aMCustomNativeAd);
                                }
                                AMAdapterCustomFeedLoader.this.callLoadSuccess(arrayList);
                            }
                        });
                    } else if (AMAdapterCustomFeedLoader.this.isExpressRender()) {
                        aMAdLoaderMakeAdLoader.loadExpressAd(context, new AMExpressAdListener() { // from class: com.aggmoread.sdk.adapter.gm.AMAdapterCustomFeedLoader.1.2
                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoadFail(AMError aMError) {
                                if (aMError == null) {
                                    AMAdapterCustomFeedLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "no ad");
                                    return;
                                }
                                LogHelper.log("express onAdLoadFail errorCode = " + aMError.code + " errorMessage = " + aMError.msg);
                                AMAdapterCustomFeedLoader.this.callLoadFail(aMError.code, aMError.msg);
                            }

                            @Override // com.aggmoread.sdk.client.IAMAdLoadListener
                            public void onAdLoaded(List<AMExpressAd> list) {
                                if (list == null || list.isEmpty()) {
                                    AMAdapterCustomFeedLoader.this.callLoadFail(AdapterHelper.NO_AD_CODD, "广告加载失败，没有匹配到合适的广告!");
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                for (int i10 = 0; i10 < list.size(); i10++) {
                                    AMExpressAd aMExpressAd = list.get(i10);
                                    int price = AdapterHelper.getPrice(aMExpressAd.getAdExtras());
                                    if (price < 0) {
                                        price = 0;
                                    }
                                    AMCustomExpressAd aMCustomExpressAd = new AMCustomExpressAd(aMExpressAd, adSlot);
                                    aMCustomExpressAd.setBiddingPrice(price);
                                    arrayList.add(aMCustomExpressAd);
                                }
                                AMAdapterCustomFeedLoader.this.callLoadSuccess(arrayList);
                            }
                        });
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    LogHelper.log("feed err " + e10.getMessage());
                }
            }
        });
    }
}
