package com.byazt.ej;

import android.util.Pair;
import com.byazt.of.tt;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2427, 20})
public abstract class c {
    public static long c(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        return tt(byteBuffer, byteBuffer.position() + 16);
    }

    private static int n(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i10 = iCapacity - 22;
        int iMin = Math.min(i10, 65535);
        for (int i11 = 0; i11 <= iMin; i11++) {
            int i12 = i10 - i11;
            if (byteBuffer.getInt(i12) == 101010256 && c(byteBuffer, i12 + 20) == i11) {
                return i12;
            }
        }
        return -1;
    }

    public static long tt(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        return tt(byteBuffer, byteBuffer.position() + 12);
    }

    public static void uj(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static int ve(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        return c(byteBuffer, byteBuffer.position() + 10);
    }

    public static Pair<ByteBuffer, Long> c(tt ttVar) throws IOException {
        if (ttVar.c() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> pairC = c(ttVar, 0);
        return pairC != null ? pairC : c(ttVar, 65535);
    }

    public static long tt(ByteBuffer byteBuffer, int i10) {
        return ((long) byteBuffer.getInt(i10)) & 4294967295L;
    }

    private static Pair<ByteBuffer, Long> c(tt ttVar, int i10) throws IOException {
        if (i10 >= 0 && i10 <= 65535) {
            long jC = ttVar.c();
            if (jC < 22) {
                return null;
            }
            int iMin = ((int) Math.min(i10, jC - 22)) + 22;
            long j10 = jC - ((long) iMin);
            ByteBuffer byteBufferC = ttVar.c(j10, iMin);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferC.order(byteOrder);
            int iN = n(byteBufferC);
            if (iN == -1) {
                return null;
            }
            byteBufferC.position(iN);
            ByteBuffer byteBufferSlice = byteBufferC.slice();
            byteBufferSlice.order(byteOrder);
            return new Pair<>(byteBufferSlice, Long.valueOf(j10 + ((long) iN)));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i10)));
    }

    public static int c(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getShort(i10) & UShort.MAX_VALUE;
    }
}
