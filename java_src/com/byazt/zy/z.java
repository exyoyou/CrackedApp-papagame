package com.byazt.zy;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 133})
public class z implements sl, u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.dg.c<?, PointF> f23070a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.ga.x f23074n;
    public boolean sl;
    public final com.byazt.dg.c<?, PointF> sp;
    public final boolean uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23075x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f23071c = new Path();
    public final RectF tt = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final tt f23073i = new tt();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dg.c<Float, Float> f23072da = null;

    public z(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.sl slVar) {
        this.ve = slVar.c();
        this.uj = slVar.n();
        this.f23074n = xVar;
        com.byazt.dg.c<PointF, PointF> cVarC = slVar.uj().c();
        this.f23070a = cVarC;
        com.byazt.dg.c<PointF, PointF> cVarC2 = slVar.ve().c();
        this.sp = cVarC2;
        com.byazt.dg.c<Float, Float> cVarC3 = slVar.tt().c();
        this.f23075x = cVarC3;
        veVar.c(cVarC);
        veVar.c(cVarC2);
        veVar.c(cVarC3);
        cVarC.c(this);
        cVarC2.c(this);
        cVarC3.c(this);
    }

    private void tt() {
        this.sl = false;
        this.f23074n.invalidateSelf();
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        tt();
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        com.byazt.dg.c<Float, Float> cVar;
        if (this.sl) {
            return this.f23071c;
        }
        this.f23071c.reset();
        if (this.uj) {
            this.sl = true;
            return this.f23071c;
        }
        PointF pointFSp = this.sp.sp();
        float f10 = pointFSp.x / 2.0f;
        float f11 = pointFSp.y / 2.0f;
        com.byazt.dg.c<?, Float> cVar2 = this.f23075x;
        float fI = cVar2 == null ? 0.0f : ((com.byazt.dg.uj) cVar2).i();
        if (fI == 0.0f && (cVar = this.f23072da) != null) {
            fI = Math.min(cVar.sp().floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fI > fMin) {
            fI = fMin;
        }
        PointF pointFSp2 = this.f23070a.sp();
        this.f23071c.moveTo(pointFSp2.x + f10, (pointFSp2.y - f11) + fI);
        this.f23071c.lineTo(pointFSp2.x + f10, (pointFSp2.y + f11) - fI);
        if (fI > 0.0f) {
            RectF rectF = this.tt;
            float f12 = pointFSp2.x;
            float f13 = fI * 2.0f;
            float f14 = pointFSp2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f23071c.arcTo(this.tt, 0.0f, 90.0f, false);
        }
        this.f23071c.lineTo((pointFSp2.x - f10) + fI, pointFSp2.y + f11);
        if (fI > 0.0f) {
            RectF rectF2 = this.tt;
            float f15 = pointFSp2.x;
            float f16 = pointFSp2.y;
            float f17 = fI * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f23071c.arcTo(this.tt, 90.0f, 90.0f, false);
        }
        this.f23071c.lineTo(pointFSp2.x - f10, (pointFSp2.y - f11) + fI);
        if (fI > 0.0f) {
            RectF rectF3 = this.tt;
            float f18 = pointFSp2.x;
            float f19 = pointFSp2.y;
            float f20 = fI * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f23071c.arcTo(this.tt, 180.0f, 90.0f, false);
        }
        this.f23071c.lineTo((pointFSp2.x + f10) - fI, pointFSp2.y - f11);
        if (fI > 0.0f) {
            RectF rectF4 = this.tt;
            float f21 = pointFSp2.x;
            float f22 = fI * 2.0f;
            float f23 = pointFSp2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f23071c.arcTo(this.tt, 270.0f, 90.0f, false);
        }
        this.f23071c.close();
        this.f23073i.c(this.f23071c);
        this.sl = true;
        return this.f23071c;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[SYNTHETIC] */
    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ve veVar = list.get(i10);
            if (veVar instanceof rl) {
                rl rlVar = (rl) veVar;
                if (rlVar.getType() == com.byazt.jx.my.c.SIMULTANEOUSLY) {
                    this.f23073i.c(rlVar);
                    rlVar.c(this);
                } else if (veVar instanceof nu) {
                    this.f23072da = ((nu) veVar).tt();
                }
            } else if (veVar instanceof nu) {
                this.f23072da = ((nu) veVar).tt();
            }
        }
    }
}
