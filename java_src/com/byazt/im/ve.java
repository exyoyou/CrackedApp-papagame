package com.byazt.im;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1352, 54})
public class ve extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f15416a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dj.tt f15417da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15418i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f15419n;
    public boolean sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15420t;
    public x uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15421x = 1;

    public ve(Context context, String str, a aVar, x xVar, com.byazt.dj.tt ttVar, boolean z10) {
        this.f15416a = context;
        this.sp = str;
        this.f15419n = aVar;
        this.sl = aVar.n();
        this.tt = aVar.tt();
        this.uj = xVar;
        this.f15417da = ttVar;
        this.f15420t = z10;
    }

    public String a() {
        return this.sp;
    }

    public boolean da() {
        return this.f15420t;
    }

    public Context getContext() {
        return this.f15416a;
    }

    public boolean i() {
        return this.sl;
    }

    public x n() {
        return this.uj;
    }

    public com.byazt.dj.tt sp() {
        return this.f15417da;
    }

    public a uj() {
        return this.f15419n;
    }

    public int x() {
        return this.f15418i;
    }
}
