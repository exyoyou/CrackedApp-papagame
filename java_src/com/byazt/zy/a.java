package com.byazt.zy;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 34})
public class a implements sl, u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.jx.tt f22993a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.dg.c<?, PointF> f22995n;
    public final String tt;
    public final com.byazt.dg.c<?, PointF> uj;
    public final com.byazt.ga.x ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f22996x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f22994c = new Path();
    public final tt sp = new tt();

    public a(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.tt ttVar) {
        this.tt = ttVar.c();
        this.ve = xVar;
        com.byazt.dg.c<PointF, PointF> cVarC = ttVar.ve().c();
        this.uj = cVarC;
        com.byazt.dg.c<PointF, PointF> cVarC2 = ttVar.tt().c();
        this.f22995n = cVarC2;
        this.f22993a = ttVar;
        veVar.c(cVarC);
        veVar.c(cVarC2);
        cVarC.c(this);
        cVarC2.c(this);
    }

    private void tt() {
        this.f22996x = false;
        this.ve.invalidateSelf();
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        tt();
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        if (this.f22996x) {
            return this.f22994c;
        }
        this.f22994c.reset();
        if (this.f22993a.n()) {
            this.f22996x = true;
            return this.f22994c;
        }
        PointF pointFSp = this.uj.sp();
        float f10 = pointFSp.x / 2.0f;
        float f11 = pointFSp.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f22994c.reset();
        if (this.f22993a.uj()) {
            float f14 = -f11;
            this.f22994c.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f22994c.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f22994c.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f22994c.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f22994c.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f22994c.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f22994c.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f22994c.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f22994c.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f22994c.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointFSp2 = this.f22995n.sp();
        this.f22994c.offset(pointFSp2.x, pointFSp2.y);
        this.f22994c.close();
        this.sp.c(this.f22994c);
        this.f22996x = true;
        return this.f22994c;
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ve veVar = list.get(i10);
            if (veVar instanceof rl) {
                rl rlVar = (rl) veVar;
                if (rlVar.getType() == com.byazt.jx.my.c.SIMULTANEOUSLY) {
                    this.sp.c(rlVar);
                    rlVar.c(this);
                }
            }
        }
    }
}
