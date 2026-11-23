package com.windmill.sigmob;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
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
public class SigNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f87585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindNativeAdData f87586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindNativeUnifiedAd f87587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87589e;

    static /* synthetic */ void e(SigNBAdapter sigNBAdapter) {
        ViewParent parent;
        View view = sigNBAdapter.f87585a;
        if (view == null || (parent = view.getParent()) == null) {
            return;
        }
        try {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(sigNBAdapter.f87585a);
            }
        } catch (Exception e10) {
            SigmobLog.i("SigNBAdapter#removeBannerSelf: error = " + e10.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        WindNativeAdData windNativeAdData = this.f87586b;
        if (windNativeAdData != null) {
            windNativeAdData.destroy();
            this.f87586b = null;
        }
        if (this.f87585a != null) {
            this.f87585a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f87585a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87586b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        WindNativeAdData windNativeAdData = this.f87586b;
        if (windNativeAdData != null) {
            return windNativeAdData.getSaasOptions();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f87586b == null || this.f87585a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            SigmobLog.i("SigNBAdapter#loadAd: codeId = ".concat(String.valueOf(str)));
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with activity is null."));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f87588d = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f87589e = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            Map<String, Object> mapA = a.a("SigNBAdapter#", this);
            WindNativeAdRequest windNativeAdRequest = new WindNativeAdRequest(str, getUserId(), map);
            windNativeAdRequest.setExtOptions(mapA);
            WindNativeUnifiedAd windNativeUnifiedAd = new WindNativeUnifiedAd(windNativeAdRequest);
            this.f87587c = windNativeUnifiedAd;
            windNativeUnifiedAd.setNativeAdLoadListener(new WindNativeUnifiedAd.WindNativeAdLoadListener() { // from class: com.windmill.sigmob.SigNBAdapter.1
                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdError(WindAdError windAdError, String str2) {
                    SigmobLog.i("SigNBAdapter#onAdError: error = " + windAdError.toString());
                    SigNBAdapter.this.callLoadFail(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }

                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdLoad(List<WindNativeAdData> list, String str2) {
                    SigmobLog.i("SigNBAdapter#onAdLoad: placementId = ".concat(String.valueOf(str2)));
                    if (list != null && !list.isEmpty()) {
                        SigNBAdapter.this.f87586b = list.get(0);
                        new BannerViewManager(context, SigNBAdapter.this.f87588d, SigNBAdapter.this.f87589e, new c(SigNBAdapter.this.f87586b, SigNBAdapter.this.getChannelId()), map2, new BannerViewInteractionListener() { // from class: com.windmill.sigmob.SigNBAdapter.1.1
                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClick() {
                                SigNBAdapter.this.callBannerAdClick();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClose() {
                                SigNBAdapter.e(SigNBAdapter.this);
                                SigNBAdapter.this.callBannerAdClosed();
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderError(WMAdapterError wMAdapterError) {
                                SigNBAdapter.this.callLoadFail(wMAdapterError);
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderSuccess(View view) {
                                if (view != null) {
                                    SigNBAdapter.this.f87585a = view;
                                    if (SigNBAdapter.this.getBiddingType() == 1) {
                                        SigNBAdapter.this.callLoadBiddingSuccess(new BidPrice((SigNBAdapter.this.f87587c == null || TextUtils.isEmpty(SigNBAdapter.this.f87587c.getEcpm())) ? "0" : SigNBAdapter.this.f87587c.getEcpm()));
                                    }
                                    SigNBAdapter.this.callLoadSuccess();
                                    return;
                                }
                                SigNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null. " + str));
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShow() {
                                SigNBAdapter.this.callBannerAdShow();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShowError(WMAdapterError wMAdapterError) {
                                SigNBAdapter.this.callBannerAdShowError(wMAdapterError);
                            }
                        }).render();
                        return;
                    }
                    SigNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is unavailable. " + str));
                }
            });
            int biddingType = getBiddingType();
            if (biddingType == 0) {
                this.f87587c.loadAd(getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87587c.loadAd(1);
                return;
            }
            try {
                Object obj3 = map2.get(WMConstants.BID_FLOOR);
                if (obj3 != null) {
                    this.f87587c.setBidFloor(((Integer) obj3).intValue());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f87587c.setCurrency(WindAds.CNY);
            this.f87587c.loadAd(1);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch sig loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigNBAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87587c == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigNBAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigNBAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigNBAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87587c.sendWinNotificationWithInfo(mapCastBiddingInfo);
            } else {
                this.f87587c.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigNBAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }
}
