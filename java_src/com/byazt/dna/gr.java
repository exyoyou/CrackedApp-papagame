package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 196})
public class gr implements gu, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13033c;
    public volatile gu tt;

    public gr(gu guVar) {
        this.tt = guVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13033c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13033c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.gu
    public Object getData(int i10) {
        if (this.tt != null) {
            return this.tt.getData(i10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i10));
        return this.f13033c.apply(sparseArray);
    }

    @Override // com.byazt.dna.gu
    public void setData(int i10, Object obj) {
        if (this.tt != null) {
            this.tt.setData(i10, obj);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, obj);
        this.f13033c.apply(sparseArray);
    }

    public gr(Function function) {
        this.f13033c = function;
    }

    @Override // com.byazt.dna.gu
    public Object getData(int i10, com.byazt.iy.c cVar) {
        if (this.tt != null) {
            return this.tt.getData(i10, cVar);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i10));
        if (cVar != null) {
            cVar = new com.byazt.iy.tt(cVar);
        }
        sparseArray.put(2, cVar);
        return this.f13033c.apply(sparseArray);
    }

    @Override // com.byazt.dna.gu
    public void setData(int i10, Object obj, com.byazt.iy.c cVar) {
        if (this.tt != null) {
            this.tt.setData(i10, obj, cVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, obj);
        if (cVar != null) {
            cVar = new com.byazt.iy.tt(cVar);
        }
        sparseArray.put(3, cVar);
        this.f13033c.apply(sparseArray);
    }
}
