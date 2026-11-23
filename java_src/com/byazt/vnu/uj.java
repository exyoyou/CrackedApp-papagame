package com.byazt.vnu;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 15})
public final class uj {
    public static <T> T c(T t10) {
        t10.getClass();
        return t10;
    }

    public static int tt(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        c(inputStream);
        c(bArr);
        int i12 = 0;
        if (i11 < 0) {
            throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i11)));
        }
        c(i10, i10 + i11, bArr.length);
        while (i12 < i11) {
            int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                break;
            }
            i12 += i13;
        }
        return i12;
    }

    public static void c(InputStream inputStream, byte[] bArr) throws IOException {
        c(inputStream, bArr, 0, bArr.length);
    }

    public static void c(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int iTt = tt(inputStream, bArr, i10, i11);
        if (iTt == i11) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + iTt + " bytes; " + i11 + " bytes expected");
    }

    public static void c(int i10, int i11, int i12) {
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append(i11);
            sb2.append(i12);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
    }
}
