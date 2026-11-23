package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class ch implements an.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ double f7713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cb f7714b;

    ch(cb cbVar, double d10) {
        this.f7714b = cbVar;
        this.f7713a = d10;
    }

    @Override // com.baidu.mobads.sdk.internal.an.b
    public void a(String str, String str2) {
        this.f7714b.f7702w = new bz(str);
        double dB = co.b();
        float f10 = this.f7714b.m().getFloat(cb.f7681c, 0.0f);
        Boolean boolValueOf = Boolean.valueOf(((float) this.f7714b.f7702w.b()) == f10);
        Boolean boolValueOf2 = Boolean.valueOf(dB <= this.f7714b.f7702w.b() && Math.floor(dB) == Math.floor(this.f7714b.f7702w.b()));
        this.f7714b.f7704z.a(cb.f7679a, "try to download apk badVer=" + f10 + ", isBad=" + boolValueOf + ", compatible=" + boolValueOf2);
        if (this.f7713a < this.f7714b.f7702w.b() && this.f7714b.f7702w != null && this.f7714b.f7702w.a().booleanValue() && boolValueOf2.booleanValue() && !boolValueOf.booleanValue()) {
            cb cbVar = this.f7714b;
            cbVar.a(cbVar.f7702w);
        } else if (this.f7714b.A) {
            this.f7714b.A = false;
            this.f7714b.a(false, "Refused to download remote for version...");
        }
    }

    @Override // com.baidu.mobads.sdk.internal.an.b
    public void a(String str, int i10) {
        if (this.f7714b.A) {
            this.f7714b.A = false;
            this.f7714b.a(false, "remote update Network access failed");
        }
    }
}
