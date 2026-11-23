package com.sigmob.sdk.newInterstitial;

import com.czhj.sdk.common.models.AdStatus;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.WindAdError;

/* JADX INFO: loaded from: classes3.dex */
public class a extends com.sigmob.sdk.manager.f implements e {
    @Override // com.sigmob.sdk.newInterstitial.e
    public void c(BaseAdUnit adUnit, String message) {
        com.sigmob.sdk.base.utils.k.f(this.f80837a, "onAdShowFail: msg = " + message, new Object[0]);
        if (com.sigmob.sdk.manager.b.n(adUnit)) {
            com.sigmob.sdk.base.common.h.g().e(adUnit);
        }
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_PLAY;
        windAdError.setMessage(message);
        a(windAdError, this.f80880r);
        a(adUnit, "play", this.f80875m.getAdType(), this.f80871i, this.f80875m.getLoadId(), windAdError);
    }

    @Override // com.sigmob.sdk.manager.b
    protected void g() {
        if (com.sigmob.sdk.base.utils.e.a(this.f80877o)) {
            this.f80877o = null;
            return;
        }
        BaseAdUnit baseAdUnitE = e();
        if (com.sigmob.sdk.manager.b.n(baseAdUnitE)) {
            com.sigmob.sdk.base.common.h.g().e(baseAdUnitE);
        }
        this.f80877o = null;
    }

    @Override // com.sigmob.sdk.manager.f
    public com.sigmob.sdk.mraid.i o() {
        return new f(this);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void p(BaseAdUnit adUnit) {
        if (this.f80838b == AdStatus.AdStatusClose) {
            return;
        }
        o(adUnit);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void q(BaseAdUnit adUnit) {
        com.sigmob.sdk.base.utils.k.c(this.f80837a, "onAdSkip", new Object[0]);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void r(BaseAdUnit adUnit) {
        com.sigmob.sdk.base.utils.k.c(this.f80837a, "onAdShow", new Object[0]);
    }
}
