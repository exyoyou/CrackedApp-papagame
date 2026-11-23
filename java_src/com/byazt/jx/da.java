package com.byazt.jx;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 72})
public class da implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.kd.tt f15956a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15957c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f15958da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.kd.tt f15959i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kd.tt f15960n;
    public final boolean sl;
    public final com.byazt.kd.tt sp;
    public final c tt;
    public final com.byazt.kd.u<PointF, PointF> uj;
    public final com.byazt.kd.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.kd.tt f15961x;

    public enum c {
        STAR(1),
        POLYGON(2);

        public final int ve;

        c(int i10) {
            this.ve = i10;
        }

        public static c c(int i10) {
            for (c cVar : values()) {
                if (cVar.ve == i10) {
                    return cVar;
                }
            }
            return null;
        }
    }

    public da(String str, c cVar, com.byazt.kd.tt ttVar, com.byazt.kd.u<PointF, PointF> uVar, com.byazt.kd.tt ttVar2, com.byazt.kd.tt ttVar3, com.byazt.kd.tt ttVar4, com.byazt.kd.tt ttVar5, com.byazt.kd.tt ttVar6, boolean z10, boolean z11) {
        this.f15957c = str;
        this.tt = cVar;
        this.ve = ttVar;
        this.uj = uVar;
        this.f15960n = ttVar2;
        this.f15956a = ttVar3;
        this.sp = ttVar4;
        this.f15961x = ttVar5;
        this.f15959i = ttVar6;
        this.f15958da = z10;
        this.sl = z11;
    }

    public com.byazt.kd.tt a() {
        return this.sp;
    }

    public String c() {
        return this.f15957c;
    }

    public boolean da() {
        return this.sl;
    }

    public c getType() {
        return this.tt;
    }

    public boolean i() {
        return this.f15958da;
    }

    public com.byazt.kd.tt n() {
        return this.f15956a;
    }

    public com.byazt.kd.tt sp() {
        return this.f15961x;
    }

    public com.byazt.kd.tt tt() {
        return this.ve;
    }

    public com.byazt.kd.tt uj() {
        return this.f15960n;
    }

    public com.byazt.kd.u<PointF, PointF> ve() {
        return this.uj;
    }

    public com.byazt.kd.tt x() {
        return this.f15959i;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.yp(xVar, veVar, this);
    }
}
