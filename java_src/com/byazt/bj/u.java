package com.byazt.bj;

/* JADX INFO: loaded from: classes6.dex */
public enum u {
    STATIC(0),
    RELATIVE(1),
    ABSOLUTE(2);

    public final int uj;

    u(int i10) {
        this.uj = i10;
    }

    public int c() {
        return this.uj;
    }

    public static u c(int i10) {
        if (i10 == 0) {
            return STATIC;
        }
        if (i10 == 1) {
            return RELATIVE;
        }
        if (i10 == 2) {
            return ABSOLUTE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static u c(String str) {
        str.hashCode();
        switch (str) {
            case "static":
                return STATIC;
            case "relative":
                return RELATIVE;
            case "absolute":
                return ABSOLUTE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
