package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 499})
public class yv implements zm, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13047c;
    public volatile zm tt;

    public yv(zm zmVar) {
        this.tt = zmVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13047c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13047c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.zm
    public boolean assertAndSetState(int i10, int i11, boolean z10) {
        if (this.tt != null) {
            return this.tt.assertAndSetState(i10, i11, z10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, Integer.valueOf(i11));
        sparseArray.put(3, Boolean.valueOf(z10));
        return ((Boolean) this.f13047c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.zm
    public int getState(int i10, int i11) {
        if (this.tt != null) {
            return this.tt.getState(i10, i11);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, Integer.valueOf(i11));
        return ((Integer) this.f13047c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.zm
    public void resetSize(int i10) {
        if (this.tt != null) {
            this.tt.resetSize(i10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i10));
        this.f13047c.apply(sparseArray);
    }

    @Override // com.byazt.dna.zm
    public void setState(int i10, int i11, boolean z10) {
        if (this.tt != null) {
            this.tt.setState(i10, i11, z10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, Integer.valueOf(i11));
        sparseArray.put(3, Boolean.valueOf(z10));
        this.f13047c.apply(sparseArray);
    }

    public yv(Function function) {
        this.f13047c = function;
    }
}
