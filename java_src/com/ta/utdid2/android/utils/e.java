package com.ta.utdid2.android.utils;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static byte[] a(int i10) {
        byte[] bArr = {(byte) ((i >> 8) % 256), (byte) (i % 256), (byte) (i % 256), (byte) (i10 % 256)};
        int i11 = i10 >> 8;
        int i12 = i11 >> 8;
        return bArr;
    }

    public static byte[] b(byte[] bArr, int i10) {
        if (bArr.length != 4) {
            return null;
        }
        bArr[3] = (byte) (i10 % 256);
        int i11 = i10 >> 8;
        bArr[2] = (byte) (i11 % 256);
        int i12 = i11 >> 8;
        bArr[1] = (byte) (i12 % 256);
        bArr[0] = (byte) ((i12 >> 8) % 256);
        return bArr;
    }
}
