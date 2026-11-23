package com.windmill.gromore;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f86171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTFeedAd f86172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f86173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86175e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q f86176f;

    static /* synthetic */ void f(GroNBAdapter groNBAdapter) {
        try {
            View view = groNBAdapter.f86171a;
            if (view == null || view.getParent() == null) {
                return;
            }
            ViewParent parent = groNBAdapter.f86171a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(groNBAdapter.f86171a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTFeedAd tTFeedAd = this.f86172b;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
            this.f86172b = null;
        }
        if (this.f86171a != null) {
            this.f86171a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f86171a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86172b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTFeedAd tTFeedAd = this.f86172b;
        if (tTFeedAd != null) {
            return GroAdapterProxy.getRequestId(tTFeedAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f86172b == null || this.f86171a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            this.f86175e = n.a(map2);
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with context is null"));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f86173c = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f86174d = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            GroAdapterProxy.getTTAdNative().loadFeedAd(new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(340.0f, 0.0f).setSupportDeepLink(true).setAdCount(1).setUserID("").build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.gromore.GroNBAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(GroNBAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    GroNBAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    SigmobLog.i(AnonymousClass1.class.getSimpleName() + " onFeedAdLoad()");
                    if (list == null || list.isEmpty()) {
                        GroNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                        return;
                    }
                    boolean zBooleanValue = false;
                    GroNBAdapter.this.f86172b = list.get(0);
                    try {
                        MediationNativeManager mediationManager = GroNBAdapter.this.f86172b.getMediationManager();
                        Method method = mediationManager.getClass().getMethod("isExpress", new Class[0]);
                        if (method != null) {
                            zBooleanValue = ((Boolean) method.invoke(mediationManager, new Object[0])).booleanValue();
                        }
                    } catch (Exception unused) {
                    }
                    if (!zBooleanValue) {
                        new BannerViewManager(context, GroNBAdapter.this.f86173c, GroNBAdapter.this.f86174d, new h(GroNBAdapter.this.f86172b, GroNBAdapter.this.getChannelId()), map2, new BannerViewInteractionListener() { // from class: com.windmill.gromore.GroNBAdapter.1.1
                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClick() {
                                if (GroNBAdapter.this.f86172b != null && GroNBAdapter.this.f86172b.getMediationManager() != null) {
                                    GroNBAdapter groNBAdapter = GroNBAdapter.this;
                                    groNBAdapter.setGroEcpm(n.a(groNBAdapter.f86172b.getMediationManager().getShowEcpm()));
                                }
                                GroNBAdapter.this.callBannerAdClick();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClose() {
                                if (GroNBAdapter.this.f86172b != null && GroNBAdapter.this.f86172b.getMediationManager() != null) {
                                    GroNBAdapter groNBAdapter = GroNBAdapter.this;
                                    groNBAdapter.setGroEcpm(n.a(groNBAdapter.f86172b.getMediationManager().getShowEcpm()));
                                }
                                GroNBAdapter.f(GroNBAdapter.this);
                                GroNBAdapter.this.callBannerAdClosed();
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderError(WMAdapterError wMAdapterError) {
                                GroNBAdapter.this.callLoadFail(wMAdapterError);
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderSuccess(View view) {
                                if (view == null) {
                                    GroNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  " + str));
                                    return;
                                }
                                GroNBAdapter.this.f86171a = view;
                                if (GroNBAdapter.this.getBiddingType() == 1) {
                                    GroNBAdapter groNBAdapter = GroNBAdapter.this;
                                    groNBAdapter.f86176f = n.a(groNBAdapter.f86172b, GroNBAdapter.this.f86175e, str, 0);
                                    BidPrice bidPrice = new BidPrice(String.valueOf(GroNBAdapter.this.f86176f.f86346a));
                                    GroNBAdapter groNBAdapter2 = GroNBAdapter.this;
                                    groNBAdapter2.setGroC2sPriceInfo(groNBAdapter2.f86176f.f86346a, GroNBAdapter.this.f86176f.f86350e, GroNBAdapter.this.f86176f.f86349d, GroNBAdapter.this.f86176f.f86353h, GroNBAdapter.this.f86176f.f86351f, GroNBAdapter.this.f86176f.f86354i);
                                    GroNBAdapter.this.callLoadBiddingSuccess(bidPrice);
                                }
                                GroNBAdapter.this.callLoadSuccess();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShow() {
                                if (GroNBAdapter.this.f86172b != null && GroNBAdapter.this.f86172b.getMediationManager() != null) {
                                    GroNBAdapter groNBAdapter = GroNBAdapter.this;
                                    groNBAdapter.setGroEcpm(n.a(groNBAdapter.f86172b.getMediationManager().getShowEcpm()));
                                }
                                GroNBAdapter.this.callBannerAdShow();
                                GroNBAdapter groNBAdapter2 = GroNBAdapter.this;
                                c.a(groNBAdapter2, groNBAdapter2.f86176f);
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShowError(WMAdapterError wMAdapterError) {
                                GroNBAdapter.this.callBannerAdShowError(wMAdapterError);
                            }
                        }).render();
                        return;
                    }
                    GroNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is not match rendering method " + str));
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch gro loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f86172b != null) {
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
                    this.f86172b.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86172b.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
