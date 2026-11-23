package com.byazt.bj;

/* JADX INFO: loaded from: classes6.dex */
public enum a {
    FLEX_START(0),
    CENTER(1),
    FLEX_END(2),
    SPACE_BETWEEN(3),
    SPACE_AROUND(4),
    SPACE_EVENLY(5);

    public final int sp;

    a(int i10) {
        this.sp = i10;
    }

    public int c() {
        return this.sp;
    }

    public static a c(int i10) {
        if (i10 == 0) {
            return FLEX_START;
        }
        if (i10 == 1) {
            return CENTER;
        }
        if (i10 == 2) {
            return FLEX_END;
        }
        if (i10 == 3) {
            return SPACE_BETWEEN;
        }
        if (i10 == 4) {
            return SPACE_AROUND;
        }
        if (i10 == 5) {
            return SPACE_EVENLY;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static a c(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return CENTER;
            case "space_around":
                return SPACE_AROUND;
            case "space_evenly":
                return SPACE_EVENLY;
            case "flex_start":
                return FLEX_START;
            case "space_between":
                return SPACE_BETWEEN;
            case "flex_end":
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
