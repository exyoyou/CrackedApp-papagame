package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
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
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeResponse f85868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f85869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f85870c = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f85869b;
        if (fVar != null) {
            fVar.destroy();
            this.f85869b = null;
        }
        this.f85870c = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f85868a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object adDataForKey;
        try {
            NativeResponse nativeResponse = this.f85868a;
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
        return (!this.f85870c || this.f85868a == null || this.f85869b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f85870c = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + "----loadAd " + str);
            BaiduNativeManager baiduNativeManager = new BaiduNativeManager(context, str);
            RequestParameters.Builder builderDownloadAppConfirmPolicy = new RequestParameters.Builder().downloadAppConfirmPolicy(1);
            BidInfo lastBidInfo = getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(getClass().getSimpleName() + "---bidInfo:" + lastBidInfo.toString());
                builderDownloadAppConfirmPolicy.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    baiduNativeManager.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            baiduNativeManager.loadFeedAd(builderDownloadAppConfirmPolicy.build(), new BaiduNativeManager.FeedAdListener() { // from class: com.windmill.baidu.BdNIAdapter.1
                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onLpClosed() {
                    SigmobLog.i(getClass().getSimpleName() + "---onLpClosed()");
                }

                public void onNativeFail(int i10, String str2) {
                    SigmobLog.i(BdNIAdapter.this.getClass().getSimpleName() + " onNativeFail:" + i10 + ":" + str2);
                    BdNIAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeLoad(List<NativeResponse> list) {
                    SigmobLog.i(getClass().getSimpleName() + "----onNativeLoad()");
                    if (list == null || list.isEmpty()) {
                        BdNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    BdNIAdapter.a(BdNIAdapter.this);
                    BdNIAdapter.this.f85868a = list.get(0);
                    BdNIAdapter bdNIAdapter = BdNIAdapter.this;
                    bdNIAdapter.f85869b = new f(context, bdNIAdapter.f85868a, BdNIAdapter.this.getChannelId(), map2);
                    if (BdNIAdapter.this.getBiddingType() == 1) {
                        BidPrice bidPrice = new BidPrice(!TextUtils.isEmpty(BdNIAdapter.this.f85868a.getECPMLevel()) ? BdNIAdapter.this.f85868a.getECPMLevel() : "0");
                        bidPrice.pecpm = BdNIAdapter.this.f85868a.getPECPM();
                        BdNIAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    BdNIAdapter.this.callLoadSuccess(list);
                }

                public void onNoAd(int i10, String str2) {
                    SigmobLog.i(BdNIAdapter.this.getClass().getSimpleName() + " onNoAd:" + i10 + ":" + str2);
                    BdNIAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadFailed() {
                    SigmobLog.i(getClass().getSimpleName() + "---onVideoDownloadFailed()");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadSuccess() {
                    SigmobLog.i(getClass().getSimpleName() + "---onVideoDownloadSuccess()");
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
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "---notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85868a != null) {
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
                    a.a(this.f85868a, String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    a.b(this.f85868a, String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        f fVar;
        try {
            SigmobLog.i(getClass().getSimpleName() + "---showAd");
            if (this.f85868a == null || (fVar = this.f85869b) == null || !this.f85870c) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, fVar, map2, new ViewInteractionListener() { // from class: com.windmill.baidu.BdNIAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        BdNIAdapter.this.callVideoAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        BdNIAdapter.this.callVideoAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        BdNIAdapter.this.callVideoAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        BdNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                    }
                });
                this.f85869b.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.baidu.BdNIAdapter.3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private boolean f85877b = false;

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadActive(long j10, long j11, String str, String str2) {
                        if (this.f85877b) {
                            return;
                        }
                        this.f85877b = true;
                        BdNIAdapter.this.callVideoAdClickDownload();
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadFinished(long j10, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onIdle() {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onInstalled(String str, String str2) {
                    }
                });
                interstitialViewManager.setTips(getTips());
                interstitialViewManager.show();
            }
            this.f85870c = false;
        } catch (Exception e10) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }

    static /* synthetic */ boolean a(BdNIAdapter bdNIAdapter) {
        bdNIAdapter.f85870c = true;
        return true;
    }
}
