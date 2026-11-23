package com.sigmob.windad.rewardVideo;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.h;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.videoAd.e;
import com.sigmob.sdk.videoAd.k;
import com.sigmob.sdk.videoAd.l;
import com.sigmob.sdk.videoAd.m;
import com.sigmob.windad.WindAdError;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class WindRewardVideoAd extends com.sigmob.sdk.c<e> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected WindRewardVideoAdListener f82209m;

    public WindRewardVideoAd(WindRewardAdRequest request) {
        super(request, false, 1);
        a(new k() { // from class: com.sigmob.windad.rewardVideo.WindRewardVideoAd.1
            @Override // com.sigmob.sdk.videoAd.k
            public void onAdLoadError(WindAdError error, String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdLoadError(error, placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdLoadSuccess(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdLoadSuccess(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdPreLoadFail(WindAdError error, String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdPreLoadFail(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.k
            public void onAdPreLoadSuccess(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdPreLoadSuccess(placementId);
            }
        });
    }

    @Override // com.sigmob.sdk.c
    protected void a(final l windAdRewardListener) {
        if (((com.sigmob.sdk.c) this).f80310c == 0) {
            return;
        }
        h.f(((com.sigmob.sdk.c) this).f80312e.getPlacementId());
        ((e) ((com.sigmob.sdk.c) this).f80310c).a(new l() { // from class: com.sigmob.windad.rewardVideo.a
            @Override // com.sigmob.sdk.videoAd.l
            public final void onVideoAdRewarded(WindRewardInfo windRewardInfo, String str) {
                this.f82212a.a(windAdRewardListener, windRewardInfo, str);
            }
        });
    }

    @Override // com.sigmob.sdk.c
    public void destroy() {
        this.f82209m = null;
        super.destroy();
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd() {
        return super.loadAd();
    }

    public void setWindRewardVideoAdListener(WindRewardVideoAdListener windRewardedVideoAdListener) {
        this.f82209m = windRewardedVideoAdListener;
    }

    public boolean show(HashMap<String, String> options) {
        return super.a(options, new m() { // from class: com.sigmob.windad.rewardVideo.WindRewardVideoAd.2
            @Override // com.sigmob.sdk.videoAd.m
            public void onAdClicked(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdClicked(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdClosed(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdClosed(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdShow(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdPlayStart(placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onAdShowError(WindAdError error, String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdPlayError(error, placementId);
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onVideoAdPlayComplete(String placementId) {
            }

            @Override // com.sigmob.sdk.videoAd.m
            public void onVideoAdPlayEnd(String placementId) {
                WindRewardVideoAdListener windRewardVideoAdListener = WindRewardVideoAd.this.f82209m;
                if (windRewardVideoAdListener == null) {
                    return;
                }
                windRewardVideoAdListener.onRewardAdPlayEnd(placementId);
            }
        }, new l() { // from class: com.sigmob.windad.rewardVideo.c
            @Override // com.sigmob.sdk.videoAd.l
            public final void onVideoAdRewarded(WindRewardInfo windRewardInfo, String str) {
                this.f82218a.a(windRewardInfo, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final l lVar, final WindRewardInfo windRewardInfo, final String str) {
        ((com.sigmob.sdk.c) this).f80308a.post(new Runnable() { // from class: com.sigmob.windad.rewardVideo.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f82214b.a(windRewardInfo, lVar, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sigmob.sdk.c
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public e d() {
        return new e(false);
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd(String bidToken) {
        return super.loadAd(bidToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WindRewardInfo windRewardInfo, l lVar, String str) {
        if (w.b(((com.sigmob.sdk.c) this).f80310c)) {
            ((e) ((com.sigmob.sdk.c) this).f80310c).a("reward_callback", windRewardInfo.getOptions());
        }
        if (w.b(lVar)) {
            SigmobLog.i("onVideoAdRewarded " + str);
            lVar.onVideoAdRewarded(windRewardInfo, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WindRewardInfo windRewardInfo, String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f82209m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdRewarded(windRewardInfo, str);
    }
}
