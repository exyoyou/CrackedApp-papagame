package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroBannerAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTNativeExpressAd f86155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f86156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f86157c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f86158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q f86159e;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTNativeExpressAd tTNativeExpressAd = this.f86155a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f86155a = null;
            this.f86156b = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f86156b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86155a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTNativeExpressAd tTNativeExpressAd = this.f86155a;
        if (tTNativeExpressAd != null) {
            return GroAdapterProxy.getRequestId(tTNativeExpressAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getNetworkOption() {
        MediationNativeManager mediationManager;
        MediationAdEcpmInfo showEcpm;
        HashMap map = new HashMap();
        TTNativeExpressAd tTNativeExpressAd = this.f86155a;
        if (tTNativeExpressAd != null && (mediationManager = tTNativeExpressAd.getMediationManager()) != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
            map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
            map.put("adnNetworkRitId", showEcpm.getSlotId());
            map.put("adnEcpm", showEcpm.getEcpm());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f86155a == null || this.f86156b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        float f10;
        float f11;
        float f12;
        float f13;
        if (context == null) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null "));
            return;
        }
        if (!(context instanceof Activity)) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is not activity "));
            return;
        }
        try {
            this.f86157c = n.a(map2);
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    f12 = (obj == null || ((Integer) obj).intValue() == 0) ? 0.0f : Float.parseFloat(String.valueOf(obj));
                    try {
                        Object obj2 = map.get(WMConstants.AD_HEIGHT);
                        f13 = (obj2 == null || ((Integer) obj2).intValue() == 0) ? 0.0f : Float.parseFloat(String.valueOf(obj2));
                    } catch (Exception e10) {
                        e = e10;
                        f11 = f12;
                        f10 = 0.0f;
                        e.printStackTrace();
                        f13 = f10;
                        f12 = f11;
                        this.f86158d = (String) map2.get("placementId");
                        SigmobLog.i(getClass().getSimpleName() + " loadAd:" + this.f86158d + ":" + f12 + ":" + f13);
                        if (context instanceof Activity) {
                            GroAdapterProxy.getTTAdNative().loadBannerExpressAd(new AdSlot.Builder().setCodeId(this.f86158d).setExpressViewAcceptedSize(f12, f13).setAdCount(1).build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.gromore.GroBannerAdapter.1
                                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                                public final void onError(int i10, String str) {
                                    SigmobLog.i(GroBannerAdapter.this.getClass().getSimpleName() + " onError:" + i10 + ":" + str);
                                    GroBannerAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str), str));
                                }

                                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                                public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                                    if (list == null || list.isEmpty()) {
                                        GroBannerAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0"));
                                        return;
                                    }
                                    SigmobLog.i(GroBannerAdapter.this.getClass().getSimpleName() + " onNativeExpressAdLoad:" + list.size());
                                    GroBannerAdapter.this.f86155a = list.get(0);
                                    GroBannerAdapter groBannerAdapter = GroBannerAdapter.this;
                                    GroBannerAdapter.a(groBannerAdapter, (Activity) context, groBannerAdapter.f86155a);
                                }
                            });
                            return;
                        }
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with context is null or not Activity or adSize is error"));
                    }
                } catch (Exception e11) {
                    e = e11;
                    f10 = 0.0f;
                    f11 = 0.0f;
                }
            } else {
                f13 = 0.0f;
                f12 = 0.0f;
            }
            if (f12 == 0.0f || f13 == 0.0f) {
                try {
                    String str = (String) map2.get(WMConstants.AD_SIZE);
                    int iIndexOf = str.indexOf("x");
                    f12 = Float.parseFloat(str.substring(0, iIndexOf)) / 2.0f;
                    f13 = Float.parseFloat(str.substring(iIndexOf + 1)) / 2.0f;
                } catch (Exception e12) {
                    float f14 = f12;
                    f10 = f13;
                    e = e12;
                    f11 = f14;
                    e.printStackTrace();
                    f13 = f10;
                    f12 = f11;
                }
            }
            this.f86158d = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + this.f86158d + ":" + f12 + ":" + f13);
            if ((context instanceof Activity) && f12 > 0.0f && f13 > 0.0f) {
                GroAdapterProxy.getTTAdNative().loadBannerExpressAd(new AdSlot.Builder().setCodeId(this.f86158d).setExpressViewAcceptedSize(f12, f13).setAdCount(1).build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.gromore.GroBannerAdapter.1
                    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                    public final void onError(int i10, String str2) {
                        SigmobLog.i(GroBannerAdapter.this.getClass().getSimpleName() + " onError:" + i10 + ":" + str2);
                        GroBannerAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                    public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                        if (list == null || list.isEmpty()) {
                            GroBannerAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0"));
                            return;
                        }
                        SigmobLog.i(GroBannerAdapter.this.getClass().getSimpleName() + " onNativeExpressAdLoad:" + list.size());
                        GroBannerAdapter.this.f86155a = list.get(0);
                        GroBannerAdapter groBannerAdapter = GroBannerAdapter.this;
                        GroBannerAdapter.a(groBannerAdapter, (Activity) context, groBannerAdapter.f86155a);
                    }
                });
                return;
            }
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with context is null or not Activity or adSize is error"));
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f86155a != null) {
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
                    this.f86155a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86155a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static /* synthetic */ void a(GroBannerAdapter groBannerAdapter, Activity activity, final TTNativeExpressAd tTNativeExpressAd) {
        tTNativeExpressAd.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.windmill.gromore.GroBannerAdapter.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdClicked(View view, int i10) {
                if (tTNativeExpressAd.getMediationManager() != null) {
                    GroBannerAdapter.this.setGroEcpm(n.a(tTNativeExpressAd.getMediationManager().getShowEcpm()));
                }
                GroBannerAdapter.this.callBannerAdClick();
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdShow(View view, int i10) {
                if (tTNativeExpressAd.getMediationManager() != null) {
                    GroBannerAdapter.this.setGroEcpm(n.a(tTNativeExpressAd.getMediationManager().getShowEcpm()));
                }
                GroBannerAdapter.this.callBannerAdShow();
                GroBannerAdapter groBannerAdapter2 = GroBannerAdapter.this;
                c.a(groBannerAdapter2, groBannerAdapter2.f86159e);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderFail(View view, String str, int i10) {
                GroBannerAdapter.this.callLoadFail(new WMAdapterError(i10, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderSuccess(View view, float f10, float f11) {
                GroBannerAdapter groBannerAdapter2 = GroBannerAdapter.this;
                groBannerAdapter2.f86156b = groBannerAdapter2.f86155a.getExpressAdView();
                if (GroBannerAdapter.this.getBiddingType() == 1) {
                    GroBannerAdapter groBannerAdapter3 = GroBannerAdapter.this;
                    groBannerAdapter3.f86159e = n.a(groBannerAdapter3.f86155a, GroBannerAdapter.this.f86157c, GroBannerAdapter.this.f86158d, 2);
                    BidPrice bidPrice = new BidPrice(String.valueOf(GroBannerAdapter.this.f86159e.f86346a));
                    WMLogUtil.i("-------GroRew:  " + GroBannerAdapter.this.f86159e);
                    GroBannerAdapter groBannerAdapter4 = GroBannerAdapter.this;
                    groBannerAdapter4.setGroC2sPriceInfo(groBannerAdapter4.f86159e.f86346a, GroBannerAdapter.this.f86159e.f86350e, GroBannerAdapter.this.f86159e.f86349d, GroBannerAdapter.this.f86159e.f86353h, GroBannerAdapter.this.f86159e.f86351f, GroBannerAdapter.this.f86159e.f86354i);
                    GroBannerAdapter.this.callLoadBiddingSuccess(bidPrice);
                }
                GroBannerAdapter.this.callLoadSuccess();
            }
        });
        tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.gromore.GroBannerAdapter.3
            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onCancel() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onSelected(int i10, String str, boolean z10) {
                if (tTNativeExpressAd.getMediationManager() != null) {
                    GroBannerAdapter.this.setGroEcpm(n.a(tTNativeExpressAd.getMediationManager().getShowEcpm()));
                }
                GroBannerAdapter.this.callBannerAdClosed();
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onShow() {
            }
        });
        tTNativeExpressAd.render();
    }
}
