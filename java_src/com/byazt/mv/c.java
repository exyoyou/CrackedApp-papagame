package com.byazt.mv;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.vb.a;
import com.byazt.vb.n;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 659, 20})
public class c {
    public static boolean a(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.a())) ? false : true;
    }

    public static long c(int i10, Context context, n nVar) {
        return tt(i10, context, nVar);
    }

    public static boolean n(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.ve())) ? false : true;
    }

    private static long tt(int i10, Context context, n nVar) {
        if (context == null) {
            return i10;
        }
        Runtime runtime = Runtime.getRuntime();
        long jFreeMemory = runtime.freeMemory() / 1048576;
        long jMaxMemory = (runtime.maxMemory() / 1048576) - (runtime.totalMemory() / 1048576);
        if (jMaxMemory <= 0) {
            if (jFreeMemory <= 2) {
                return 1L;
            }
            return jFreeMemory <= 10 ? Math.min(i10, 10) : Math.min((jFreeMemory / 2) * 10, i10);
        }
        long j10 = ((jFreeMemory + jMaxMemory) - 10) / 2;
        if (j10 <= 2) {
            return 1L;
        }
        return j10 <= 10 ? Math.min(i10, 10) : Math.min(j10 * 10, i10);
    }

    public static boolean uj(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.n())) ? false : true;
    }

    public static boolean ve(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.uj())) ? false : true;
    }

    public static boolean c(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.c())) ? false : true;
    }

    public static boolean tt(n nVar) {
        a aVarTt = nVar.tt();
        return (aVarTt == null || TextUtils.isEmpty(aVarTt.tt())) ? false : true;
    }
}
