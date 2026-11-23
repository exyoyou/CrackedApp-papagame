package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class g {
    static {
        String str = TypedValues.TransitionType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    public static int a(String str) {
        str.hashCode();
        switch (str) {
            case "transitionFlags":
                return TypedValues.TransitionType.TYPE_TRANSITION_FLAGS;
            case "duration":
                return 700;
            case "motionInterpolator":
                return 705;
            case "autoTransition":
                return 704;
            case "to":
                return 702;
            case "from":
                return 701;
            case "pathMotionArc":
                return 509;
            case "staggered":
                return 706;
            default:
                return -1;
        }
    }

    public static int b(int i10) {
        if (i10 == 509) {
            return 2;
        }
        switch (i10) {
            case 700:
                return 2;
            case 701:
            case 702:
                return 8;
            default:
                switch (i10) {
                    case 705:
                    case TypedValues.TransitionType.TYPE_TRANSITION_FLAGS /* 707 */:
                        return 8;
                    case 706:
                        return 4;
                    default:
                        return -1;
                }
        }
    }
}
