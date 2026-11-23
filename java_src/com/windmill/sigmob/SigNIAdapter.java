package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
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
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindNativeAdData f87595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f87596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f87597c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WindNativeUnifiedAd f87598d;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        WindNativeUnifiedAd windNativeUnifiedAd = this.f87598d;
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.destroy();
            this.f87598d = null;
        }
        c cVar = this.f87596b;
        if (cVar != null) {
            cVar.destroy();
            this.f87596b = null;
        }
        this.f87597c = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87595a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        c cVar = this.f87596b;
        if (cVar == null || cVar.getMediaExtraOption() == null) {
            return null;
        }
        return this.f87596b.getMediaExtraOption();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f87597c || this.f87595a == null || this.f87596b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87597c = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null."));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i("SigNIAdapter#loadAd: placementId = ".concat(String.valueOf(str)));
            Map<String, Object> mapA = a.a("SigNIAdapter#", this);
            WindNativeAdRequest windNativeAdRequest = new WindNativeAdRequest(str, getUserId(), map);
            windNativeAdRequest.setExtOptions(mapA);
            WindNativeUnifiedAd windNativeUnifiedAd = new WindNativeUnifiedAd(windNativeAdRequest);
            this.f87598d = windNativeUnifiedAd;
            windNativeUnifiedAd.setNativeAdLoadListener(new WindNativeUnifiedAd.WindNativeAdLoadListener() { // from class: com.windmill.sigmob.SigNIAdapter.1
                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdError(WindAdError windAdError, String str2) {
                    SigmobLog.i("SigNIAdapter#onAdError: error = " + windAdError.getErrorCode() + ":" + windAdError.getMessage());
                    SigNIAdapter.this.callLoadFail(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }

                @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                public final void onAdLoad(List<WindNativeAdData> list, String str2) {
                    SigmobLog.i("SigNIAdapter#onAdLoad: placementId = ".concat(String.valueOf(str2)));
                    if (list == null || list.isEmpty()) {
                        SigNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or empty " + str));
                        return;
                    }
                    SigNIAdapter.a(SigNIAdapter.this);
                    SigNIAdapter.this.f87595a = list.get(0);
                    SigNIAdapter sigNIAdapter = SigNIAdapter.this;
                    sigNIAdapter.f87596b = new c(sigNIAdapter.f87595a, SigNIAdapter.this.getChannelId());
                    if (SigNIAdapter.this.getBiddingType() == 1) {
                        SigNIAdapter.this.callLoadBiddingSuccess(new BidPrice((SigNIAdapter.this.f87598d == null || TextUtils.isEmpty(SigNIAdapter.this.f87598d.getEcpm())) ? "0" : SigNIAdapter.this.f87598d.getEcpm()));
                    }
                    SigNIAdapter.this.callLoadSuccess();
                }
            });
            int biddingType = getBiddingType();
            if (biddingType == 0) {
                this.f87598d.loadAd(getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87598d.loadAd(1);
                return;
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f87598d.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f87598d.setCurrency(WindAds.CNY);
            this.f87598d.loadAd(1);
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigNIAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87598d == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigNIAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigNIAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigNIAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87598d.sendWinNotificationWithInfo(mapCastBiddingInfo);
            } else {
                this.f87598d.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigNIAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        WindNativeUnifiedAd windNativeUnifiedAd;
        SigmobLog.i("SigNIAdapter#showAd");
        try {
            if (this.f87595a == null || this.f87596b == null || !this.f87597c) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示"));
            } else {
                if (getBiddingType() != -1) {
                    try {
                        Object obj = map2.get("eCpm");
                        if (obj != null && (windNativeUnifiedAd = this.f87598d) != null) {
                            windNativeUnifiedAd.setBidEcpm(WMBidUtil.parseInt(obj).intValue());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.f87596b, map2, new ViewInteractionListener() { // from class: com.windmill.sigmob.SigNIAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        SigNIAdapter.this.callVideoAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        SigNIAdapter.this.callVideoAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        SigNIAdapter.this.callVideoAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        SigNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                    }
                });
                this.f87596b.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.sigmob.SigNIAdapter.3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private boolean f87603b = false;

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadActive(long j10, long j11, String str, String str2) {
                        if (this.f87603b) {
                            return;
                        }
                        this.f87603b = true;
                        SigNIAdapter.this.callVideoAdClickDownload();
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
            this.f87597c = false;
        } catch (Exception e11) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(SigNIAdapter sigNIAdapter) {
        sigNIAdapter.f87597c = true;
        return true;
    }
}
