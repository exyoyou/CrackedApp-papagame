package com.kwad.sdk.pngencrypt;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class n {
    public static Charset bld = Charset.forName("ISO-8859-1");
    public static Charset ble = Charset.forName("UTF-8");
    private static ThreadLocal<Boolean> blf = new ThreadLocal<Boolean>() { // from class: com.kwad.sdk.pngencrypt.n.1
        private static Boolean Th() {
            return Boolean.FALSE;
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ Boolean initialValue() {
            return Th();
        }
    };

    public static byte[] Tg() {
        return new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
    }

    static final int d(int i10, int i11, int i12) {
        int i13 = (i10 + i11) - i12;
        int i14 = i13 >= i10 ? i13 - i10 : i10 - i13;
        int i15 = i13 >= i11 ? i13 - i11 : i11 - i13;
        int i16 = i13 >= i12 ? i13 - i12 : i12 - i13;
        if (i14 > i15 || i14 > i16) {
            return i15 <= i16 ? i11 : i12;
        }
        return i10;
    }

    public static int e(InputStream inputStream) {
        try {
            return inputStream.read();
        } catch (IOException unused) {
            return -1;
        }
    }

    public static int f(InputStream inputStream) {
        try {
            int i10 = inputStream.read();
            int i11 = inputStream.read();
            int i12 = inputStream.read();
            int i13 = inputStream.read();
            if (i10 != -1 && i11 != -1 && i12 != -1 && i13 != -1) {
                return (i10 << 24) | (i11 << 16) | ((i12 << 8) + i13);
            }
        } catch (IOException unused) {
        }
        return -1;
    }

    public static final int g(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int e(byte[] bArr, int i10) {
        return bArr[i10] & 255;
    }

    public static int f(byte[] bArr, int i10) {
        return (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
    }
}
