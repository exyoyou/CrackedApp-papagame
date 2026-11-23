package com.sigmob.sdk.splash;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class k implements ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81748a = "SplashViewAbilitySessionManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<j> f81749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f81750c;

    public k() {
        HashSet<j> hashSet = new HashSet<>();
        this.f81749b = hashSet;
        hashSet.add(new j());
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a() {
        if (this.f81750c == null || com.sigmob.sdk.base.utils.e.a(this.f81749b)) {
            SigmobLog.e("endDisplaySession() called adUnit is null.");
            return;
        }
        Iterator<j> it2 = this.f81749b.iterator();
        while (it2.hasNext()) {
            it2.next().b(this.f81750c);
        }
        synchronized (this) {
            if (com.sigmob.sdk.base.utils.w.b(this.f81750c)) {
                this.f81750c.setSessionManager(null);
                this.f81750c.destroy();
                this.f81750c = null;
            }
        }
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(BaseAdUnit adUnit) {
        if (adUnit == null || com.sigmob.sdk.base.utils.e.a(this.f81749b)) {
            SigmobLog.e("createDisplaySession() called adUnit is null.");
            return;
        }
        Iterator<j> it2 = this.f81749b.iterator();
        while (it2.hasNext()) {
            it2.next().a(adUnit);
        }
        this.f81750c = adUnit;
        adUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(String event, int currentPosition) {
        SigmobLog.d("SplashViewAbilitySessionManager#recordDisplayEvent: event = " + event + ", currentPosition = " + currentPosition);
        if (this.f81750c == null || com.sigmob.sdk.base.utils.e.a(this.f81749b)) {
            SigmobLog.e("recordDisplayEvent() called adUnit is null.");
            return;
        }
        Iterator<j> it2 = this.f81749b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f81750c, event, currentPosition);
        }
    }
}
