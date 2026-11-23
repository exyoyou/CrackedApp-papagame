package com.windmill.adscope;

import android.app.Activity;
import android.content.Context;
import com.beizi.fusion.InterstitialAd;
import com.beizi.fusion.InterstitialAdListener;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c.a f85835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    InterstitialAd f85836b;

    public b(c.a aVar) {
        this.f85835a = aVar;
    }

    @Override // com.windmill.adscope.c
    public final void a(Activity activity) {
        try {
            InterstitialAd interstitialAd = this.f85836b;
            if (interstitialAd == null || !interstitialAd.isLoaded()) {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "expressInterstitialAd is null when show"));
            } else {
                this.f85836b.showAd(activity);
            }
        } catch (Throwable th) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "adScope catch error when show " + th.getMessage()));
        }
    }

    @Override // com.windmill.adscope.c
    public final void b() {
        InterstitialAd interstitialAd = this.f85836b;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f85836b = null;
        }
    }

    @Override // com.windmill.adscope.c
    public final void a(Context context, String str, Map<String, Object> map) {
        try {
            this.f85836b = new InterstitialAd(context, str, new InterstitialAdListener() { // from class: com.windmill.adscope.b.1
                @Override // com.beizi.fusion.InterstitialAdListener
                public final void onAdClick() {
                    c.a aVar = b.this.f85835a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClick();
                    }
                }

                @Override // com.beizi.fusion.InterstitialAdListener
                public final void onAdClosed() {
                    c.a aVar = b.this.f85835a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClose();
                    }
                }

                @Override // com.beizi.fusion.InterstitialAdListener
                public final void onAdFailed(int i10) {
                    SigmobLog.i(b.this.getClass().getSimpleName() + " onAdFailed:" + i10);
                    c.a aVar = b.this.f85835a;
                    if (aVar != null) {
                        aVar.onInterstitialAdFailToLoad(new WMAdapterError(i10, "onAdFailed"));
                    }
                }

                @Override // com.beizi.fusion.InterstitialAdListener
                public final void onAdLoaded() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b.this.getClass().getSimpleName());
                    sb2.append(" onAdLoaded:");
                    InterstitialAd interstitialAd = b.this.f85836b;
                    sb2.append(interstitialAd != null ? Boolean.valueOf(interstitialAd.isLoaded()) : "null");
                    SigmobLog.i(sb2.toString());
                    InterstitialAd interstitialAd2 = b.this.f85836b;
                    int ecpm = interstitialAd2 != null ? interstitialAd2.getECPM() : 0;
                    c.a aVar = b.this.f85835a;
                    if (aVar != null) {
                        aVar.onInterstitialAdLoadSuccess(ecpm);
                    }
                }

                @Override // com.beizi.fusion.InterstitialAdListener
                public final void onAdShown() {
                    c.a aVar = b.this.f85835a;
                    if (aVar != null) {
                        aVar.onInterstitialAdStartPlaying();
                    }
                }
            }, 5000L);
            int iIntValue = 1;
            try {
                Object obj = map.get(WMConstants.AD_TEMPLATE_TYPE);
                if (obj != null) {
                    iIntValue = WMBidUtil.parseInt(obj).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85836b.setAdVersion(iIntValue);
            this.f85836b.loadAd();
        } catch (Throwable th) {
            c.a aVar = this.f85835a;
            if (aVar != null) {
                aVar.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adScope catch error load " + th.getMessage()));
            }
        }
    }

    private void a(WMAdapterError wMAdapterError) {
        c.a aVar = this.f85835a;
        if (aVar != null) {
            aVar.onInterstitialAdFailToPlaying(wMAdapterError);
        }
    }

    @Override // com.windmill.adscope.c
    public final boolean a() {
        InterstitialAd interstitialAd = this.f85836b;
        return interstitialAd != null && interstitialAd.isLoaded();
    }
}
