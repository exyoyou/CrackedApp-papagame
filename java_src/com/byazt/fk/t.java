package com.byazt.fk;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1696, 66})
public class t implements da, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f14207c;
    public volatile da tt;

    public t(da daVar) {
        this.tt = daVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        Object obj2 = sparseArray.get(1);
        Object ypVar = sparseArray.get(2);
        Object slVar = sparseArray.get(3);
        if (ypVar != null) {
            ypVar = new yp(n0.c.a(ypVar));
        }
        if (slVar != null) {
            slVar = new sl(n0.c.a(slVar));
        }
        this.tt.execVideoPreload((Context) obj2, (u) ypVar, (da.c) slVar);
        return null;
    }

    @Override // com.byazt.fk.da
    public void execVideoPreload(Context context, u uVar, da.c cVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        if (uVar != null) {
            uVar = new yp(uVar);
        }
        sparseArray.put(2, uVar);
        if (cVar != null) {
            cVar = new sl(cVar);
        }
        sparseArray.put(3, cVar);
        this.f14207c.apply(sparseArray);
    }

    public t(Function function) {
        this.f14207c = function;
    }
}
