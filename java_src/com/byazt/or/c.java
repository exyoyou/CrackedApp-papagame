package com.byazt.or;

import com.byazt.nr.m;
import com.sigmob.sdk.archives.tar.e;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f18355c = {-119, 80, 78, 71, 13, 10, 26, 10};
    public static final byte[] tt = {97, 99, 84, e.P};

    public static boolean c(byte[] bArr) {
        try {
            if (!c(bArr, f18355c)) {
                return false;
            }
            int i10 = 8;
            while (i10 >= 0 && i10 + 12 <= bArr.length) {
                int iC = c(bArr, i10);
                int i11 = i10 + 4;
                byte[] bArr2 = new byte[4];
                System.arraycopy(bArr, i11, bArr2, 0, 4);
                int i12 = i11 + 4;
                if (Arrays.equals(bArr2, tt)) {
                    return true;
                }
                i10 = i12 + iC + 4;
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return false;
    }

    private static boolean c(byte[] bArr, byte[] bArr2) {
        if (bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private static int c(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
