package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, 482})
public class zm implements gr, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22284c;
    public volatile gr tt;

    public zm(gr grVar) {
        this.tt = grVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object nuVar = sparseArray.get(1);
            if (nuVar != null) {
                nuVar = new nu(n0.c.a(nuVar));
            }
            this.tt.onSuccess((m) nuVar);
            return null;
        }
        if (iIntValue != 2) {
            return null;
        }
        this.tt.onFailed(((Integer) sparseArray.get(1)).intValue(), (String) sparseArray.get(2), (Throwable) sparseArray.get(3));
        return null;
    }

    @Override // com.byazt.yj.gr
    public void onFailed(int i10, String str, Throwable th) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, str);
        sparseArray.put(3, th);
        this.f22284c.apply(sparseArray);
    }

    @Override // com.byazt.yj.gr
    public void onSuccess(m mVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (mVar != null) {
            mVar = new nu(mVar);
        }
        sparseArray.put(1, mVar);
        this.f22284c.apply(sparseArray);
    }

    public zm(Function function) {
        this.f22284c = function;
    }
}
