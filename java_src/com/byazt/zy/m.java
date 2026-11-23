package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 130})
public class m implements da, n, sl, u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f23018a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public uj f23020da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.dg.m f23021i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f23022n;
    public final com.byazt.dg.c<Float, Float> sp;
    public final com.byazt.zk.ve uj;
    public final com.byazt.ga.x ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.dg.c<Float, Float> f23023x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f23019c = new Matrix();
    public final Path tt = new Path();

    public m(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.t tVar) {
        this.ve = xVar;
        this.uj = veVar;
        this.f23022n = tVar.c();
        this.f23018a = tVar.n();
        com.byazt.dg.c<Float, Float> cVarC = tVar.tt().c();
        this.sp = cVarC;
        veVar.c(cVarC);
        cVarC.c(this);
        com.byazt.dg.c<Float, Float> cVarC2 = tVar.ve().c();
        this.f23023x = cVarC2;
        veVar.c(cVarC2);
        cVarC2.c(this);
        com.byazt.dg.m mVarDa = tVar.uj().da();
        this.f23021i = mVarDa;
        mVarDa.c(veVar);
        mVarDa.c(this);
    }

    @Override // com.byazt.zy.da
    public void c(ListIterator<ve> listIterator) {
        if (this.f23020da != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f23020da = new uj(this.ve, this.uj, "Repeater", this.f23018a, arrayList, null);
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        Path pathUj = this.f23020da.uj();
        this.tt.reset();
        float fFloatValue = this.sp.sp().floatValue();
        float fFloatValue2 = this.f23023x.sp().floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.f23019c.set(this.f23021i.tt(i10 + fFloatValue2));
            this.tt.addPath(pathUj, this.f23019c);
        }
        return this.tt;
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        this.f23020da.c(list, list2);
    }

    @Override // com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = this.sp.sp().floatValue();
        float fFloatValue2 = this.f23023x.sp().floatValue();
        float fFloatValue3 = this.f23021i.tt().sp().floatValue() / 100.0f;
        float fFloatValue4 = this.f23021i.ve().sp().floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f23019c.set(matrix);
            float f10 = i11;
            this.f23019c.preConcat(this.f23021i.tt(f10 + fFloatValue2));
            this.f23020da.c(canvas, this.f23019c, (int) (i10 * com.byazt.kk.i.c(fFloatValue3, fFloatValue4, f10 / fFloatValue)));
        }
    }

    @Override // com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f23020da.c(rectF, matrix, z10);
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.ve.invalidateSelf();
    }
}
