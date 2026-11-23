package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 15})
public class uj implements n, u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f23044a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f23045c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public List<u> f23046da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.ga.x f23047i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final RectF f23048n;
    public com.byazt.dg.m sl;
    public final boolean sp;
    public final RectF tt;
    public final Path uj;
    public final Matrix ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<ve> f23049x;

    public uj(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.m mVar, com.byazt.ga.a aVar) {
        this(xVar, veVar, mVar.c(), mVar.ve(), c(xVar, aVar, veVar, mVar.tt()), c(mVar.tt()));
    }

    private static List<ve> c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar, List<com.byazt.jx.ve> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            ve veVarC = list.get(i10).c(xVar, aVar, veVar);
            if (veVarC != null) {
                arrayList.add(veVarC);
            }
        }
        return arrayList;
    }

    private boolean n() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f23049x.size(); i11++) {
            if ((this.f23049x.get(i11) instanceof n) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    public List<u> tt() {
        if (this.f23046da == null) {
            this.f23046da = new ArrayList();
            for (int i10 = 0; i10 < this.f23049x.size(); i10++) {
                ve veVar = this.f23049x.get(i10);
                if (veVar instanceof u) {
                    this.f23046da.add((u) veVar);
                }
            }
        }
        return this.f23046da;
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        this.ve.reset();
        com.byazt.dg.m mVar = this.sl;
        if (mVar != null) {
            this.ve.set(mVar.uj());
        }
        this.uj.reset();
        if (this.sp) {
            return this.uj;
        }
        for (int size = this.f23049x.size() - 1; size >= 0; size--) {
            ve veVar = this.f23049x.get(size);
            if (veVar instanceof u) {
                this.uj.addPath(((u) veVar).uj(), this.ve);
            }
        }
        return this.uj;
    }

    public Matrix ve() {
        com.byazt.dg.m mVar = this.sl;
        if (mVar != null) {
            return mVar.uj();
        }
        this.ve.reset();
        return this.ve;
    }

    public uj(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, String str, boolean z10, List<ve> list, com.byazt.kd.t tVar) {
        this.f23045c = new com.byazt.xg.c();
        this.tt = new RectF();
        this.ve = new Matrix();
        this.uj = new Path();
        this.f23048n = new RectF();
        this.f23044a = str;
        this.f23047i = xVar;
        this.sp = z10;
        this.f23049x = list;
        if (tVar != null) {
            com.byazt.dg.m mVarDa = tVar.da();
            this.sl = mVarDa;
            mVarDa.c(veVar);
            this.sl.c(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            ve veVar2 = list.get(size);
            if (veVar2 instanceof da) {
                arrayList.add((da) veVar2);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((da) arrayList.get(size2)).c(list.listIterator(list.size()));
        }
    }

    public static com.byazt.kd.t c(List<com.byazt.jx.ve> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.byazt.jx.ve veVar = list.get(i10);
            if (veVar instanceof com.byazt.kd.t) {
                return (com.byazt.kd.t) veVar;
            }
        }
        return null;
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.f23047i.invalidateSelf();
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f23049x.size());
        arrayList.addAll(list);
        for (int size = this.f23049x.size() - 1; size >= 0; size--) {
            ve veVar = this.f23049x.get(size);
            veVar.c(arrayList, this.f23049x.subList(0, size));
            arrayList.add(veVar);
        }
    }

    @Override // com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.sp) {
            return;
        }
        this.ve.set(matrix);
        com.byazt.dg.m mVar = this.sl;
        if (mVar != null) {
            this.ve.preConcat(mVar.uj());
            i10 = (int) (((((this.sl.c() == null ? 100 : this.sl.c().sp().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f23047i.da() && n() && i10 != 255;
        if (z10) {
            this.tt.set(0.0f, 0.0f, 0.0f, 0.0f);
            c(this.tt, this.ve, true);
            this.f23045c.setAlpha(i10);
            com.byazt.kk.da.c(canvas, this.tt, this.f23045c);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f23049x.size() - 1; size >= 0; size--) {
            ve veVar = this.f23049x.get(size);
            if (veVar instanceof n) {
                ((n) veVar).c(canvas, this.ve, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.ve.set(matrix);
        com.byazt.dg.m mVar = this.sl;
        if (mVar != null) {
            this.ve.preConcat(mVar.uj());
        }
        this.f23048n.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f23049x.size() - 1; size >= 0; size--) {
            ve veVar = this.f23049x.get(size);
            if (veVar instanceof n) {
                ((n) veVar).c(this.f23048n, this.ve, z10);
                rectF.union(this.f23048n);
            }
        }
    }
}
