package com.windmill.kuaishou;

import android.app.Activity;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KsInterstitialAd f86435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e.a f86436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMCustomInterstitialAdapter f86437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f86438d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f86439e = "KuaiShouInteractionExpressAd";

    public d(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, e.a aVar) {
        this.f86437c = wMCustomInterstitialAdapter;
        this.f86436b = aVar;
    }

    @Override // com.windmill.kuaishou.e
    public final Object a() {
        return this.f86435a;
    }

    @Override // com.windmill.kuaishou.e
    public final boolean b() {
        return this.f86438d && this.f86435a != null;
    }

    @Override // com.windmill.kuaishou.e
    public final void c() {
        if (this.f86435a != null) {
            this.f86435a = null;
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(Activity activity, Map<String, Object> map) {
        Object obj;
        try {
            KsInterstitialAd ksInterstitialAd = this.f86435a;
            if (ksInterstitialAd == null || !this.f86438d) {
                if (this.f86436b != null) {
                    this.f86436b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
                    return;
                }
                return;
            }
            ksInterstitialAd.setAdInteractionListener(new KsInterstitialAd.AdInteractionListener() { // from class: com.windmill.kuaishou.d.2
                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onAdClicked() {
                    SigmobLog.i(d.this.f86439e + " onAdClicked");
                    e.a aVar = d.this.f86436b;
                    if (aVar != null) {
                        aVar.onInterstitialAdClick();
                    }
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onAdClosed() {
                    SigmobLog.i(d.this.f86439e + " onAdClosed");
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onAdShow() {
                    SigmobLog.i(d.this.f86439e + " onAdShow");
                    e.a aVar = d.this.f86436b;
                    if (aVar != null) {
                        aVar.onInterstitialAdStartPlaying();
                    }
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onPageDismiss() {
                    SigmobLog.i(d.this.f86439e + " onPageDismiss");
                    e.a aVar = d.this.f86436b;
                    if (aVar != null) {
                        aVar.onInterstitialAdClose();
                    }
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onSkippedAd() {
                    SigmobLog.i(d.this.f86439e + " onSkippedAd");
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onVideoPlayEnd() {
                    SigmobLog.i(d.this.f86439e + " onVideoPlayEnd");
                    e.a aVar = d.this.f86436b;
                    if (aVar != null) {
                        aVar.onInterstitialAdPlayEnd();
                    }
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onVideoPlayError(int i10, int i11) {
                    SigmobLog.i(d.this.f86439e + " onVideoPlayError:" + i10 + ":" + i11);
                    if (d.this.f86436b != null) {
                        d.this.f86436b.onInterstitialAdFailToPlaying(new WMAdapterError(i10, String.valueOf(i11)));
                    }
                }

                @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
                public final void onVideoPlayStart() {
                    SigmobLog.i(d.this.f86439e + " onVideoPlayStart");
                }
            });
            KsInterstitialAd ksInterstitialAd2 = this.f86435a;
            try {
                Object obj2 = map.get(WMConstants.PLAY_DIRECTION);
                Object obj3 = map.get(WMConstants.AUTO_PLAY_MUTED);
                KsVideoPlayConfig.Builder builder = new KsVideoPlayConfig.Builder();
                if (obj2 == null || obj2.equals("") || obj2.equals("0")) {
                    builder.showLandscape(false);
                } else {
                    builder.showLandscape(true);
                }
                if (!TextUtils.isEmpty((CharSequence) obj3)) {
                    if (obj3.equals("1")) {
                        builder.videoSoundEnable(false);
                    } else if (obj3.equals("0")) {
                        builder.videoSoundEnable(true);
                    }
                }
                try {
                    if (this.f86437c.getBiddingType() == 0 && (obj = map.get("eCpm")) != null) {
                        ksInterstitialAd2.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                ksInterstitialAd2.showInterstitialAd(activity, builder.build());
                this.f86438d = false;
            } catch (Throwable th) {
                SigmobLog.e("ks showAd fail:", th);
                if (this.f86436b != null) {
                    this.f86436b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
                }
            }
        } catch (Throwable th2) {
            if (this.f86436b != null) {
                this.f86436b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th2.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(String str) {
        try {
            this.f86438d = false;
            KsScene.Builder builder = new KsScene.Builder(WMBidUtil.parseLong(str).longValue());
            if (this.f86437c.getBiddingType() == 0) {
                builder.setBidResponseV2(this.f86437c.getHbResponseStr());
            }
            KsAdSDK.getLoadManager().loadInterstitialAd(builder.build(), new KsLoadManager.InterstitialAdListener() { // from class: com.windmill.kuaishou.d.1
                @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(d.this.f86439e + " onError:" + i10 + ":" + str2);
                    if (d.this.f86436b != null) {
                        d.this.f86436b.onInterstitialAdFailToLoad(new WMAdapterError(i10, str2));
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
                public final void onInterstitialAdLoad(List<KsInterstitialAd> list) {
                    SigmobLog.i(d.this.f86439e + " onInterstitialAdLoad");
                    if (list == null || list.size() <= 0) {
                        if (d.this.f86436b != null) {
                            d.this.f86436b.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adList is null"));
                            return;
                        }
                        return;
                    }
                    d dVar = d.this;
                    dVar.f86438d = true;
                    dVar.f86435a = list.get(0);
                    d dVar2 = d.this;
                    if (dVar2.f86435a != null && dVar2.f86437c.getBiddingType() == 1) {
                        int ecpm = d.this.f86435a.getECPM();
                        e.a aVar = d.this.f86436b;
                        if (aVar != null) {
                            aVar.adapterDidLoadBiddingPriceSuccess(String.valueOf(ecpm));
                        }
                    }
                    e.a aVar2 = d.this.f86436b;
                    if (aVar2 != null) {
                        aVar2.onInterstitialAdLoadSuccess(list);
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
                public final void onRequestResult(int i10) {
                    SigmobLog.i(d.this.f86439e + " onRequestResult:" + i10);
                    e.a aVar = d.this.f86436b;
                    if (aVar != null) {
                        aVar.onInterstitialAdPreLoadSuccess();
                    }
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("ks loadAd fail:", th);
            if (this.f86436b != null) {
                this.f86436b.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(boolean z10, Map<String, Object> map) {
        WMLogUtil.i("-------KsInteraction---notifyBiddingResult: ".concat(String.valueOf(z10)));
        if (this.f86435a != null) {
            if (z10) {
                Object obj = map.get("bidEcpm");
                Object obj2 = map.get("lossBidEcpm");
                SigmobLog.i(d.class.getSimpleName() + " ---notifyBiddingResult:" + obj + ":" + obj2);
                if (obj == null || obj2 == null) {
                    return;
                }
                this.f86435a.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), WMBidUtil.parseLong(obj2).longValue());
                return;
            }
            Object obj3 = map.get("adExposureFailedReasonCode");
            int iIntValue = obj3 != null ? ((Integer) obj3).intValue() : 2;
            AdExposureFailedReason adExposureFailedReason = (AdExposureFailedReason) map.get("adExposureFailedReason");
            if (adExposureFailedReason != null) {
                WMLogUtil.i("----KsInteraction---Reason: " + adExposureFailedReason.adUserName + " " + adExposureFailedReason.adTitle + " " + adExposureFailedReason.isShow + " click: " + adExposureFailedReason.isClick);
            }
            this.f86435a.reportAdExposureFailed(iIntValue, adExposureFailedReason);
        }
    }
}
