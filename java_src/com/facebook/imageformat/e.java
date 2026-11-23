package com.facebook.imageformat;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {
    private e() {
    }

    public static byte[] a(String value) {
        i.i(value);
        try {
            return value.getBytes("ASCII");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("ASCII not found!", e10);
        }
    }

    public static boolean b(final byte[] byteArray, final byte[] pattern, int offset) {
        i.i(byteArray);
        i.i(pattern);
        if (pattern.length + offset > byteArray.length) {
            return false;
        }
        for (int i10 = 0; i10 < pattern.length; i10++) {
            if (byteArray[offset + i10] != pattern[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int c(final byte[] byteArray, final int byteArrayLen, final byte[] pattern, final int patternLen) {
        i.i(byteArray);
        i.i(pattern);
        if (patternLen > byteArrayLen) {
            return -1;
        }
        int i10 = 0;
        byte b10 = pattern[0];
        int i11 = byteArrayLen - patternLen;
        while (i10 <= i11) {
            if (byteArray[i10] != b10) {
                do {
                    i10++;
                    if (i10 > i11) {
                        break;
                    }
                } while (byteArray[i10] != b10);
            }
            if (i10 <= i11) {
                int i12 = i10 + 1;
                int i13 = (i12 + patternLen) - 1;
                for (int i14 = 1; i12 < i13 && byteArray[i12] == pattern[i14]; i14++) {
                    i12++;
                }
                if (i12 == i13) {
                    return i10;
                }
            }
            i10++;
        }
        return -1;
    }

    public static boolean d(final byte[] byteArray, final byte[] pattern) {
        return b(byteArray, pattern, 0);
    }
}
