package com.windmill.kuaishou;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f86371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private KsNativeAd f86372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f86373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86374d;

    static /* synthetic */ void d(KuaiShouNBAdapter kuaiShouNBAdapter) {
        try {
            View view = kuaiShouNBAdapter.f86371a;
            if (view == null || view.getParent() == null) {
                return;
            }
            ViewParent parent = kuaiShouNBAdapter.f86371a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(kuaiShouNBAdapter.f86371a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f86372b != null) {
            this.f86372b = null;
        }
        if (this.f86371a != null) {
            this.f86371a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f86371a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86372b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        KsNativeAd ksNativeAd = this.f86372b;
        if (ksNativeAd != null) {
            return KuaiShouAdapterProxy.getRequestId(ksNativeAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f86372b == null || this.f86371a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with activity is null"));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f86373c = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f86374d = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            KsScene.Builder builderAdNum = new KsScene.Builder(WMBidUtil.parseLong(str).longValue()).adNum(1);
            if (getBiddingType() == 0) {
                builderAdNum.setBidResponseV2(getHbResponseStr());
            }
            NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
            nativeAdExtraData.setEnableShake(true);
            builderAdNum.setNativeAdExtraData(nativeAdExtraData);
            KsAdSDK.getLoadManager().loadNativeAd(builderAdNum.build(), new KsLoadManager.NativeAdListener() { // from class: com.windmill.kuaishou.KuaiShouNBAdapter.1
                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(KuaiShouNBAdapter.class.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    KuaiShouNBAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onNativeAdLoad(final List<KsNativeAd> list) {
                    SigmobLog.i(KuaiShouNBAdapter.class.getClass().getSimpleName() + " onNativeAdLoad()");
                    if (list != null && !list.isEmpty()) {
                        KuaiShouNBAdapter.this.f86372b = list.get(0);
                        new BannerViewManager(context, KuaiShouNBAdapter.this.f86373c, KuaiShouNBAdapter.this.f86374d, new f(context, KuaiShouNBAdapter.this.f86372b, KuaiShouNBAdapter.this.getChannelId(), map2), map2, new BannerViewInteractionListener() { // from class: com.windmill.kuaishou.KuaiShouNBAdapter.1.1
                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClick() {
                                KuaiShouNBAdapter.this.callBannerAdClick();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClose() {
                                KuaiShouNBAdapter.d(KuaiShouNBAdapter.this);
                                KuaiShouNBAdapter.this.callBannerAdClosed();
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderError(WMAdapterError wMAdapterError) {
                                KuaiShouNBAdapter.this.callLoadFail(wMAdapterError);
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderSuccess(View view) {
                                if (view != null) {
                                    KuaiShouNBAdapter.this.f86371a = view;
                                    if (KuaiShouNBAdapter.this.getBiddingType() == 1) {
                                        KuaiShouNBAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(KuaiShouNBAdapter.this.f86372b.getECPM())));
                                    }
                                    KuaiShouNBAdapter.this.callLoadSuccess(list);
                                    return;
                                }
                                KuaiShouNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  " + str));
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShow() {
                                KuaiShouNBAdapter.this.callBannerAdShow();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShowError(WMAdapterError wMAdapterError) {
                                KuaiShouNBAdapter.this.callBannerAdShowError(wMAdapterError);
                            }
                        }).render();
                        return;
                    }
                    KuaiShouNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "notifyBiddingResult:" + z10 + ":" + str);
        if (this.f86372b != null) {
            map.put("isKS", "0");
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getClass().getSimpleName());
            sb2.append(" notifyBiddingResult-----2:");
            sb2.append(bidInfoWithChannel);
            SigmobLog.i(sb2.toString());
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
            SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
            if (!z10) {
                Object obj = mapCastBiddingInfo.get("adExposureFailedReasonCode");
                this.f86372b.reportAdExposureFailed(obj != null ? ((Integer) obj).intValue() : 2, (AdExposureFailedReason) mapCastBiddingInfo.get("adExposureFailedReason"));
                return;
            }
            Object obj2 = mapCastBiddingInfo.get("bidEcpm");
            Object obj3 = mapCastBiddingInfo.get("lossBidEcpm");
            SigmobLog.i(getClass().getSimpleName() + " ---notifyBiddingResult:" + obj2 + ":" + obj3);
            if (obj2 == null || obj3 == null) {
                return;
            }
            this.f86372b.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
        }
    }
}
