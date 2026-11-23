package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes5.dex */
abstract class DataMask {
    private static final DataMask[] DATA_MASKS;

    private static class DataMask000 extends DataMask {
        private DataMask000() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return ((i10 + i11) & 1) == 0;
        }
    }

    private static class DataMask001 extends DataMask {
        private DataMask001() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return (i10 & 1) == 0;
        }
    }

    private static class DataMask010 extends DataMask {
        private DataMask010() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return i11 % 3 == 0;
        }
    }

    private static class DataMask011 extends DataMask {
        private DataMask011() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return (i10 + i11) % 3 == 0;
        }
    }

    private static class DataMask100 extends DataMask {
        private DataMask100() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return (((i10 >>> 1) + (i11 / 3)) & 1) == 0;
        }
    }

    private static class DataMask101 extends DataMask {
        private DataMask101() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            int i12 = i10 * i11;
            return (i12 & 1) + (i12 % 3) == 0;
        }
    }

    private static class DataMask110 extends DataMask {
        private DataMask110() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            int i12 = i10 * i11;
            return (((i12 & 1) + (i12 % 3)) & 1) == 0;
        }
    }

    private static class DataMask111 extends DataMask {
        private DataMask111() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i10, int i11) {
            return ((((i10 + i11) & 1) + ((i10 * i11) % 3)) & 1) == 0;
        }
    }

    static {
        DATA_MASKS = new DataMask[]{new DataMask000(), new DataMask001(), new DataMask010(), new DataMask011(), new DataMask100(), new DataMask101(), new DataMask110(), new DataMask111()};
    }

    static DataMask forReference(int i10) {
        if (i10 < 0 || i10 > 7) {
            throw new IllegalArgumentException();
        }
        return DATA_MASKS[i10];
    }

    abstract boolean isMasked(int i10, int i11);

    final void unmaskBitMatrix(BitMatrix bitMatrix, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (isMasked(i11, i12)) {
                    bitMatrix.flip(i12, i11);
                }
            }
        }
    }

    private DataMask() {
    }
}
