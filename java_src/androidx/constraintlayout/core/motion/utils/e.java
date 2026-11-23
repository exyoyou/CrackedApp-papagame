package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class e {
    static {
        String str = TypedValues.MotionType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    public static int a(String str) {
        str.hashCode();
        switch (str) {
            case "AnimateCircleAngleTo":
                return 606;
            case "QuantizeMotionPhase":
                return 602;
            case "QuantizeMotionSteps":
                return 610;
            case "PathRotate":
                return 601;
            case "QuantizeInterpolator":
                return 604;
            case "DrawPath":
                return 608;
            case "Stagger":
                return 600;
            case "PolarRelativeTo":
                return 609;
            case "QuantizeInterpolatorType":
                return 611;
            case "QuantizeInterpolatorID":
                return 612;
            case "TransitionEasing":
                return 603;
            case "AnimateRelativeTo":
                return 605;
            case "PathMotionArc":
                return 607;
            default:
                return -1;
        }
    }
}
