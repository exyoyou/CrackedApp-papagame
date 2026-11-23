package com.google.zxing.common;

/* JADX INFO: loaded from: classes5.dex */
public final class BitMatrix {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i10) {
        this(i10, i10);
    }

    public void clear() {
        int length = this.bits.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.bits[i10] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        if (this.width != bitMatrix.width || this.height != bitMatrix.height || this.rowSize != bitMatrix.rowSize || this.bits.length != bitMatrix.bits.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i10 >= iArr.length) {
                return true;
            }
            if (iArr[i10] != bitMatrix.bits[i10]) {
                return false;
            }
            i10++;
        }
    }

    public void flip(int i10, int i11) {
        int i12 = (i11 * this.rowSize) + (i10 >> 5);
        int[] iArr = this.bits;
        iArr[i12] = (1 << (i10 & 31)) ^ iArr[i12];
    }

    public boolean get(int i10, int i11) {
        return ((this.bits[(i11 * this.rowSize) + (i10 >> 5)] >>> (i10 & 31)) & 1) != 0;
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i10 = this.rowSize;
        int i11 = length / i10;
        int i12 = (length % i10) << 5;
        int i13 = 31;
        while ((this.bits[length] >>> i13) == 0) {
            i13--;
        }
        return new int[]{i12 + i13, i11};
    }

    public int[] getEnclosingRectangle() {
        int i10 = this.width;
        int i11 = this.height;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < this.height; i14++) {
            int i15 = 0;
            while (true) {
                int i16 = this.rowSize;
                if (i15 < i16) {
                    int i17 = this.bits[(i16 * i14) + i15];
                    if (i17 != 0) {
                        if (i14 < i11) {
                            i11 = i14;
                        }
                        if (i14 > i13) {
                            i13 = i14;
                        }
                        int i18 = i15 * 32;
                        if (i18 < i10) {
                            int i19 = 0;
                            while ((i17 << (31 - i19)) == 0) {
                                i19++;
                            }
                            int i20 = i19 + i18;
                            if (i20 < i10) {
                                i10 = i20;
                            }
                        }
                        if (i18 + 31 > i12) {
                            int i21 = 31;
                            while ((i17 >>> i21) == 0) {
                                i21--;
                            }
                            int i22 = i18 + i21;
                            if (i22 > i12) {
                                i12 = i22;
                            }
                        }
                    }
                    i15++;
                }
            }
        }
        int i23 = i12 - i10;
        int i24 = i13 - i11;
        if (i23 < 0 || i24 < 0) {
            return null;
        }
        return new int[]{i10, i11, i23, i24};
    }

    public int getHeight() {
        return this.height;
    }

    public BitArray getRow(int i10, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.width) {
            bitArray = new BitArray(this.width);
        }
        int i11 = i10 * this.rowSize;
        for (int i12 = 0; i12 < this.rowSize; i12++) {
            bitArray.setBulk(i12 << 5, this.bits[i11 + i12]);
        }
        return bitArray;
    }

    public int[] getTopLeftOnBit() {
        int[] iArr;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            iArr = this.bits;
            if (i11 >= iArr.length || iArr[i11] != 0) {
                break;
            }
            i11++;
        }
        if (i11 == iArr.length) {
            return null;
        }
        int i12 = this.rowSize;
        int i13 = i11 / i12;
        int i14 = (i11 % i12) << 5;
        while ((iArr[i11] << (31 - i10)) == 0) {
            i10++;
        }
        return new int[]{i14 + i10, i13};
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i10 = this.width;
        int i11 = (((((i10 * 31) + i10) * 31) + this.height) * 31) + this.rowSize;
        for (int i12 : this.bits) {
            i11 = (i11 * 31) + i12;
        }
        return i11;
    }

    public void set(int i10, int i11) {
        int i12 = (i11 * this.rowSize) + (i10 >> 5);
        int[] iArr = this.bits;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public void setRegion(int i10, int i11, int i12, int i13) {
        if (i11 < 0 || i10 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i13 < 1 || i12 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i14 = i12 + i10;
        int i15 = i13 + i11;
        if (i15 > this.height || i14 > this.width) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i11 < i15) {
            int i16 = this.rowSize * i11;
            for (int i17 = i10; i17 < i14; i17++) {
                int[] iArr = this.bits;
                int i18 = (i17 >> 5) + i16;
                iArr[i18] = iArr[i18] | (1 << (i17 & 31));
            }
            i11++;
        }
    }

    public void setRow(int i10, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int[] iArr = this.bits;
        int i11 = this.rowSize;
        System.arraycopy(bitArray2, 0, iArr, i10 * i11, i11);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.height * (this.width + 1));
        for (int i10 = 0; i10 < this.height; i10++) {
            for (int i11 = 0; i11 < this.width; i11++) {
                sb2.append(get(i11, i10) ? "X " : "  ");
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }

    public BitMatrix(int i10, int i11) {
        if (i10 < 1 || i11 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.width = i10;
        this.height = i11;
        int i12 = (i10 + 31) >> 5;
        this.rowSize = i12;
        this.bits = new int[i12 * i11];
    }
}
