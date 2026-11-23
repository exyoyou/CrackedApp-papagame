package com.windmill.baidu;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f85858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeResponse f85859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f85860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f85861d;

    static /* synthetic */ void d(BdNBAdapter bdNBAdapter) {
        try {
            View view = bdNBAdapter.f85858a;
            if (view == null || view.getParent() == null) {
                return;
            }
            ViewParent parent = bdNBAdapter.f85858a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(bdNBAdapter.f85858a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f85859b != null) {
            this.f85859b = null;
        }
        if (this.f85858a != null) {
            this.f85858a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f85858a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f85859b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object adDataForKey;
        try {
            NativeResponse nativeResponse = this.f85859b;
            if (nativeResponse == null || (adDataForKey = nativeResponse.getAdDataForKey("request_id")) == null) {
                return null;
            }
            HashMap map = new HashMap();
            map.put("request_id", adDataForKey);
            return map;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f85859b == null || this.f85858a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with Context is null"));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f85860c = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f85861d = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            BaiduNativeManager baiduNativeManager = new BaiduNativeManager(context, str);
            RequestParameters.Builder builderDownloadAppConfirmPolicy = new RequestParameters.Builder().downloadAppConfirmPolicy(1);
            BidInfo lastBidInfo = getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(getClass().getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                builderDownloadAppConfirmPolicy.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            try {
                Object obj3 = map2.get(WMConstants.BID_FLOOR);
                if (obj3 != null) {
                    baiduNativeManager.setBidFloor(((Integer) obj3).intValue());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            baiduNativeManager.loadFeedAd(builderDownloadAppConfirmPolicy.build(), new BaiduNativeManager.FeedAdListener() { // from class: com.windmill.baidu.BdNBAdapter.1
                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onLpClosed() {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onLpClosed()");
                }

                public void onNativeFail(int i10, String str2) {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onNativeFail:" + i10 + ":" + str2);
                    BdNBAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeLoad(final List<NativeResponse> list) {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onNativeLoad()");
                    if (list != null && !list.isEmpty()) {
                        BdNBAdapter.this.f85859b = list.get(0);
                        new BannerViewManager(context, BdNBAdapter.this.f85860c, BdNBAdapter.this.f85861d, new f(context, BdNBAdapter.this.f85859b, BdNBAdapter.this.getChannelId(), map2), map2, new BannerViewInteractionListener() { // from class: com.windmill.baidu.BdNBAdapter.1.1
                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClick() {
                                BdNBAdapter.this.callBannerAdClick();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClose() {
                                BdNBAdapter.d(BdNBAdapter.this);
                                BdNBAdapter.this.callBannerAdClosed();
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderError(WMAdapterError wMAdapterError) {
                                BdNBAdapter.this.callLoadFail(wMAdapterError);
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderSuccess(View view) {
                                if (view == null) {
                                    BdNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  " + str));
                                    return;
                                }
                                BdNBAdapter.this.f85858a = view;
                                if (BdNBAdapter.this.getBiddingType() == 1) {
                                    BidPrice bidPrice = new BidPrice(!TextUtils.isEmpty(BdNBAdapter.this.f85859b.getECPMLevel()) ? BdNBAdapter.this.f85859b.getECPMLevel() : "0");
                                    bidPrice.pecpm = BdNBAdapter.this.f85859b.getPECPM();
                                    BdNBAdapter.this.callLoadBiddingSuccess(bidPrice);
                                }
                                BdNBAdapter.this.callLoadSuccess(list);
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShow() {
                                BdNBAdapter.this.callBannerAdShow();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShowError(WMAdapterError wMAdapterError) {
                                BdNBAdapter.this.callBannerAdShowError(wMAdapterError);
                            }
                        }).render();
                        return;
                    }
                    BdNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                }

                public void onNoAd(int i10, String str2) {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onNoAd:" + i10 + ":" + str2);
                    BdNBAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadFailed() {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onVideoDownloadFailed()");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadSuccess() {
                    SigmobLog.i(BdNBAdapter.class.getClass().getSimpleName() + " onVideoDownloadSuccess()");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeFail(int i10, String str2, NativeResponse nativeResponse) {
                    onNativeFail(i10, str2);
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNoAd(int i10, String str2, NativeResponse nativeResponse) {
                    onNoAd(i10, str2);
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85859b != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                LinkedHashMap<String, Object> linkedHashMapCastBiddingInfo = bidInfoWithChannel != null ? BdAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : BdAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + linkedHashMapCastBiddingInfo);
                if (z10) {
                    a.a(this.f85859b, String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    a.b(this.f85859b, String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
