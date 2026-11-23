package com.aggmoread.sdk.z.c.a.a.e;

import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public final class i {
    public static int a(int i10, int i11) {
        if (i10 >= i11) {
            return i11;
        }
        int iNextInt = new Random().nextInt((i11 - i10) + 1) + i10;
        e.a("AMGTAG", "ni %s", Integer.valueOf(iNextInt));
        return iNextInt;
    }

    public static boolean a(double d10) {
        if (d10 > 0.0d) {
            int iA = a(0, 10000);
            e.a("AMGTAG", "rn %s, v %s", Integer.valueOf(iA), Double.valueOf(d10));
            if (iA <= Math.floor(d10 * 10000.0d)) {
                return true;
            }
        }
        return false;
    }
}
