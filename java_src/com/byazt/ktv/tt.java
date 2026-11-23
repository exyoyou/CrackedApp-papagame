package com.byazt.ktv;

import com.byazt.omf.gt;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 154, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Random f16481c;
    public static volatile boolean tt;

    public static boolean c() {
        return tt;
    }

    public static void tt() {
        c(gt.tt().kk(), true);
    }

    private static Random ve() {
        if (f16481c != null) {
            return f16481c;
        }
        Random randomVe = com.byazt.nr.c.ve();
        f16481c = randomVe;
        return randomVe;
    }

    public static boolean c(float f10, boolean z10) {
        if (f10 <= 0.0f) {
            if (z10) {
                tt = false;
            }
            return false;
        }
        int iNextInt = ve().nextInt(10000);
        int i10 = (int) (f10 * 10000.0f);
        if (z10) {
            tt = iNextInt < i10;
        }
        return iNextInt < i10;
    }
}
