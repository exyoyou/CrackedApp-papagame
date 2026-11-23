package com.byazt.tdd;

import android.util.Pair;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1562, 13})
public class tt {

    @com.byazt.zqa.c(c = {0, 1, 1562, 194})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f20120c;
        public final com.byazt.of.tt tt;

        public c(long j10, com.byazt.of.tt ttVar) {
            this.f20120c = j10;
            this.tt = ttVar;
        }

        public long c() {
            return this.f20120c;
        }

        public com.byazt.of.tt tt() {
            return this.tt;
        }
    }

    public static com.byazt.pty.tt c(com.byazt.of.tt ttVar) throws IOException, com.byazt.pty.c {
        Pair<ByteBuffer, Long> pairC = com.byazt.ej.c.c(ttVar);
        if (pairC == null) {
            throw new com.byazt.pty.c("ZIP End of Central Directory record not found");
        }
        ByteBuffer byteBuffer = (ByteBuffer) pairC.first;
        long jLongValue = ((Long) pairC.second).longValue();
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        long jC = com.byazt.ej.c.c(byteBuffer);
        if (jC > jLongValue) {
            throw new com.byazt.pty.c("ZIP Central Directory start offset out of range: " + jC + ". ZIP End of Central Directory offset: " + jLongValue);
        }
        long jTt = com.byazt.ej.c.tt(byteBuffer);
        long j10 = jC + jTt;
        if (j10 <= jLongValue) {
            return new com.byazt.pty.tt(jC, jTt, com.byazt.ej.c.ve(byteBuffer), jLongValue, byteBuffer);
        }
        throw new com.byazt.pty.c("ZIP Central Directory overlaps with End of Central Directory. CD end: " + j10 + ", EoCD start: " + jLongValue);
    }

    public static c c(com.byazt.of.tt ttVar, com.byazt.pty.tt ttVar2) throws Exception {
        long jC = ttVar2.c();
        long jTt = ttVar2.tt() + jC;
        long jUj = ttVar2.uj();
        if (jTt != jUj) {
            throw new Exception("ZIP Central Directory is not immediately followed by End of Central Directory. CD end: " + jTt + ", EoCD start: " + jUj);
        }
        if (jC >= 32) {
            ByteBuffer byteBufferC = ttVar.c(jC - 24, 24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferC.order(byteOrder);
            if (byteBufferC.getLong(8) == 2334950737559900225L && byteBufferC.getLong(16) == 3617552046287187010L) {
                long j10 = byteBufferC.getLong(0);
                if (j10 < byteBufferC.capacity() || j10 > 2147483639) {
                    throw new Exception("APK Signing Block size out of range: ".concat(String.valueOf(j10)));
                }
                long j11 = (int) (8 + j10);
                long j12 = jC - j11;
                if (j12 >= 0) {
                    ByteBuffer byteBufferC2 = ttVar.c(j12, 8);
                    byteBufferC2.order(byteOrder);
                    long j13 = byteBufferC2.getLong(0);
                    if (j13 == j10) {
                        return new c(j12, ttVar.c(j12, j11));
                    }
                    throw new Exception("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j10);
                }
                throw new Exception("APK Signing Block offset out of range: ".concat(String.valueOf(j12)));
            }
            throw new Exception("No APK Signing Block before ZIP Central Directory");
        }
        throw new Exception("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(jC)));
    }
}
