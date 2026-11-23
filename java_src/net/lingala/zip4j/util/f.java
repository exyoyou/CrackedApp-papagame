package net.lingala.zip4j.util;

import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.DataInput;
import java.io.IOException;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static byte a(int[] iArr) throws ZipException {
        if (iArr == null) {
            throw new ZipException("bit array is null, cannot calculate byte from bits");
        }
        if (iArr.length != 8) {
            throw new ZipException("invalid bit array length, cannot calculate byte");
        }
        if (!b(iArr)) {
            throw new ZipException("invalid bits provided, bits contain other values than 0 or 1");
        }
        int iPow = 0;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iPow = (int) (((double) iPow) + (Math.pow(2.0d, i10) * ((double) iArr[i10])));
        }
        return (byte) iPow;
    }

    private static boolean b(int[] iArr) {
        for (int i10 : iArr) {
            if (i10 != 0 && i10 != 1) {
                return false;
            }
        }
        return true;
    }

    public static byte[] c(char[] cArr) {
        cArr.getClass();
        byte[] bArr = new byte[cArr.length];
        for (int i10 = 0; i10 < cArr.length; i10++) {
            bArr[i10] = (byte) cArr[i10];
        }
        return bArr;
    }

    public static void d(byte[] bArr, int i10, int i11) {
        bArr[0] = (byte) i10;
        bArr[1] = (byte) (i10 >> 8);
        bArr[2] = (byte) (i10 >> 16);
        bArr[3] = (byte) (i10 >> 24);
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = 0;
        bArr[13] = 0;
        bArr[14] = 0;
        bArr[15] = 0;
    }

    public static int e(byte[] bArr, int i10) {
        return ((((bArr[i10 + 3] & 255) << 8) | (bArr[i10 + 2] & 255)) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    public static int f(DataInput dataInput, byte[] bArr) throws ZipException {
        try {
            dataInput.readFully(bArr, 0, 4);
            return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16);
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public static long g(byte[] bArr, int i10) {
        return ((long) (bArr[i10] & 255)) | ((((((((((((((((long) (bArr[i10 + 7] & 255)) | 0) << 8) | ((long) (bArr[i10 + 6] & 255))) << 8) | ((long) (bArr[i10 + 5] & 255))) << 8) | ((long) (bArr[i10 + 4] & 255))) << 8) | ((long) (bArr[i10 + 3] & 255))) << 8) | ((long) (bArr[i10 + 2] & 255))) << 8) | ((long) (bArr[i10 + 1] & 255))) << 8);
    }

    public static final short h(byte[] bArr, int i10) {
        return (short) ((bArr[i10 + 1] & 255) | ((short) (((short) ((bArr[i10] & 255) | 0)) << 8)));
    }

    public static int i(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    public static byte[] j(int i10) {
        return new byte[]{(byte) i10, (byte) (i10 >> 8), (byte) (i10 >> 16), (byte) (i10 >> 24)};
    }

    public static byte[] k(int i10, int i11) {
        byte[] bArr = new byte[i11];
        byte[] bArrJ = j(i10);
        for (int i12 = 0; i12 < bArrJ.length && i12 < i11; i12++) {
            bArr[i12] = bArrJ[i12];
        }
        return bArr;
    }

    public static final void l(byte[] bArr, int i10, int i11) {
        bArr[i10 + 3] = (byte) (i11 >>> 24);
        bArr[i10 + 2] = (byte) (i11 >>> 16);
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10] = (byte) (i11 & 255);
    }

    public static void m(byte[] bArr, int i10, long j10) {
        bArr[i10 + 7] = (byte) (j10 >>> 56);
        bArr[i10 + 6] = (byte) (j10 >>> 48);
        bArr[i10 + 5] = (byte) (j10 >>> 40);
        bArr[i10 + 4] = (byte) (j10 >>> 32);
        bArr[i10 + 3] = (byte) (j10 >>> 24);
        bArr[i10 + 2] = (byte) (j10 >>> 16);
        bArr[i10 + 1] = (byte) (j10 >>> 8);
        bArr[i10] = (byte) (j10 & 255);
    }

    public static final void n(byte[] bArr, int i10, short s10) {
        bArr[i10 + 1] = (byte) (s10 >>> 8);
        bArr[i10] = (byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
    }
}
