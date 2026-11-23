package com.coremedia.iso;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public final class h {
    public static long a(ByteBuffer byteBuffer, int i10) {
        int iP;
        if (i10 == 1) {
            iP = g.p(byteBuffer);
        } else if (i10 == 2) {
            iP = g.i(byteBuffer);
        } else {
            if (i10 != 3) {
                if (i10 == 4) {
                    return g.l(byteBuffer);
                }
                if (i10 == 8) {
                    return g.o(byteBuffer);
                }
                throw new RuntimeException("I don't know how to read " + i10 + " bytes");
            }
            iP = g.k(byteBuffer);
        }
        return iP;
    }
}
