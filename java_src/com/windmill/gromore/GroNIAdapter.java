package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTFeedAd f86182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f86183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86184c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86185d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q f86186e;

    static /* synthetic */ boolean b(GroNIAdapter groNIAdapter) {
        groNIAdapter.f86184c = true;
        return true;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        h hVar = this.f86183b;
        if (hVar != null) {
            hVar.destroy();
            this.f86183b = null;
        }
        this.f86184c = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86182a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTFeedAd tTFeedAd = this.f86182a;
        if (tTFeedAd != null) {
            return GroAdapterProxy.getRequestId(tTFeedAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f86184c || this.f86182a == null || this.f86183b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86184c = false;
            this.f86185d = n.a(map2);
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            TTAdSdk.getAdManager().createAdNative(context).loadFeedAd(new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(340.0f, 0.0f).setSupportDeepLink(true).setAdCount(1).setUserID("").build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.gromore.GroNIAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(GroNIAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    GroNIAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    SigmobLog.i(GroNIAdapter.this.getClass().getSimpleName() + " onFeedAdLoad()");
                    if (list == null || list.isEmpty()) {
                        GroNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                        return;
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        TTFeedAd tTFeedAd = list.get(i10);
                        MediationNativeManager mediationManager = tTFeedAd.getMediationManager();
                        if (mediationManager != null && !mediationManager.isExpress()) {
                            GroNIAdapter.this.f86182a = tTFeedAd;
                            break;
                        }
                    }
                    if (GroNIAdapter.this.f86182a == null) {
                        GroNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is not null but all isExpress " + str));
                        return;
                    }
                    GroNIAdapter.b(GroNIAdapter.this);
                    GroNIAdapter groNIAdapter = GroNIAdapter.this;
                    groNIAdapter.f86183b = new h(groNIAdapter.f86182a, GroNIAdapter.this.getChannelId());
                    if (GroNIAdapter.this.getBiddingType() == 1) {
                        GroNIAdapter groNIAdapter2 = GroNIAdapter.this;
                        groNIAdapter2.f86186e = n.a(groNIAdapter2.f86182a, GroNIAdapter.this.f86185d, str, 0);
                        BidPrice bidPrice = new BidPrice(String.valueOf(GroNIAdapter.this.f86186e.f86346a));
                        GroNIAdapter groNIAdapter3 = GroNIAdapter.this;
                        groNIAdapter3.setGroC2sPriceInfo(groNIAdapter3.f86186e.f86346a, GroNIAdapter.this.f86186e.f86350e, GroNIAdapter.this.f86186e.f86349d, GroNIAdapter.this.f86186e.f86353h, GroNIAdapter.this.f86186e.f86351f, GroNIAdapter.this.f86186e.f86354i);
                        GroNIAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    GroNIAdapter.this.callLoadSuccess();
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86182a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? GroAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : GroAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f86182a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86182a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        Object obj;
        try {
            if (this.f86182a == null || this.f86183b == null || !this.f86184c) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
                return;
            }
            if (getBiddingType() == 1 && (obj = map2.get("eCpm")) != null) {
                this.f86182a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.f86183b, map2, new ViewInteractionListener() { // from class: com.windmill.gromore.GroNIAdapter.2
                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdClick() {
                    if (GroNIAdapter.this.f86182a != null && GroNIAdapter.this.f86182a.getMediationManager() != null) {
                        GroNIAdapter groNIAdapter = GroNIAdapter.this;
                        groNIAdapter.setGroEcpm(n.a(groNIAdapter.f86182a.getMediationManager().getShowEcpm()));
                    }
                    GroNIAdapter.this.callVideoAdClick();
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdClose() {
                    if (GroNIAdapter.this.f86182a != null && GroNIAdapter.this.f86182a.getMediationManager() != null) {
                        GroNIAdapter groNIAdapter = GroNIAdapter.this;
                        groNIAdapter.setGroEcpm(n.a(groNIAdapter.f86182a.getMediationManager().getShowEcpm()));
                    }
                    GroNIAdapter.this.callVideoAdClosed();
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdShow() {
                    if (GroNIAdapter.this.f86182a != null && GroNIAdapter.this.f86182a.getMediationManager() != null) {
                        GroNIAdapter groNIAdapter = GroNIAdapter.this;
                        groNIAdapter.setGroEcpm(n.a(groNIAdapter.f86182a.getMediationManager().getShowEcpm()));
                    }
                    GroNIAdapter.this.callVideoAdShow();
                    GroNIAdapter groNIAdapter2 = GroNIAdapter.this;
                    c.a(groNIAdapter2, groNIAdapter2.f86186e);
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdShowError(WMAdapterError wMAdapterError) {
                    GroNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                }
            });
            this.f86183b.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.gromore.GroNIAdapter.3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private boolean f86191b = false;

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onDownloadActive(long j10, long j11, String str, String str2) {
                    if (this.f86191b) {
                        return;
                    }
                    this.f86191b = true;
                    GroNIAdapter.this.callVideoAdClickDownload();
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
        } catch (Throwable th) {
            th.printStackTrace();
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
