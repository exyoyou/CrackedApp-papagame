package com.byazt.vgp;

/* JADX INFO: loaded from: classes9.dex */
public enum c {
    USE_KWS(0),
    USE_ALOG(1),
    USE_PITAYA(2),
    USE_OTHER(3);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f21196a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f21197n;

    c(int i10) {
        if (i10 < 0 || i10 > 63) {
            throw new IllegalArgumentException("bit argument illegal exception,range [0,63]");
        }
        this.f21197n = 1 << i10;
        this.f21196a = i10;
    }

    public long c() {
        return this.f21197n;
    }
}
