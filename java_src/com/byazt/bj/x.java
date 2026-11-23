package com.byazt.bj;

/* JADX INFO: loaded from: classes6.dex */
public enum x {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);

    public final int uj;

    x(int i10) {
        this.uj = i10;
    }

    public static x c(int i10) {
        if (i10 == 0) {
            return UNDEFINED;
        }
        if (i10 == 1) {
            return EXACTLY;
        }
        if (i10 == 2) {
            return AT_MOST;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }
}
