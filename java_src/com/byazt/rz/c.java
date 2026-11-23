package com.byazt.rz;

import com.baidu.mobads.sdk.internal.bn;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1947, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19558c;
    public int tt;

    public c(int i10, int i11, long j10) {
        if (i11 < i10) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.f19558c = i10;
        this.tt = i11;
    }

    public static c ve() {
        return new c(1, 100, bn.f7593e);
    }

    public int c() {
        return this.f19558c;
    }

    public int tt() {
        return this.tt;
    }

    public static c c(int i10, int i11) {
        return new c(i10, i11, bn.f7593e);
    }

    public static c c(int i10, int i11, long j10) {
        return new c(i10, i11, j10);
    }
}
