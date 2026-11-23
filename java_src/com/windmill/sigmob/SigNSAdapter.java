package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
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
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindNativeAdData f87606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f87607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f87608e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WindNativeUnifiedAd f87609f;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        WindNativeUnifiedAd windNativeUnifiedAd = this.f87609f;
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.destroy();
            this.f87609f = null;
        }
        c cVar = this.f87607d;
        if (cVar != null) {
            cVar.destroy();
            this.f87607d = null;
        }
        this.f87608e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87606c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        c cVar = this.f87607d;
        if (cVar != null) {
            return cVar.getMediaExtraOption();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f87608e || this.f87606c == null || this.f87607d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87608e = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null."));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i("SigNSAdapter# loadAd: codeId = ".concat(String.valueOf(str)));
            this.f87604a = context.getResources().getDisplayMetrics().widthPixels;
            this.f87605b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f87604a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f87605b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Map<String, Object> mapA = a.a("SigNSAdapter#", this);
            WindNativeAdRequest windNativeAdRequest = new WindNativeAdRequest(str, getUserId(), map);
            windNativeAdRequest.setExtOptions(mapA);
            WindNativeUnifiedAd windNativeUnifiedAd = new WindNativeUnifiedAd(windNativeAdRequest);
            this.f87609f = windNativeUnifiedAd;
            windNativeUnifiedAd.setNativeAdLoadListener(new WindNativeUnifiedAd.WindNativeAdLoadListener() { // from class: com.windmill.sigmob.SigNSAdapter.1
                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdError(WindAdError windAdError, String str2) {
                    SigmobLog.i("SigNSAdapter#onAdError: placementId " + str2 + ", error: " + windAdError.toString());
                    SigNSAdapter.this.callLoadFail(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }

                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdLoad(List<WindNativeAdData> list, String str2) {
                    SigmobLog.i("SigNSAdapter#onAdLoad: placementId ".concat(String.valueOf(str2)));
                    if (list == null || list.isEmpty()) {
                        SigNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or empty " + str));
                        return;
                    }
                    SigNSAdapter.a(SigNSAdapter.this);
                    SigNSAdapter.this.f87606c = list.get(0);
                    SigNSAdapter sigNSAdapter = SigNSAdapter.this;
                    sigNSAdapter.f87607d = new c(sigNSAdapter.f87606c, SigNSAdapter.this.getChannelId());
                    if (SigNSAdapter.this.getBiddingType() == 1) {
                        SigNSAdapter.this.callLoadBiddingSuccess(new BidPrice((SigNSAdapter.this.f87609f == null || TextUtils.isEmpty(SigNSAdapter.this.f87609f.getEcpm())) ? "0" : SigNSAdapter.this.f87609f.getEcpm()));
                    }
                    SigNSAdapter.this.callLoadSuccess();
                }
            });
            int biddingType = getBiddingType();
            if (biddingType == 0) {
                this.f87609f.loadAd(getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87609f.loadAd(1);
                return;
            }
            try {
                Object obj3 = map2.get(WMConstants.BID_FLOOR);
                if (obj3 != null) {
                    this.f87609f.setBidFloor(((Integer) obj3).intValue());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f87609f.setCurrency(WindAds.CNY);
            this.f87609f.loadAd(1);
        } catch (Exception e12) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e12.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigNSAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87609f == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigNSAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigNSAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigNSAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87609f.sendWinNotificationWithInfo(mapCastBiddingInfo);
            } else {
                this.f87609f.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigNSAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        WindNativeUnifiedAd windNativeUnifiedAd;
        SigmobLog.i("SigNSAdapter#showAd");
        try {
            if (this.f87606c == null || this.f87607d == null || !this.f87608e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示"));
            } else {
                if (getBiddingType() != -1) {
                    try {
                        Object obj = map.get("eCpm");
                        if (obj != null && (windNativeUnifiedAd = this.f87609f) != null) {
                            windNativeUnifiedAd.setBidEcpm(WMBidUtil.parseInt(obj).intValue());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                new SplashViewManager(this.f87604a, this.f87605b, this.f87607d, map, new ViewInteractionListener() { // from class: com.windmill.sigmob.SigNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        SigNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        SigNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        SigNSAdapter.this.callSplashAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        SigNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f87608e = false;
        } catch (Exception e11) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(SigNSAdapter sigNSAdapter) {
        sigNSAdapter.f87608e = true;
        return true;
    }
}
