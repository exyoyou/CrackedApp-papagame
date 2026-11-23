package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoBannerAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<TTNativeExpressAd> f87657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTNativeExpressAd f87658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f87659c;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTNativeExpressAd tTNativeExpressAd = this.f87658b;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f87658b = null;
            this.f87659c = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f87659c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87658b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        TTNativeExpressAd tTNativeExpressAd = this.f87658b;
        if (tTNativeExpressAd == null || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f87658b == null || this.f87659c == null) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00df A[Catch: all -> 0x0139, TryCatch #2 {all -> 0x0139, blocks: (B:4:0x0004, B:6:0x0015, B:8:0x0019, B:12:0x002e, B:14:0x0036, B:16:0x003f, B:19:0x0049, B:21:0x0051, B:23:0x005a, B:40:0x00a6, B:42:0x00df, B:49:0x00f9, B:51:0x0114, B:52:0x011b, B:54:0x0128, B:35:0x0077, B:39:0x00a1), top: B:63:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:51:0x0114 A[Catch: all -> 0x0139, TryCatch #2 {all -> 0x0139, blocks: (B:4:0x0004, B:6:0x0015, B:8:0x0019, B:12:0x002e, B:14:0x0036, B:16:0x003f, B:19:0x0049, B:21:0x0051, B:23:0x005a, B:40:0x00a6, B:42:0x00df, B:49:0x00f9, B:51:0x0114, B:52:0x011b, B:54:0x0128, B:35:0x0077, B:39:0x00a1), top: B:63:0x0002 }] */
    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        float f10;
        float f11;
        float f12;
        float f13;
        String str;
        AdSlot.Builder adCount;
        try {
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null "));
                return;
            }
            if (!(context instanceof Activity)) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is not activity "));
                return;
            }
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
                        str = (String) map2.get("placementId");
                        SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + f12 + ":" + f13);
                        if (TextUtils.isEmpty(str)) {
                            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "codeId is null"));
                            return;
                        }
                        if (f12 > 0.0f) {
                            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
                            adCount = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(f12, f13).setAdCount(1);
                            if (getBiddingType() == 0) {
                                adCount.withBid(getHbResponseStr());
                            }
                            tTAdNative.loadBannerExpressAd(adCount.build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.toutiao.TouTiaoBannerAdapter.1
                                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                                public final void onError(int i10, String str2) {
                                    SigmobLog.i(TouTiaoBannerAdapter.this.getClass().getSimpleName() + " onError:" + i10 + ":" + str2);
                                    TouTiaoBannerAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                                }

                                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                                public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                                    TouTiaoBannerAdapter.this.f87657a = list;
                                    if (list == null || list.isEmpty()) {
                                        TouTiaoBannerAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0"));
                                        return;
                                    }
                                    SigmobLog.i(TouTiaoBannerAdapter.this.getClass().getSimpleName() + " onNativeExpressAdLoad:" + list.size());
                                    TouTiaoBannerAdapter.this.f87658b = list.get(0);
                                    TouTiaoBannerAdapter touTiaoBannerAdapter = TouTiaoBannerAdapter.this;
                                    TouTiaoBannerAdapter.a(touTiaoBannerAdapter, (Activity) context, touTiaoBannerAdapter.f87658b);
                                }
                            });
                            return;
                        }
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with activity is null or adSize is error"));
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
                    String str2 = (String) map2.get(WMConstants.AD_SIZE);
                    int iIndexOf = str2.indexOf("x");
                    f12 = Float.parseFloat(str2.substring(0, iIndexOf)) / 2.0f;
                    f13 = Float.parseFloat(str2.substring(iIndexOf + 1)) / 2.0f;
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
            str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + f12 + ":" + f13);
            if (TextUtils.isEmpty(str)) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "codeId is null"));
                return;
            }
            if (f12 > 0.0f && f13 > 0.0f) {
                TTAdNative tTAdNative2 = TouTiaoAdapterProxy.getTTAdNative();
                adCount = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(f12, f13).setAdCount(1);
                if (getBiddingType() == 0) {
                    adCount.withBid(getHbResponseStr());
                }
                tTAdNative2.loadBannerExpressAd(adCount.build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.toutiao.TouTiaoBannerAdapter.1
                    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                    public final void onError(int i10, String str3) {
                        SigmobLog.i(TouTiaoBannerAdapter.this.getClass().getSimpleName() + " onError:" + i10 + ":" + str3);
                        TouTiaoBannerAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str3), str3));
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                    public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                        TouTiaoBannerAdapter.this.f87657a = list;
                        if (list == null || list.isEmpty()) {
                            TouTiaoBannerAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0"));
                            return;
                        }
                        SigmobLog.i(TouTiaoBannerAdapter.this.getClass().getSimpleName() + " onNativeExpressAdLoad:" + list.size());
                        TouTiaoBannerAdapter.this.f87658b = list.get(0);
                        TouTiaoBannerAdapter touTiaoBannerAdapter = TouTiaoBannerAdapter.this;
                        TouTiaoBannerAdapter.a(touTiaoBannerAdapter, (Activity) context, touTiaoBannerAdapter.f87658b);
                    }
                });
                return;
            }
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with activity is null or adSize is error"));
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f87658b != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f87658b.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87658b.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static /* synthetic */ void a(TouTiaoBannerAdapter touTiaoBannerAdapter, Activity activity, final TTNativeExpressAd tTNativeExpressAd) {
        tTNativeExpressAd.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.windmill.toutiao.TouTiaoBannerAdapter.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdClicked(View view, int i10) {
                TouTiaoBannerAdapter.this.callBannerAdClick();
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdShow(View view, int i10) {
                TouTiaoBannerAdapter.this.callBannerAdShow();
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderFail(View view, String str, int i10) {
                TouTiaoBannerAdapter.this.callLoadFail(new WMAdapterError(i10, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderSuccess(View view, float f10, float f11) {
                Object obj;
                TouTiaoBannerAdapter.this.f87659c = view;
                if (TouTiaoBannerAdapter.this.getBiddingType() == 1) {
                    Map<String, Object> mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo();
                    TouTiaoBannerAdapter.this.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj)));
                }
                TouTiaoBannerAdapter touTiaoBannerAdapter2 = TouTiaoBannerAdapter.this;
                touTiaoBannerAdapter2.callLoadSuccess(touTiaoBannerAdapter2.f87657a);
            }
        });
        tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.toutiao.TouTiaoBannerAdapter.3
            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onCancel() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onSelected(int i10, String str, boolean z10) {
                TouTiaoBannerAdapter.this.callBannerAdClosed();
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public final void onShow() {
            }
        });
        tTNativeExpressAd.render();
    }
}
