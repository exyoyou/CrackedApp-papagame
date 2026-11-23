package com.sigmob.sdk.base.common;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class v implements ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79274a = "ExternalViewAbilitySessionManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<u> f79275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f79276c;

    public v() {
        HashSet hashSet = new HashSet();
        this.f79275b = hashSet;
        hashSet.add(new ae());
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a() {
        SigmobLog.d("endDisplaySession() called");
        if (this.f79276c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<u> it2 = this.f79275b.iterator();
        while (it2.hasNext()) {
            it2.next().b(this.f79276c);
        }
        this.f79276c.setSessionManager(null);
        this.f79276c.destroy();
        this.f79276c = null;
    }

    public void a(int duration, int endTime) {
        if (this.f79276c == null) {
            SigmobLog.e("onVideoPrepared() called mAdUnit is null");
            return;
        }
        Iterator<u> it2 = this.f79275b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f79276c, duration, endTime);
        }
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(BaseAdUnit adUnit) {
        if (adUnit == null) {
            SigmobLog.e("createDisplaySession() called adUnit is null");
            return;
        }
        this.f79276c = adUnit;
        adUnit.setSessionManager(this);
        Iterator<u> it2 = this.f79275b.iterator();
        while (it2.hasNext()) {
            it2.next().a(adUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(String event, int currentPosition) {
        SigmobLog.d("ExternalViewAbilitySessionManager#recordDisplayEvent: event = " + event + ", currentPosition = " + currentPosition);
        if (this.f79276c == null) {
            SigmobLog.e("recordDisplayEvent() called mAdUnit is null");
            return;
        }
        Iterator<u> it2 = this.f79275b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f79276c, event, currentPosition);
        }
    }

    public void a(boolean isForceShow, int currentPosition) {
        if (this.f79276c == null) {
            SigmobLog.e("onVideoShowSkip() called mAdUnit is null");
            return;
        }
        Iterator<u> it2 = this.f79275b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f79276c, isForceShow, currentPosition);
        }
    }
}
