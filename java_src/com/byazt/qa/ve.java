package com.byazt.qa;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 598, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18921a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f18923da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18924i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f18925m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18926n;
    public boolean nu;
    public boolean rh;
    public float sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f18927t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f18928u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18929x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f18930z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18922c = Integer.MAX_VALUE;
    public int tt = Integer.MAX_VALUE;
    public int ve = Integer.MIN_VALUE;
    public int uj = Integer.MIN_VALUE;
    public List<Integer> yp = new ArrayList();

    public int c() {
        return this.sp;
    }

    public int tt() {
        return this.f18929x - this.f18924i;
    }

    public void c(View view, int i10, int i11, int i12, int i13) {
        tt ttVar = (tt) view.getLayoutParams();
        this.f18922c = Math.min(this.f18922c, (view.getLeft() - ttVar.u()) - i10);
        this.tt = Math.min(this.tt, (view.getTop() - ttVar.yp()) - i11);
        this.ve = Math.max(this.ve, view.getRight() + ttVar.z() + i12);
        this.uj = Math.max(this.uj, view.getBottom() + ttVar.m() + i13);
    }
}
