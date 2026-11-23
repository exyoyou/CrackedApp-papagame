package com.byazt.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 130, 15})
public class uj extends BaseException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16822c;
    public final long tt;

    public uj(long j10, long j11) {
        super(1006, String.format("space is not enough required space is : %s but available space is :%s", String.valueOf(j11), String.valueOf(j10)));
        this.f16822c = j10;
        this.tt = j11;
    }

    public long c() {
        return this.f16822c;
    }

    public long tt() {
        return this.tt;
    }
}
