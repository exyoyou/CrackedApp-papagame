package com.byazt.nys;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 15})
public class uj extends Exception {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17723c;

    public uj(int i10, String str) {
        super(str);
        this.f17723c = i10;
    }

    public int c() {
        return this.f17723c;
    }

    public uj(int i10, String str, Throwable th) {
        super(str, th);
        this.f17723c = i10;
    }
}
