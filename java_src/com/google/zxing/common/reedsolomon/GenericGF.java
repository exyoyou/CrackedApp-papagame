package com.google.zxing.common.reedsolomon;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes5.dex */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF AZTEC_PARAM;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    private static final int INITIALIZATION_THRESHOLD = 0;
    public static final GenericGF MAXICODE_FIELD_64;
    public static final GenericGF QR_CODE_FIELD_256;
    private int[] expTable;
    private boolean initialized = false;
    private int[] logTable;
    private GenericGFPoly one;
    private final int primitive;
    private final int size;
    private GenericGFPoly zero;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(TTAdConstant.INIT_FAILED_CREATE_INITIALIZER_FAILED, 4096);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024);

    static {
        GenericGF genericGF = new GenericGF(67, 64);
        AZTEC_DATA_6 = genericGF;
        AZTEC_PARAM = new GenericGF(19, 16);
        QR_CODE_FIELD_256 = new GenericGF(MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, 256);
        GenericGF genericGF2 = new GenericGF(301, 256);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i10, int i11) {
        this.primitive = i10;
        this.size = i11;
        if (i11 <= 0) {
            initialize();
        }
    }

    static int addOrSubtract(int i10, int i11) {
        return i10 ^ i11;
    }

    private void checkInit() {
        if (this.initialized) {
            return;
        }
        initialize();
    }

    private void initialize() {
        int i10 = this.size;
        this.expTable = new int[i10];
        this.logTable = new int[i10];
        int i11 = 0;
        int i12 = 1;
        while (true) {
            int i13 = this.size;
            if (i11 >= i13) {
                break;
            }
            this.expTable[i11] = i12;
            i12 <<= 1;
            if (i12 >= i13) {
                i12 = (i12 ^ this.primitive) & (i13 - 1);
            }
            i11++;
        }
        for (int i14 = 0; i14 < this.size - 1; i14++) {
            this.logTable[this.expTable[i14]] = i14;
        }
        this.zero = new GenericGFPoly(this, new int[]{0});
        this.one = new GenericGFPoly(this, new int[]{1});
        this.initialized = true;
    }

    GenericGFPoly buildMonomial(int i10, int i11) {
        checkInit();
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.zero;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new GenericGFPoly(this, iArr);
    }

    int exp(int i10) {
        checkInit();
        return this.expTable[i10];
    }

    GenericGFPoly getOne() {
        checkInit();
        return this.one;
    }

    public int getSize() {
        return this.size;
    }

    GenericGFPoly getZero() {
        checkInit();
        return this.zero;
    }

    int inverse(int i10) {
        checkInit();
        if (i10 != 0) {
            return this.expTable[(this.size - this.logTable[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    int log(int i10) {
        checkInit();
        if (i10 != 0) {
            return this.logTable[i10];
        }
        throw new IllegalArgumentException();
    }

    int multiply(int i10, int i11) {
        int i12;
        checkInit();
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        if (i10 < 0 || i11 < 0 || i10 >= (i12 = this.size) || i11 >= i12) {
            i10++;
        }
        int[] iArr = this.logTable;
        int i13 = iArr[i10] + iArr[i11];
        int[] iArr2 = this.expTable;
        int i14 = this.size;
        return iArr2[(i13 % i14) + (i13 / i14)];
    }
}
