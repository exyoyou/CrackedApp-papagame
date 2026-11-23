package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.LongSparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 15})
public class uj extends ve {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final RectF f22869da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RectF f22870i;
    public final Paint sl;
    public com.byazt.dg.c<Float, Float> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f22871t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<ve> f22872x;

    /* JADX INFO: renamed from: com.byazt.zk.uj$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 909, 99})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f22873c;

        static {
            int[] iArr = new int[x.tt.values().length];
            f22873c = iArr;
            try {
                iArr[x.tt.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22873c[x.tt.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public uj(com.byazt.ga.x xVar, x xVar2, List<x> list, com.byazt.ga.a aVar, Context context) {
        int i10;
        ve veVar;
        x.tt ttVarT;
        int i11;
        super(xVar, xVar2);
        this.f22872x = new ArrayList();
        this.f22870i = new RectF();
        this.f22869da = new RectF();
        this.sl = new Paint();
        this.f22871t = true;
        com.byazt.kd.tt ttVarRl = xVar2.rl();
        if (ttVarRl != null) {
            com.byazt.dg.c<Float, Float> cVarC = ttVarRl.c();
            this.sp = cVarC;
            c(cVarC);
            this.sp.c(this);
        } else {
            this.sp = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(aVar.yp().size());
        int size = list.size() - 1;
        ve veVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            x xVar3 = list.get(size);
            ve veVarC = ve.c(this, xVar3, xVar, aVar, context);
            if (veVarC != null) {
                longSparseArray.put(veVarC.uj().n(), veVarC);
                if (veVar2 != null) {
                    veVar2.c(veVarC);
                    veVar2 = null;
                } else {
                    this.f22872x.add(0, veVarC);
                    if (xVar3 != null && (ttVarT = xVar3.t()) != null && ((i11 = AnonymousClass1.f22873c[ttVarT.ordinal()]) == 1 || i11 == 2)) {
                        veVar2 = veVarC;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < longSparseArray.size(); i10++) {
            ve veVar3 = (ve) longSparseArray.get(longSparseArray.keyAt(i10));
            if (veVar3 != null && (veVar = (ve) longSparseArray.get(veVar3.uj().u())) != null) {
                veVar3.tt(veVar);
            }
        }
    }

    @Override // com.byazt.zk.ve
    public void c(boolean z10) {
        super.c(z10);
        Iterator<ve> it2 = this.f22872x.iterator();
        while (it2.hasNext()) {
            it2.next().c(z10);
        }
    }

    public void tt(boolean z10) {
        this.f22871t = z10;
    }

    public List<ve> yp() {
        return this.f22872x;
    }

    @Override // com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        super.tt(canvas, matrix, i10);
        com.byazt.ga.n.c("CompositionLayer#draw");
        this.f22869da.set(0.0f, 0.0f, this.ve.x(), this.ve.i());
        matrix.mapRect(this.f22869da);
        boolean z10 = this.tt.da() && this.f22872x.size() > 1 && i10 != 255;
        if (z10) {
            this.sl.setAlpha(i10);
            com.byazt.kk.da.c(canvas, this.f22869da, this.sl);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f22872x.size() - 1; size >= 0; size--) {
            if (((!this.f22871t && "__container".equals(this.ve.a())) || this.f22869da.isEmpty()) ? true : canvas.clipRect(this.f22869da)) {
                this.f22872x.get(size).c(canvas, matrix, i10);
            }
        }
        canvas.restore();
        com.byazt.ga.n.tt("CompositionLayer#draw");
    }

    @Override // com.byazt.zk.ve, com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        for (int size = this.f22872x.size() - 1; size >= 0; size--) {
            this.f22870i.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f22872x.get(size).c(this.f22870i, this.f22875c, true);
            rectF.union(this.f22870i);
        }
    }

    @Override // com.byazt.zk.ve
    public void c(float f10) {
        super.c(f10);
        if (this.sp != null) {
            f10 = ((this.sp.sp().floatValue() * this.ve.c().u()) - this.ve.c().a()) / (this.tt.p().rh() + 0.01f);
        }
        if (this.sp == null) {
            f10 -= this.ve.ve();
        }
        if (this.ve.tt() != 0.0f && !"__container".equals(this.ve.a())) {
            f10 /= this.ve.tt();
        }
        for (int size = this.f22872x.size() - 1; size >= 0; size--) {
            this.f22872x.get(size).c(f10);
        }
    }
}
