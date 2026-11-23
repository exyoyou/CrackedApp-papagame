package com.google.zxing.common;

import external.org.apache.commons.lang3.d;

/* JADX INFO: loaded from: classes5.dex */
public final class BitArray {
    private int[] bits;
    private int size;

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    private void ensureCapacity(int i10) {
        if (i10 > (this.bits.length << 5)) {
            int[] iArrMakeArray = makeArray(i10);
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, iArrMakeArray, 0, iArr.length);
            this.bits = iArrMakeArray;
        }
    }

    private static int[] makeArray(int i10) {
        return new int[(i10 + 31) >> 5];
    }

    public void appendBit(boolean z10) {
        ensureCapacity(this.size + 1);
        if (z10) {
            int[] iArr = this.bits;
            int i10 = this.size;
            int i11 = i10 >> 5;
            iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        }
        this.size++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i10 = bitArray.size;
        ensureCapacity(this.size + i10);
        for (int i11 = 0; i11 < i10; i11++) {
            appendBit(bitArray.get(i11));
        }
    }

    public void appendBits(int i10, int i11) {
        if (i11 < 0 || i11 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        ensureCapacity(this.size + i11);
        while (i11 > 0) {
            boolean z10 = true;
            if (((i10 >> (i11 - 1)) & 1) != 1) {
                z10 = false;
            }
            appendBit(z10);
            i11--;
        }
    }

    public void clear() {
        int length = this.bits.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.bits[i10] = 0;
        }
    }

    public void flip(int i10) {
        int[] iArr = this.bits;
        int i11 = i10 >> 5;
        iArr[i11] = (1 << (i10 & 31)) ^ iArr[i11];
    }

    public boolean get(int i10) {
        return ((1 << (i10 & 31)) & this.bits[i10 >> 5]) != 0;
    }

    public int[] getBitArray() {
        return this.bits;
    }

    public int getNextSet(int i10) {
        int i11 = this.size;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 >> 5;
        int i13 = (~((1 << (i10 & 31)) - 1)) & this.bits[i12];
        while (i13 == 0) {
            i12++;
            int[] iArr = this.bits;
            if (i12 == iArr.length) {
                return this.size;
            }
            i13 = iArr[i12];
        }
        int iNumberOfTrailingZeros = (i12 << 5) + Integer.numberOfTrailingZeros(i13);
        int i14 = this.size;
        return iNumberOfTrailingZeros > i14 ? i14 : iNumberOfTrailingZeros;
    }

    public int getNextUnset(int i10) {
        int i11 = this.size;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 >> 5;
        int i13 = (~((1 << (i10 & 31)) - 1)) & (~this.bits[i12]);
        while (i13 == 0) {
            i12++;
            int[] iArr = this.bits;
            if (i12 == iArr.length) {
                return this.size;
            }
            i13 = ~iArr[i12];
        }
        int iNumberOfTrailingZeros = (i12 << 5) + Integer.numberOfTrailingZeros(i13);
        int i14 = this.size;
        return iNumberOfTrailingZeros > i14 ? i14 : iNumberOfTrailingZeros;
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeInBytes() {
        return (this.size + 7) >> 3;
    }

    public boolean isRange(int i10, int i11, boolean z10) {
        int i12;
        if (i11 < i10) {
            throw new IllegalArgumentException();
        }
        if (i11 == i10) {
            return true;
        }
        int i13 = i11 - 1;
        int i14 = i10 >> 5;
        int i15 = i13 >> 5;
        int i16 = i14;
        while (i16 <= i15) {
            int i17 = i16 > i14 ? 0 : i10 & 31;
            int i18 = i16 < i15 ? 31 : i13 & 31;
            if (i17 == 0 && i18 == 31) {
                i12 = -1;
            } else {
                i12 = 0;
                while (i17 <= i18) {
                    i12 |= 1 << i17;
                    i17++;
                }
            }
            int i19 = this.bits[i16] & i12;
            if (!z10) {
                i12 = 0;
            }
            if (i19 != i12) {
                return false;
            }
            i16++;
        }
        return true;
    }

    public void reverse() {
        int[] iArr = new int[this.bits.length];
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (get((i10 - i11) - 1)) {
                int i12 = i11 >> 5;
                iArr[i12] = (1 << (i11 & 31)) | iArr[i12];
            }
        }
        this.bits = iArr;
    }

    public void set(int i10) {
        int[] iArr = this.bits;
        int i11 = i10 >> 5;
        iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
    }

    public void setBulk(int i10, int i11) {
        this.bits[i10 >> 5] = i11;
    }

    public void setRange(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException();
        }
        if (i11 == i10) {
            return;
        }
        int i12 = i11 - 1;
        int i13 = i10 >> 5;
        int i14 = i12 >> 5;
        int i15 = i13;
        while (i15 <= i14) {
            int i16 = 0;
            int i17 = i15 > i13 ? 0 : i10 & 31;
            int i18 = i15 < i14 ? 31 : i12 & 31;
            if (i17 == 0 && i18 == 31) {
                i16 = -1;
            } else {
                while (i17 <= i18) {
                    i16 |= 1 << i17;
                    i17++;
                }
            }
            int[] iArr = this.bits;
            iArr[i15] = i16 | iArr[i15];
            i15++;
        }
    }

    public void toBytes(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < 8; i15++) {
                if (get(i10)) {
                    i14 |= 1 << (7 - i15);
                }
                i10++;
            }
            bArr[i11 + i13] = (byte) i14;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.size);
        for (int i10 = 0; i10 < this.size; i10++) {
            if ((i10 & 7) == 0) {
                sb2.append(' ');
            }
            sb2.append(get(i10) ? 'X' : d.f90941a);
        }
        return sb2.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.bits.length != bitArray.bits.length) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = iArr[i10] ^ bitArray.bits[i10];
            i10++;
        }
    }

    public BitArray(int i10) {
        this.size = i10;
        this.bits = makeArray(i10);
    }
}
