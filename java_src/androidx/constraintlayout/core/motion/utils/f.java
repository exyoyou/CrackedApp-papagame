package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class f {
    static {
        String str = TypedValues.PositionType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    public static int a(String str) {
        str.hashCode();
        switch (str) {
            case "transitionEasing":
                return 501;
            case "percentWidth":
                return TypedValues.PositionType.TYPE_PERCENT_WIDTH;
            case "percentHeight":
                return 504;
            case "drawPath":
                return TypedValues.PositionType.TYPE_DRAWPATH;
            case "sizePercent":
                return TypedValues.PositionType.TYPE_SIZE_PERCENT;
            case "percentX":
                return TypedValues.PositionType.TYPE_PERCENT_X;
            case "percentY":
                return TypedValues.PositionType.TYPE_PERCENT_Y;
            default:
                return -1;
        }
    }

    public static int b(int i10) {
        if (i10 == 100) {
            return 2;
        }
        if (i10 == 101) {
            return 8;
        }
        switch (i10) {
            case 501:
            case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                return 8;
            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
            case 504:
            case TypedValues.PositionType.TYPE_SIZE_PERCENT /* 505 */:
            case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
            case TypedValues.PositionType.TYPE_PERCENT_Y /* 507 */:
                return 4;
            case TypedValues.PositionType.TYPE_CURVE_FIT /* 508 */:
                return 2;
            default:
                return -1;
        }
    }
}
