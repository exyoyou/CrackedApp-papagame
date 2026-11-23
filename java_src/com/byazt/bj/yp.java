package com.byazt.bj;

/* JADX INFO: loaded from: classes6.dex */
public enum yp {
    NO_WRAP(0),
    WRAP(1),
    WRAP_REVERSE(2);

    public final int uj;

    yp(int i10) {
        this.uj = i10;
    }

    public int c() {
        return this.uj;
    }

    public static yp c(int i10) {
        if (i10 == 0) {
            return NO_WRAP;
        }
        if (i10 == 1) {
            return WRAP;
        }
        if (i10 == 2) {
            return WRAP_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static yp c(String str) {
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "nowrap":
                return NO_WRAP;
            case "wrap":
                return WRAP;
            case "wrap_reverse":
                return WRAP_REVERSE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(lowerCase));
        }
    }
}
