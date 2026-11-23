package com.facebook.rebound;

/* JADX INFO: loaded from: classes9.dex */
public class r extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f28872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f28873c;

    @Override // com.facebook.rebound.n
    public void b() {
        this.f28872b = true;
        this.f28873c = 0L;
    }

    @Override // com.facebook.rebound.n
    public void c() {
        this.f28872b = false;
    }

    public boolean d(long j10) {
        c cVar = this.f28871a;
        if (cVar == null || !this.f28872b) {
            return false;
        }
        long j11 = this.f28873c + j10;
        cVar.i(j11);
        this.f28873c = j11;
        return this.f28871a.g();
    }
}
