package com.facebook.imageutils;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
class f {
    f() {
    }

    public static int a(InputStream is, int numBytes, boolean isLittleEndian) throws IOException {
        int i10;
        int i11 = 0;
        for (int i12 = 0; i12 < numBytes; i12++) {
            int i13 = is.read();
            if (i13 == -1) {
                throw new IOException("no more bytes");
            }
            if (isLittleEndian) {
                i10 = (i13 & 255) << (i12 * 8);
            } else {
                i11 <<= 8;
                i10 = i13 & 255;
            }
            i11 |= i10;
        }
        return i11;
    }
}
