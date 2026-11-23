package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TTFeedAd f86194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f86195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86196e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f86197f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q f86198g;

    static /* synthetic */ boolean b(GroNSAdapter groNSAdapter) {
        groNSAdapter.f86196e = true;
        return true;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        h hVar = this.f86195d;
        if (hVar != null) {
            hVar.destroy();
            this.f86195d = null;
        }
        this.f86196e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86194c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTFeedAd tTFeedAd = this.f86194c;
        if (tTFeedAd != null) {
            return GroAdapterProxy.getRequestId(tTFeedAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f86196e || this.f86194c == null || this.f86195d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86196e = false;
            this.f86197f = n.a(map2);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            this.f86192a = context.getResources().getDisplayMetrics().widthPixels;
            this.f86193b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f86192a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f86193b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            TTAdSdk.getAdManager().createAdNative(context).loadFeedAd(new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(340.0f, 0.0f).setSupportDeepLink(true).setAdCount(1).setUserID("").build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.gromore.GroNSAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(GroNSAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    GroNSAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    SigmobLog.i(GroNSAdapter.this.getClass().getSimpleName() + " onFeedAdLoad()");
                    if (list == null || list.isEmpty()) {
                        GroNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                        return;
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        TTFeedAd tTFeedAd = list.get(i10);
                        MediationNativeManager mediationManager = tTFeedAd.getMediationManager();
                        if (mediationManager != null && !mediationManager.isExpress()) {
                            GroNSAdapter.this.f86194c = tTFeedAd;
                            break;
                        }
                    }
                    if (GroNSAdapter.this.f86194c == null) {
                        GroNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is not null but all isExpress " + str));
                        return;
                    }
                    GroNSAdapter.b(GroNSAdapter.this);
                    GroNSAdapter groNSAdapter = GroNSAdapter.this;
                    groNSAdapter.f86195d = new h(groNSAdapter.f86194c, GroNSAdapter.this.getChannelId());
                    if (GroNSAdapter.this.getBiddingType() == 1) {
                        GroNSAdapter groNSAdapter2 = GroNSAdapter.this;
                        groNSAdapter2.f86198g = n.a(groNSAdapter2.f86194c, GroNSAdapter.this.f86197f, str, 0);
                        BidPrice bidPrice = new BidPrice(String.valueOf(GroNSAdapter.this.f86198g.f86346a));
                        GroNSAdapter groNSAdapter3 = GroNSAdapter.this;
                        groNSAdapter3.setGroC2sPriceInfo(groNSAdapter3.f86198g.f86346a, GroNSAdapter.this.f86198g.f86350e, GroNSAdapter.this.f86198g.f86349d, GroNSAdapter.this.f86198g.f86353h, GroNSAdapter.this.f86198g.f86351f, GroNSAdapter.this.f86198g.f86354i);
                        GroNSAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    GroNSAdapter.this.callLoadSuccess();
                }
            });
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86194c != null) {
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
                    this.f86194c.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86194c.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f86194c == null || this.f86195d == null || !this.f86196e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                if (getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                    this.f86194c.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
                }
                new SplashViewManager(this.f86192a, this.f86193b, this.f86195d, map, new ViewInteractionListener() { // from class: com.windmill.gromore.GroNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        if (GroNSAdapter.this.f86194c != null && GroNSAdapter.this.f86194c.getMediationManager() != null) {
                            GroNSAdapter groNSAdapter = GroNSAdapter.this;
                            groNSAdapter.setGroEcpm(n.a(groNSAdapter.f86194c.getMediationManager().getShowEcpm()));
                        }
                        GroNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        if (GroNSAdapter.this.f86194c != null && GroNSAdapter.this.f86194c.getMediationManager() != null) {
                            GroNSAdapter groNSAdapter = GroNSAdapter.this;
                            groNSAdapter.setGroEcpm(n.a(groNSAdapter.f86194c.getMediationManager().getShowEcpm()));
                        }
                        GroNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        if (GroNSAdapter.this.f86194c != null && GroNSAdapter.this.f86194c.getMediationManager() != null) {
                            GroNSAdapter groNSAdapter = GroNSAdapter.this;
                            groNSAdapter.setGroEcpm(n.a(groNSAdapter.f86194c.getMediationManager().getShowEcpm()));
                        }
                        GroNSAdapter.this.callSplashAdShow();
                        GroNSAdapter groNSAdapter2 = GroNSAdapter.this;
                        c.a(groNSAdapter2, groNSAdapter2.f86198g);
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        GroNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f86196e = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }
}
