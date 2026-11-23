package com.sigmob.sdk.nativead;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class i implements com.sigmob.sdk.base.common.ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81422a = "NativeAdViewAbilitySessionManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<h> f81423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f81424c = null;

    public i() {
        HashSet<h> hashSet = new HashSet<>();
        this.f81423b = hashSet;
        hashSet.add(new h());
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a() {
        if (this.f81424c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<h> it2 = this.f81423b.iterator();
        while (it2.hasNext()) {
            it2.next().b(this.f81424c);
        }
        this.f81424c.setSessionManager(null);
        this.f81424c.destroy();
        this.f81424c = null;
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(BaseAdUnit adUnit) {
        if (adUnit == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<h> it2 = this.f81423b.iterator();
        while (it2.hasNext()) {
            it2.next().a(adUnit);
        }
        this.f81424c = adUnit;
        adUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ag
    public void a(String event, int currentPosition) {
        SigmobLog.d("NativeAdViewAbilitySessionManager#recordDisplayEvent: event = " + event + ", currentPosition = " + currentPosition);
        if (this.f81424c == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<h> it2 = this.f81423b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f81424c, event, currentPosition);
        }
    }
}
