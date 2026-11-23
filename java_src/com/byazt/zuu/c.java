package com.byazt.zuu;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 466, 20})
public class c implements com.byazt.fn.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f22986c;
    public final float tt;
    public final long ve;

    public c(float f10, float f11, long j10) {
        this.f22986c = f10;
        this.tt = f11;
        this.ve = j10;
    }

    @Override // com.byazt.fn.c
    public long getLastTime() {
        return this.ve;
    }

    @Override // com.byazt.fn.c
    public float getLatitude() {
        return this.f22986c;
    }

    @Override // com.byazt.fn.c
    public float getLongitude() {
        return this.tt;
    }
}
