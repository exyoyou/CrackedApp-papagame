package com.byazt.lx;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1021, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f16808c;
    public static Function<SparseArray<Object>, Object> tt;

    private c() {
    }

    public static c getInstance() {
        if (f16808c == null) {
            synchronized (c.class) {
                if (f16808c == null) {
                    f16808c = new c();
                }
            }
        }
        return f16808c;
    }

    public static void init(Function<SparseArray<Object>, Object> function) {
        tt = function;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        return null;
    }

    public void startRequestRit(String str, String str2) {
        if (tt != null) {
            com.byazt.rl.c cVarC = com.byazt.rl.c.c();
            cVarC.c(20000, str);
            cVarC.c(20001, str2);
            cVarC.c(-99999987, 10000);
            cVarC.c(-99999985, Void.class);
            tt.apply(cVarC.tt().sparseArray());
        }
    }
}
