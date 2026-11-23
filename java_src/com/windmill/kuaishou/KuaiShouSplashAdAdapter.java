package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.kuaishou.weapon.p0.t;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsSplashScreenAd;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouSplashAdAdapter extends WMCustomSplashAdapter implements KsLoadManager.SplashScreenAdListener, KsSplashScreenAd.SplashScreenAdInteractionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private KsSplashScreenAd f86410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86411b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f86412c = getClass().getSimpleName();

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f86410a != null) {
            this.f86410a = null;
        }
        this.f86411b = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86410a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        KsSplashScreenAd ksSplashScreenAd = this.f86410a;
        if (ksSplashScreenAd != null) {
            return KuaiShouAdapterProxy.getRequestId(ksSplashScreenAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f86411b && this.f86410a != null;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86411b = false;
            String strSubstring = (String) map2.get("placementId");
            if (strSubstring.endsWith("L") || strSubstring.endsWith(t.f74879d)) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            SigmobLog.i(this.f86412c + "---loadAd:" + strSubstring);
            KsScene.Builder builder = new KsScene.Builder(WMBidUtil.parseLong(strSubstring).longValue());
            if (getBiddingType() == 0) {
                builder.setBidResponseV2(getHbResponseStr());
            }
            KsAdSDK.getLoadManager().loadSplashScreenAd(builder.build(), this);
        } catch (Exception e10) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e10.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(this.f86412c + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86410a != null) {
                map.put("isKS", "0");
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(this.f86412c + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f86412c);
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(this.f86412c + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (!z10) {
                    Object obj = mapCastBiddingInfo.get("adExposureFailedReasonCode");
                    int iIntValue = obj != null ? ((Integer) obj).intValue() : 2;
                    AdExposureFailedReason adExposureFailedReason = (AdExposureFailedReason) mapCastBiddingInfo.get("adExposureFailedReason");
                    SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----4: winEcpm " + adExposureFailedReason.winEcpm + " " + adExposureFailedReason.adUserName);
                    this.f86410a.reportAdExposureFailed(iIntValue, adExposureFailedReason);
                    return;
                }
                Object obj2 = mapCastBiddingInfo.get("bidEcpm");
                Object obj3 = mapCastBiddingInfo.get("lossBidEcpm");
                if (obj2 == null || obj3 == null) {
                    return;
                }
                SigmobLog.i(getClass().getSimpleName() + " ---notifyBiddingResult:" + obj2 + ":" + obj3);
                this.f86410a.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdClicked() {
        SigmobLog.i(this.f86412c + "---onAdClicked");
        callSplashAdClick();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowEnd() {
        SigmobLog.i(this.f86412c + "----onAdShowEnd");
        callSplashAdClosed();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowError(int i10, String str) {
        SigmobLog.i(this.f86412c + "----onAdShowError: " + i10 + ":" + str);
        callSplashAdShowError(new WMAdapterError(i10, str));
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowStart() {
        SigmobLog.i(this.f86412c + "----onAdShowStart");
        callSplashAdShow();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogCancel() {
        SigmobLog.i(this.f86412c + " onDownloadTipsDialogCancel");
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogDismiss() {
        SigmobLog.i(this.f86412c + " onDownloadTipsDialogDismiss");
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogShow() {
        SigmobLog.i(this.f86412c + " onDownloadTipsDialogShow");
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onError(int i10, String str) {
        SigmobLog.i(this.f86412c + " onError: " + i10 + ":" + str);
        callLoadFail(new WMAdapterError(i10, str));
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onRequestResult(int i10) {
        SigmobLog.i(this.f86412c + " onRequestResult:" + i10);
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onSkippedAd() {
        SigmobLog.i(this.f86412c + "----onSkippedAd");
        callSplashAdSkipped();
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onSplashScreenAdLoad(KsSplashScreenAd ksSplashScreenAd) {
        SigmobLog.i(this.f86412c + "---onSplashScreenAdLoad");
        this.f86410a = ksSplashScreenAd;
        this.f86411b = true;
        if (ksSplashScreenAd != null && getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(String.valueOf(this.f86410a.getECPM())));
        }
        callLoadSuccess(ksSplashScreenAd);
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f86410a == null || !this.f86411b) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mKsSplashScreenAd is null"));
            } else {
                try {
                    if (getBiddingType() == 0 && (obj = map.get("eCpm")) != null) {
                        this.f86410a.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                View view = this.f86410a.getView(viewGroup.getContext(), this);
                viewGroup.removeAllViews();
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                viewGroup.addView(view);
            }
            this.f86411b = false;
        } catch (Exception e11) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }
}
