package com.kwad.components.core.e.b;

import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private final int[] Qu;

    private c(int[] iArr) {
        this.Qu = iArr;
    }

    public static c a(int[] iArr) {
        return new c(iArr);
    }

    private static long b(long j10, int[] iArr) {
        int i10 = 31;
        while (i10 > 23) {
            j10 = d(i10, iArr, j10);
            i10--;
        }
        while (i10 > 15) {
            j10 = c(i10, iArr, j10);
            i10--;
        }
        while (i10 > 7) {
            j10 = d(i10, iArr, j10);
            i10--;
        }
        while (i10 >= 0) {
            j10 = c(i10, iArr, j10);
            i10--;
        }
        return j10;
    }

    private static long c(int i10, int[] iArr, long j10) {
        long j11 = j10 >>> 48;
        long j12 = (j10 >> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j13 = (j10 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j14 = j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long jF = f(i10, iArr, j12);
        return (((long) (i10 + 1)) ^ (j11 ^ j12)) | (j14 << 16) | (jF << 48) | (j13 << 32);
    }

    private static long d(int i10, int[] iArr, long j10) {
        long j11 = j10 >>> 48;
        long j12 = (j10 >> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j13 = (j10 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j14 = j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long jF = f(i10, iArr, j12);
        return ((((long) (i10 + 1)) ^ (f(i10, iArr, j12) ^ j13)) << 32) | (jF << 48) | (j14 << 16) | j11;
    }

    private static long e(int i10, int[] iArr, long j10) {
        int i11 = (int) (j10 >>> 8);
        int i12 = (int) (j10 & 255);
        int i13 = i10 * 4;
        int i14 = iArr[i13 % 10];
        int i15 = iArr[(i13 + 1) % 10];
        int i16 = iArr[(i13 + 2) % 10];
        int i17 = iArr[(i13 + 3) % 10];
        int[] iArr2 = b.Qt;
        int i18 = iArr2[i14 ^ i12] ^ i11;
        int i19 = i12 ^ iArr2[i15 ^ i18];
        int i20 = i18 ^ iArr2[i19 ^ i16];
        return (((long) i20) << 8) | ((long) (iArr2[i17 ^ i20] ^ i19));
    }

    private static long f(int i10, int[] iArr, long j10) {
        int i11 = (int) (255 & j10);
        int i12 = (int) (j10 >>> 8);
        int i13 = i10 * 4;
        int i14 = iArr[(i13 + 3) % 10];
        int i15 = iArr[(i13 + 2) % 10];
        int i16 = iArr[(i13 + 1) % 10];
        int i17 = iArr[i13 % 10];
        int[] iArr2 = b.Qt;
        int i18 = iArr2[i14 ^ i12] ^ i11;
        int i19 = i12 ^ iArr2[i18 ^ i15];
        int i20 = i18 ^ iArr2[i19 ^ i16];
        return (((long) (iArr2[i17 ^ i20] ^ i19)) << 8) | ((long) i20);
    }

    public final String C(long j10) {
        return com.kwad.sdk.core.a.c.LO().encodeToString(ByteBuffer.allocate(8).putLong(a(j10, this.Qu)).array());
    }

    public final long an(String str) {
        byte[] bArrDecode = com.kwad.sdk.core.a.c.LR().decode(str);
        if (bArrDecode != null && bArrDecode.length == 8) {
            return b(ByteBuffer.wrap(bArrDecode).getLong(), this.Qu);
        }
        throw new RuntimeException("fail to decode: " + str);
    }

    private static long a(long j10, int[] iArr) {
        int i10 = 0;
        while (i10 < 8) {
            j10 = a(i10, iArr, j10);
            i10++;
        }
        while (i10 < 16) {
            j10 = b(i10, iArr, j10);
            i10++;
        }
        while (i10 < 24) {
            j10 = a(i10, iArr, j10);
            i10++;
        }
        while (i10 < 32) {
            j10 = b(i10, iArr, j10);
            i10++;
        }
        return j10;
    }

    private static long b(int i10, int[] iArr, long j10) {
        long j11 = j10 >>> 48;
        long j12 = (j10 >> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j13 = (j10 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j14 = j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long jE = e(i10, iArr, j11);
        return ((((long) (i10 + 1)) ^ (j11 ^ j12)) << 16) | (j14 << 48) | (jE << 32) | j13;
    }

    private static long a(int i10, int[] iArr, long j10) {
        long j11 = j10 >>> 48;
        long j12 = (j10 >> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j13 = (j10 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long jE = ((j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX) ^ e(i10, iArr, j11)) ^ ((long) (i10 + 1));
        return (e(i10, iArr, j11) << 32) | (jE << 48) | (j12 << 16) | j13;
    }
}
