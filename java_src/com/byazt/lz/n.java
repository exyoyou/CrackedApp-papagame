package com.byazt.lz;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 601, 46})
public class n implements uj, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f16815c;
    public volatile uj tt;

    public n(uj ujVar) {
        this.tt = ujVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return Double.valueOf(this.tt.getLatitude());
        }
        if (iIntValue != 2) {
            return null;
        }
        return Double.valueOf(this.tt.getLongitude());
    }

    @Override // com.byazt.lz.uj
    public double getLatitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Double) this.f16815c.apply(sparseArray)).doubleValue();
    }

    @Override // com.byazt.lz.uj
    public double getLongitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Double) this.f16815c.apply(sparseArray)).doubleValue();
    }

    public n(Function function) {
        this.f16815c = function;
    }
}
