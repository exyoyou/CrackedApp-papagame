package androidx.constraintlayout.core.motion.utils;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class a {
    static {
        String str = TypedValues.AttributesType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(String str) {
        byte b10;
        str.hashCode();
        switch (str.hashCode()) {
            case -1310311125:
                if (!str.equals("easing")) {
                    b10 = -1;
                } else {
                    b10 = 0;
                }
                break;
            case -1249320806:
                if (!str.equals("rotationX")) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
                break;
            case -1249320805:
                if (!str.equals("rotationY")) {
                    b10 = -1;
                } else {
                    b10 = 2;
                }
                break;
            case -1249320804:
                if (!str.equals("rotationZ")) {
                    b10 = -1;
                } else {
                    b10 = 3;
                }
                break;
            case -1225497657:
                if (!str.equals("translationX")) {
                    b10 = -1;
                } else {
                    b10 = 4;
                }
                break;
            case -1225497656:
                if (!str.equals("translationY")) {
                    b10 = -1;
                } else {
                    b10 = 5;
                }
                break;
            case -1225497655:
                if (!str.equals("translationZ")) {
                    b10 = -1;
                } else {
                    b10 = 6;
                }
                break;
            case -1001078227:
                if (!str.equals("progress")) {
                    b10 = -1;
                } else {
                    b10 = 7;
                }
                break;
            case -987906986:
                if (!str.equals("pivotX")) {
                    b10 = -1;
                } else {
                    b10 = 8;
                }
                break;
            case -987906985:
                if (!str.equals("pivotY")) {
                    b10 = -1;
                } else {
                    b10 = 9;
                }
                break;
            case -908189618:
                if (!str.equals("scaleX")) {
                    b10 = -1;
                } else {
                    b10 = 10;
                }
                break;
            case -908189617:
                if (!str.equals("scaleY")) {
                    b10 = -1;
                } else {
                    b10 = 11;
                }
                break;
            case -880905839:
                if (!str.equals(TypedValues.AttributesType.S_TARGET)) {
                    b10 = -1;
                } else {
                    b10 = 12;
                }
                break;
            case -4379043:
                if (!str.equals("elevation")) {
                    b10 = -1;
                } else {
                    b10 = 13;
                }
                break;
            case 92909918:
                if (!str.equals("alpha")) {
                    b10 = -1;
                } else {
                    b10 = 14;
                }
                break;
            case 97692013:
                if (!str.equals(TypedValues.AttributesType.S_FRAME)) {
                    b10 = -1;
                } else {
                    b10 = 15;
                }
                break;
            case 579057826:
                if (!str.equals("curveFit")) {
                    b10 = -1;
                } else {
                    b10 = 16;
                }
                break;
            case 803192288:
                if (!str.equals("pathRotate")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 1167159411:
                if (!str.equals(TypedValues.AttributesType.S_PIVOT_TARGET)) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 1941332754:
                if (!str.equals("visibility")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                return 317;
            case 1:
                return 308;
            case 2:
                return 309;
            case 3:
                return 310;
            case 4:
                return 304;
            case 5:
                return 305;
            case 6:
                return 306;
            case 7:
                return 315;
            case 8:
                return 313;
            case 9:
                return 314;
            case 10:
                return 311;
            case 11:
                return 312;
            case 12:
                return 101;
            case 13:
                return 307;
            case 14:
                return 303;
            case 15:
                return 100;
            case 16:
                return 301;
            case 17:
                return 316;
            case 18:
                return 318;
            case 19:
                return 302;
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
            case 301:
            case 302:
                return 2;
            case 303:
            case 304:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
            case 311:
            case 312:
            case 313:
            case 314:
            case 315:
            case 316:
                return 4;
            case 317:
            case 318:
                return 8;
            default:
                return -1;
        }
    }
}
