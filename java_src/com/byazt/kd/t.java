package com.byazt.kd;

import android.graphics.PointF;
import com.byazt.dg.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1714, 66})
public class t implements com.byazt.jx.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final tt f16172a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f16173c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final tt f16174i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final uj f16175n;
    public final tt sp;
    public final u<PointF, PointF> tt;
    public final tt uj;
    public final sp ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final tt f16176x;

    public t() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public tt a() {
        return this.f16176x;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return null;
    }

    public m da() {
        return new m(this);
    }

    public tt i() {
        return this.sp;
    }

    public uj n() {
        return this.f16175n;
    }

    public tt sp() {
        return this.f16174i;
    }

    public u<PointF, PointF> tt() {
        return this.tt;
    }

    public tt uj() {
        return this.uj;
    }

    public sp ve() {
        return this.ve;
    }

    public tt x() {
        return this.f16172a;
    }

    public t(n nVar, u<PointF, PointF> uVar, sp spVar, tt ttVar, uj ujVar, tt ttVar2, tt ttVar3, tt ttVar4, tt ttVar5) {
        this.f16173c = nVar;
        this.tt = uVar;
        this.ve = spVar;
        this.uj = ttVar;
        this.f16175n = ujVar;
        this.f16176x = ttVar2;
        this.f16174i = ttVar3;
        this.f16172a = ttVar4;
        this.sp = ttVar5;
    }

    public n c() {
        return this.f16173c;
    }
}
