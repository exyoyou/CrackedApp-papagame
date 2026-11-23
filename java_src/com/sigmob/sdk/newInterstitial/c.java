package com.sigmob.sdk.newInterstitial;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class c implements ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81604a = "InterstitialAdViewAbilitySessionManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<b> f81605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f81606c = null;

    public c() {
        HashSet<b> hashSet = new HashSet<>();
        this.f81605b = hashSet;
        hashSet.add(new b());
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a() {
        if (this.f81606c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it2 = this.f81605b.iterator();
        while (it2.hasNext()) {
            it2.next().b(this.f81606c);
        }
        this.f81606c.setSessionManager(null);
        this.f81606c.destroy();
        com.sigmob.sdk.base.common.h.b(this.f81606c);
        this.f81606c = null;
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(BaseAdUnit adUnit) {
        if (adUnit == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it2 = this.f81605b.iterator();
        while (it2.hasNext()) {
            it2.next().a(adUnit);
        }
        this.f81606c = adUnit;
        adUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(String event, int currentPosition) {
        SigmobLog.d("InterstitialAdViewAbilitySessionManager#recordDisplayEvent: event = " + event + ", currentPosition = " + currentPosition);
        if (this.f81606c == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it2 = this.f81605b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f81606c, event, currentPosition);
        }
    }
}
