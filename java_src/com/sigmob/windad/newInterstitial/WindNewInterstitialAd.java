package com.sigmob.windad.newInterstitial;

import com.sigmob.sdk.c;
import com.sigmob.sdk.newInterstitial.a;
import com.sigmob.sdk.videoAd.k;
import com.sigmob.sdk.videoAd.m;
import com.sigmob.windad.WindAdError;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class WindNewInterstitialAd extends c<a> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected WindNewInterstitialAdListener f82200m;

    public WindNewInterstitialAd(WindNewInterstitialAdRequest request) {
        super(request, false, 6);
        a(new k() { // from class: com.sigmob.windad.newInterstitial.WindNewInterstitialAd.1
            @Override // com.sigmob.sdk.videoAd.k
            public void onAdLoadError(WindAdError error, String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdLoadError(error, placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdLoadSuccess(String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdLoadSuccess(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdPreLoadFail(WindAdError error, String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdPreLoadFail(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdPreLoadSuccess(String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdPreLoadSuccess(placementId);
            }
        });
    }

    @Override // com.sigmob.sdk.c
    public void destroy() {
        this.f82200m = null;
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sigmob.sdk.c
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a d() {
        return new a();
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd() {
        return super.loadAd();
    }

    public void setWindNewInterstitialAdListener(WindNewInterstitialAdListener windNewInterstitialAdListener) {
        this.f82200m = windNewInterstitialAdListener;
    }

    public boolean show(HashMap<String, String> options) {
        return super.a(options, new m() { // from class: com.sigmob.windad.newInterstitial.WindNewInterstitialAd.2
            @Override // com.sigmob.sdk.videoAd.m
            public void onAdClicked(String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdClicked(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdClosed(String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdClosed(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdShow(String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdShow(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdShowError(WindAdError error, String placementId) {
                WindNewInterstitialAdListener windNewInterstitialAdListener = WindNewInterstitialAd.this.f82200m;
                if (windNewInterstitialAdListener == null) {
                    return;
                }
                windNewInterstitialAdListener.onInterstitialAdShowError(error, placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onVideoAdPlayComplete(String placementId) {
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onVideoAdPlayEnd(String placementId) {
            }
        });
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd(String bidToken) {
        return super.loadAd(bidToken);
    }
}
