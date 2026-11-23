package com.tencent.cos.utils;

import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public final class CommonSha1Utils {
    private int blockIndex;
    private int[] block = new int[16];

    /* JADX INFO: renamed from: dd, reason: collision with root package name */
    int[] f83702dd = new int[5];
    private int[] state = new int[5];
    private long count = 0;
    public byte[] digestBits = new byte[20];
    public boolean digestValid = false;

    final void R0(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16 = iArr[i14];
        int i17 = iArr[i11];
        int i18 = iArr[i12];
        int i19 = iArr[i13];
        iArr[i14] = i16 + (((i18 ^ i19) & i17) ^ i19) + blk0(i15) + 1518500249 + rol(iArr[i10], 5);
        iArr[i11] = rol(iArr[i11], 30);
    }

    final void R1(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16 = iArr[i14];
        int i17 = iArr[i11];
        int i18 = iArr[i12];
        int i19 = iArr[i13];
        iArr[i14] = i16 + (((i18 ^ i19) & i17) ^ i19) + blk(i15) + 1518500249 + rol(iArr[i10], 5);
        iArr[i11] = rol(iArr[i11], 30);
    }

    final void R2(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        iArr[i14] = iArr[i14] + ((iArr[i12] ^ iArr[i11]) ^ iArr[i13]) + blk(i15) + 1859775393 + rol(iArr[i10], 5);
        iArr[i11] = rol(iArr[i11], 30);
    }

    final void R3(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16 = iArr[i14];
        int i17 = iArr[i11];
        int i18 = iArr[i12];
        iArr[i14] = i16 + ((((i18 & i17) | (iArr[i13] & (i17 | i18))) + blk(i15)) - 1894007588) + rol(iArr[i10], 5);
        iArr[i11] = rol(iArr[i11], 30);
    }

    final void R4(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        iArr[i14] = iArr[i14] + ((((iArr[i12] ^ iArr[i11]) ^ iArr[i13]) + blk(i15)) - 899497514) + rol(iArr[i10], 5);
        iArr[i11] = rol(iArr[i11], 30);
    }

    final int blk(int i10) {
        int[] iArr = this.block;
        int i11 = i10 & 15;
        iArr[i11] = rol((iArr[(i10 + 2) & 15] ^ (iArr[(i10 + 13) & 15] ^ iArr[(i10 + 8) & 15])) ^ iArr[i11], 1);
        return this.block[i11];
    }

    final int blk0(int i10) {
        int[] iArr = this.block;
        iArr[i10] = (rol(iArr[i10], 24) & Constants.LEVEL_SDK) | (rol(this.block[i10], 8) & 16711935);
        return this.block[i10];
    }

    public String digout() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < 20; i10++) {
            byte b10 = this.digestBits[i10];
            char c10 = (char) ((b10 >>> 4) & 15);
            char c11 = (char) (b10 & 15);
            char c12 = (char) (c10 > '\t' ? (c10 - '\n') + 97 : c10 + '0');
            int i11 = c11 > '\t' ? (c11 - '\n') + 97 : c11 + '0';
            stringBuffer.append(c12);
            stringBuffer.append((char) i11);
        }
        return stringBuffer.toString();
    }

    public String dumpTempState() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 5; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                sb2.append(String.format("%02x", Byte.valueOf((byte) (this.state[i10] >>> (i11 * 8)))));
            }
        }
        return sb2.toString();
    }

    public void finish() {
        byte[] bArr = new byte[8];
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i10] = (byte) ((this.count >>> ((7 - i10) * 8)) & 255);
        }
        update((byte) -128);
        while (this.blockIndex != 56) {
            update((byte) 0);
        }
        update(bArr);
        for (int i11 = 0; i11 < 20; i11++) {
            this.digestBits[i11] = (byte) ((this.state[i11 >> 2] >> ((3 - (i11 & 3)) * 8)) & 255);
        }
        this.digestValid = true;
    }

    public String getAlg() {
        return "SHA1";
    }

    public void init() {
        int[] iArr = this.state;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
        iArr[4] = -1009589776;
        this.count = 0L;
        this.digestBits = new byte[20];
        this.digestValid = false;
        this.blockIndex = 0;
    }

    final int rol(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    void transform() {
        int[] iArr = this.f83702dd;
        int[] iArr2 = this.state;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        iArr[2] = iArr2[2];
        iArr[3] = iArr2[3];
        iArr[4] = iArr2[4];
        R0(iArr, 0, 1, 2, 3, 4, 0);
        R0(this.f83702dd, 4, 0, 1, 2, 3, 1);
        R0(this.f83702dd, 3, 4, 0, 1, 2, 2);
        R0(this.f83702dd, 2, 3, 4, 0, 1, 3);
        R0(this.f83702dd, 1, 2, 3, 4, 0, 4);
        R0(this.f83702dd, 0, 1, 2, 3, 4, 5);
        R0(this.f83702dd, 4, 0, 1, 2, 3, 6);
        R0(this.f83702dd, 3, 4, 0, 1, 2, 7);
        R0(this.f83702dd, 2, 3, 4, 0, 1, 8);
        R0(this.f83702dd, 1, 2, 3, 4, 0, 9);
        R0(this.f83702dd, 0, 1, 2, 3, 4, 10);
        R0(this.f83702dd, 4, 0, 1, 2, 3, 11);
        R0(this.f83702dd, 3, 4, 0, 1, 2, 12);
        R0(this.f83702dd, 2, 3, 4, 0, 1, 13);
        R0(this.f83702dd, 1, 2, 3, 4, 0, 14);
        R0(this.f83702dd, 0, 1, 2, 3, 4, 15);
        R1(this.f83702dd, 4, 0, 1, 2, 3, 16);
        R1(this.f83702dd, 3, 4, 0, 1, 2, 17);
        R1(this.f83702dd, 2, 3, 4, 0, 1, 18);
        R1(this.f83702dd, 1, 2, 3, 4, 0, 19);
        R2(this.f83702dd, 0, 1, 2, 3, 4, 20);
        R2(this.f83702dd, 4, 0, 1, 2, 3, 21);
        R2(this.f83702dd, 3, 4, 0, 1, 2, 22);
        R2(this.f83702dd, 2, 3, 4, 0, 1, 23);
        R2(this.f83702dd, 1, 2, 3, 4, 0, 24);
        R2(this.f83702dd, 0, 1, 2, 3, 4, 25);
        R2(this.f83702dd, 4, 0, 1, 2, 3, 26);
        R2(this.f83702dd, 3, 4, 0, 1, 2, 27);
        R2(this.f83702dd, 2, 3, 4, 0, 1, 28);
        R2(this.f83702dd, 1, 2, 3, 4, 0, 29);
        R2(this.f83702dd, 0, 1, 2, 3, 4, 30);
        R2(this.f83702dd, 4, 0, 1, 2, 3, 31);
        R2(this.f83702dd, 3, 4, 0, 1, 2, 32);
        R2(this.f83702dd, 2, 3, 4, 0, 1, 33);
        R2(this.f83702dd, 1, 2, 3, 4, 0, 34);
        R2(this.f83702dd, 0, 1, 2, 3, 4, 35);
        R2(this.f83702dd, 4, 0, 1, 2, 3, 36);
        R2(this.f83702dd, 3, 4, 0, 1, 2, 37);
        R2(this.f83702dd, 2, 3, 4, 0, 1, 38);
        R2(this.f83702dd, 1, 2, 3, 4, 0, 39);
        R3(this.f83702dd, 0, 1, 2, 3, 4, 40);
        R3(this.f83702dd, 4, 0, 1, 2, 3, 41);
        R3(this.f83702dd, 3, 4, 0, 1, 2, 42);
        R3(this.f83702dd, 2, 3, 4, 0, 1, 43);
        R3(this.f83702dd, 1, 2, 3, 4, 0, 44);
        R3(this.f83702dd, 0, 1, 2, 3, 4, 45);
        R3(this.f83702dd, 4, 0, 1, 2, 3, 46);
        R3(this.f83702dd, 3, 4, 0, 1, 2, 47);
        R3(this.f83702dd, 2, 3, 4, 0, 1, 48);
        R3(this.f83702dd, 1, 2, 3, 4, 0, 49);
        R3(this.f83702dd, 0, 1, 2, 3, 4, 50);
        R3(this.f83702dd, 4, 0, 1, 2, 3, 51);
        R3(this.f83702dd, 3, 4, 0, 1, 2, 52);
        R3(this.f83702dd, 2, 3, 4, 0, 1, 53);
        R3(this.f83702dd, 1, 2, 3, 4, 0, 54);
        R3(this.f83702dd, 0, 1, 2, 3, 4, 55);
        R3(this.f83702dd, 4, 0, 1, 2, 3, 56);
        R3(this.f83702dd, 3, 4, 0, 1, 2, 57);
        R3(this.f83702dd, 2, 3, 4, 0, 1, 58);
        R3(this.f83702dd, 1, 2, 3, 4, 0, 59);
        R4(this.f83702dd, 0, 1, 2, 3, 4, 60);
        R4(this.f83702dd, 4, 0, 1, 2, 3, 61);
        R4(this.f83702dd, 3, 4, 0, 1, 2, 62);
        R4(this.f83702dd, 2, 3, 4, 0, 1, 63);
        R4(this.f83702dd, 1, 2, 3, 4, 0, 64);
        R4(this.f83702dd, 0, 1, 2, 3, 4, 65);
        R4(this.f83702dd, 4, 0, 1, 2, 3, 66);
        R4(this.f83702dd, 3, 4, 0, 1, 2, 67);
        R4(this.f83702dd, 2, 3, 4, 0, 1, 68);
        R4(this.f83702dd, 1, 2, 3, 4, 0, 69);
        R4(this.f83702dd, 0, 1, 2, 3, 4, 70);
        R4(this.f83702dd, 4, 0, 1, 2, 3, 71);
        R4(this.f83702dd, 3, 4, 0, 1, 2, 72);
        R4(this.f83702dd, 2, 3, 4, 0, 1, 73);
        R4(this.f83702dd, 1, 2, 3, 4, 0, 74);
        R4(this.f83702dd, 0, 1, 2, 3, 4, 75);
        R4(this.f83702dd, 4, 0, 1, 2, 3, 76);
        R4(this.f83702dd, 3, 4, 0, 1, 2, 77);
        R4(this.f83702dd, 2, 3, 4, 0, 1, 78);
        R4(this.f83702dd, 1, 2, 3, 4, 0, 79);
        int[] iArr3 = this.state;
        int i10 = iArr3[0];
        int[] iArr4 = this.f83702dd;
        iArr3[0] = i10 + iArr4[0];
        iArr3[1] = iArr3[1] + iArr4[1];
        iArr3[2] = iArr3[2] + iArr4[2];
        iArr3[3] = iArr3[3] + iArr4[3];
        iArr3[4] = iArr3[4] + iArr4[4];
    }

    public synchronized void update(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            update(bArr[i12 + i10]);
        }
    }

    public void updateASCII(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            update((byte) (str.charAt(i10) & 255));
        }
    }

    public synchronized void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public synchronized void update(byte b10) {
        int i10 = this.blockIndex;
        int i11 = (i10 & 3) * 8;
        this.count += 8;
        int[] iArr = this.block;
        int i12 = i10 >> 2;
        iArr[i12] = iArr[i12] & (~(255 << i11));
        int i13 = i10 >> 2;
        iArr[i13] = ((b10 & 255) << i11) | iArr[i13];
        int i14 = i10 + 1;
        this.blockIndex = i14;
        if (i14 == 64) {
            transform();
            this.blockIndex = 0;
        }
    }
}
