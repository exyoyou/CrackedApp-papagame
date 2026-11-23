package com.sigmob.sdk.videoAd;

import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.rewardVideo.WindRewardInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class e extends com.sigmob.sdk.manager.f implements h {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f81797s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f81798t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f81799u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f81800v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private l f81801w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final boolean f81802x;

    public e(boolean isHalfInterstitial) {
        this.f81802x = isHalfInterstitial;
    }

    private void t(BaseAdUnit baseAdUnit) {
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
            String rvCallBackUrl = baseAdUnit.getRvCallBackUrl();
            if (com.sigmob.sdk.base.utils.t.b(rvCallBackUrl)) {
                AdTracker adTracker = new AdTracker(AdTracker.MessageType.TRACKING_URL, rvCallBackUrl, "reward_server", baseAdUnit.getRequestId());
                adTracker.setRetryNum(Integer.valueOf(baseAdUnit.getTrackingRetryNum()));
                com.sigmob.sdk.base.network.h.a(adTracker, baseAdUnit, false, true, true, new TrackManager.Listener() { // from class: com.sigmob.sdk.videoAd.e.1
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker tracker, VolleyError error) {
                        if (e.this.f81800v == 1) {
                            e.this.a(2, "0", "1");
                        }
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker tracker, NetworkResponse response) {
                        if (e.this.f81800v == 1) {
                            e.this.a(2, "1", "1");
                        }
                    }
                });
                return;
            }
        }
        a(2, "0", "0");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void c(BaseAdUnit adUnit, String message) {
        if (com.sigmob.sdk.manager.b.n(adUnit)) {
            com.sigmob.sdk.base.common.h.g().e(adUnit);
        }
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_PLAY;
        windAdError.setMessage(message);
        a(windAdError, this.f80880r);
        a(adUnit, "play", this.f80875m.getAdType(), this.f80871i, this.f80875m.getLoadId(), windAdError);
        SigmobLog.d("onVideoPlayFail() called");
    }

    @Override // com.sigmob.sdk.manager.b
    protected void g() {
        if (com.sigmob.sdk.base.utils.e.b(this.f80877o)) {
            for (BaseAdUnit baseAdUnit : this.f80877o) {
                if (baseAdUnit != null) {
                    if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                        com.sigmob.sdk.base.common.h.g().e(baseAdUnit);
                    }
                    com.sigmob.sdk.base.common.h.b(baseAdUnit);
                }
            }
        }
        this.f80877o = null;
    }

    @Override // com.sigmob.sdk.manager.f
    public com.sigmob.sdk.mraid.i o() {
        return new g(this, this.f81802x);
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void p(BaseAdUnit adUnit) {
        SigmobLogger.d(this.f80837a, "onVideoComplete", new Object[0]);
        this.f81800v = 1;
        if (com.sigmob.sdk.base.utils.w.b(this.f80880r)) {
            this.f80880r.onVideoAdPlayComplete(this.f80871i);
        }
        t(adUnit);
    }

    @Override // com.sigmob.sdk.manager.f
    protected void q() {
        this.f81800v = 0;
    }

    @Override // com.sigmob.sdk.manager.f
    public void r() {
        if (this.f81800v == 1) {
            a(0, "0", "1");
        }
    }

    @Override // com.sigmob.sdk.manager.f
    public void s() {
        super.s();
        this.f81801w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int status, String serverArrived, String rewardType) {
        this.f81800v = status;
        if (this.f81801w == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(WindAds.TRANS_ID, this.f80872j);
        map.put(WindAds.SERVER_ARRIVED, serverArrived);
        map.put("reward_type", rewardType);
        this.f81801w.onVideoAdRewarded(new WindRewardInfo(true, map), this.f80871i);
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void q(BaseAdUnit adUnit) {
        SigmobLog.d("onVideoPlay() called");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void r(BaseAdUnit adUnit) {
        SigmobLog.d("onVideoSkip() called");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void s(BaseAdUnit adUnit) {
        o(adUnit);
    }

    public void a(l windAdRewardListener) {
        this.f81801w = windAdRewardListener;
    }
}
