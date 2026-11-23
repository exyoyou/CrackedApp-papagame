package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, 117})
public class rl implements gt, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22279c;
    public volatile gt tt;

    public rl(gt gtVar) {
        this.tt = gtVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        Object obj2 = sparseArray.get(1);
        this.tt.onStep(((Integer) obj2).intValue(), sparseArray.get(2));
        return null;
    }

    @Override // com.byazt.yj.gt
    public void onStep(int i10, Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, obj);
        this.f22279c.apply(sparseArray);
    }

    public rl(Function function) {
        this.f22279c = function;
    }
}
