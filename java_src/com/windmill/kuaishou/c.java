package com.windmill.kuaishou;

import android.app.Activity;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsFullScreenVideoAd;
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
public final class c extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    KsFullScreenVideoAd f86429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e.a f86430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMCustomInterstitialAdapter f86431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f86432d = c.class.getSimpleName();

    public c(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, e.a aVar) {
        this.f86431c = wMCustomInterstitialAdapter;
        this.f86430b = aVar;
    }

    @Override // com.windmill.kuaishou.e
    public final Object a() {
        return this.f86429a;
    }

    @Override // com.windmill.kuaishou.e
    public final boolean b() {
        try {
            KsFullScreenVideoAd ksFullScreenVideoAd = this.f86429a;
            if (ksFullScreenVideoAd != null) {
                return ksFullScreenVideoAd.isAdEnable();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("ks isReady fail:", th);
            return false;
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void c() {
        if (this.f86429a != null) {
            this.f86429a = null;
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(Activity activity, Map<String, Object> map) {
        Object obj;
        try {
            KsFullScreenVideoAd ksFullScreenVideoAd = this.f86429a;
            if (ksFullScreenVideoAd == null || !ksFullScreenVideoAd.isAdEnable()) {
                if (this.f86430b != null) {
                    this.f86430b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
                    return;
                }
                return;
            }
            this.f86429a.setFullScreenVideoAdInteractionListener(new KsFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.windmill.kuaishou.c.2
                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onAdClicked() {
                    SigmobLog.i(c.this.f86432d + " onAdClicked");
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdClick();
                    }
                }

                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onPageDismiss() {
                    SigmobLog.i(c.this.f86432d + " onPageDismiss");
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdClose();
                    }
                }

                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onSkippedVideo() {
                    SigmobLog.i(c.this.f86432d + " onSkippedVideo");
                }

                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onVideoPlayEnd() {
                    SigmobLog.i(c.this.f86432d + " onVideoPlayEnd");
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdPlayEnd();
                    }
                }

                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onVideoPlayError(int i10, int i11) {
                    SigmobLog.i(c.this.f86432d + " onVideoPlayError:" + i10 + ":" + i11);
                    if (c.this.f86430b != null) {
                        c.this.f86430b.onInterstitialAdFailToPlaying(new WMAdapterError(i10, String.valueOf(i11)));
                    }
                }

                @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
                public final void onVideoPlayStart() {
                    SigmobLog.i(c.this.f86432d + " onVideoPlayStart");
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdStartPlaying();
                    }
                }
            });
            KsFullScreenVideoAd ksFullScreenVideoAd2 = this.f86429a;
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
                    if (this.f86431c.getBiddingType() == 0 && (obj = map.get("eCpm")) != null) {
                        ksFullScreenVideoAd2.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                ksFullScreenVideoAd2.showFullScreenVideoAd(activity, builder.build());
            } catch (Throwable th) {
                SigmobLog.e("ks showAd fail:", th);
                if (this.f86430b != null) {
                    this.f86430b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
                }
            }
        } catch (Throwable th2) {
            if (this.f86430b != null) {
                this.f86430b.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th2.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(String str) {
        try {
            KsScene.Builder builder = new KsScene.Builder(WMBidUtil.parseLong(str).longValue());
            if (this.f86431c.getBiddingType() == 0) {
                builder.setBidResponseV2(this.f86431c.getHbResponseStr());
            }
            KsAdSDK.getLoadManager().loadFullScreenVideoAd(builder.build(), new KsLoadManager.FullScreenVideoAdListener() { // from class: com.windmill.kuaishou.c.1
                @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(c.this.f86432d + " onError:" + i10 + ":" + str2);
                    if (c.this.f86430b != null) {
                        c.this.f86430b.onInterstitialAdFailToLoad(new WMAdapterError(i10, str2));
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
                public final void onFullScreenVideoAdLoad(List<KsFullScreenVideoAd> list) {
                    SigmobLog.i(c.this.f86432d + " onFullScreenVideoAdLoad");
                    if (list == null || list.size() <= 0) {
                        if (c.this.f86430b != null) {
                            c.this.f86430b.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adList is null"));
                            return;
                        }
                        return;
                    }
                    c.this.f86429a = list.get(0);
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdLoadSuccess(list);
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
                public final void onFullScreenVideoResult(List<KsFullScreenVideoAd> list) {
                    SigmobLog.i(c.this.f86432d + " onFullScreenVideoResult()");
                    e.a aVar = c.this.f86430b;
                    if (aVar != null) {
                        aVar.onInterstitialAdPreLoadSuccess();
                    }
                    if (list != null && list.size() > 0) {
                        c.this.f86429a = list.get(0);
                    }
                    c cVar = c.this;
                    if (cVar.f86429a == null || cVar.f86431c.getBiddingType() != 1) {
                        return;
                    }
                    int ecpm = c.this.f86429a.getECPM();
                    e.a aVar2 = c.this.f86430b;
                    if (aVar2 != null) {
                        aVar2.adapterDidLoadBiddingPriceSuccess(String.valueOf(ecpm));
                    }
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("ks loadAd fail:", th);
            if (this.f86430b != null) {
                this.f86430b.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.e
    public final void a(boolean z10, Map<String, Object> map) {
        if (this.f86429a != null) {
            if (!z10) {
                Object obj = map.get("adExposureFailedReasonCode");
                int iIntValue = obj != null ? ((Integer) obj).intValue() : 2;
                AdExposureFailedReason adExposureFailedReason = (AdExposureFailedReason) map.get("adExposureFailedReason");
                if (adExposureFailedReason != null) {
                    WMLogUtil.i("-------KsFull--AdExposureFailedReason: " + adExposureFailedReason.adUserName + " " + adExposureFailedReason.adTitle);
                }
                this.f86429a.reportAdExposureFailed(iIntValue, adExposureFailedReason);
                return;
            }
            Object obj2 = map.get("bidEcpm");
            Object obj3 = map.get("lossBidEcpm");
            SigmobLog.i(c.class.getSimpleName() + "---notifyBiddingResult:" + obj2 + ":" + obj3);
            if (obj2 == null || obj3 == null) {
                return;
            }
            this.f86429a.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
        }
    }
}
