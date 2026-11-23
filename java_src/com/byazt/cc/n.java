package com.byazt.cc;

import android.os.Looper;
import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 46})
public class n {
    public static boolean c() {
        return (com.byazt.by.n.c().t() & 8) == 8;
    }

    public static void tt(Runnable runnable) {
        if (!c() || Looper.myLooper() == com.byazt.nr.da.ve().getLooper()) {
            runnable.run();
        } else {
            com.byazt.nr.da.ve().post(runnable);
        }
    }

    public static void c(Runnable runnable) {
        if (!c()) {
            com.byazt.bzd.x.c(runnable);
        } else if (Looper.myLooper() == com.byazt.nr.da.ve().getLooper()) {
            runnable.run();
        } else {
            com.byazt.nr.da.ve().post(runnable);
        }
    }
}
