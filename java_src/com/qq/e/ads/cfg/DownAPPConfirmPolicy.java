package com.qq.e.ads.cfg;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public enum DownAPPConfirmPolicy {
    Default(0),
    NOConfirm(2);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f78135a;

    DownAPPConfirmPolicy(int i10) {
        this.f78135a = i10;
    }

    public int value() {
        return this.f78135a;
    }
}
