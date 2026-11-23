package com.byazt.fn;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1551, 15})
public class uj implements ve, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f14213c;
    public volatile ve tt;

    public uj(ve veVar) {
        this.tt = veVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.tt.onNetworkChanged((Context) sparseArray.get(1), (Intent) sparseArray.get(2), ((Boolean) sparseArray.get(3)).booleanValue(), ((Integer) sparseArray.get(4)).intValue());
        return null;
    }

    @Override // com.byazt.fn.ve
    public void onNetworkChanged(Context context, Intent intent, boolean z10, int i10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, intent);
        sparseArray.put(3, Boolean.valueOf(z10));
        sparseArray.put(4, Integer.valueOf(i10));
        this.f14213c.apply(sparseArray);
    }

    public uj(Function function) {
        this.f14213c = function;
    }
}
