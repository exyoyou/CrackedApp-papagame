package com.byazt.jf;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LATENCYTIME, 13})
public class tt {
    public static ve c(com.byazt.of.tt ttVar, com.byazt.pty.tt ttVar2, int i10) throws Exception {
        try {
            com.byazt.tdd.tt.c cVarC = com.byazt.tdd.tt.c(ttVar, ttVar2);
            long jC = cVarC.c();
            com.byazt.of.tt ttVarTt = cVarC.tt();
            ByteBuffer byteBufferC = ttVarTt.c(0L, (int) ttVarTt.c());
            byteBufferC.order(ByteOrder.LITTLE_ENDIAN);
            return new ve(c(byteBufferC, i10), jC, ttVar2.c(), ttVar2.uj(), ttVar2.n());
        } catch (Exception e10) {
            throw new Exception(e10.getMessage(), e10);
        }
    }

    private static ByteBuffer tt(ByteBuffer byteBuffer, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("size: ".concat(String.valueOf(i10)));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i11 = i10 + iPosition;
        if (i11 < iPosition || i11 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i11);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i11);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    public static byte[] ve(ByteBuffer byteBuffer) throws Exception {
        int i10 = byteBuffer.getInt();
        if (i10 < 0) {
            throw new Exception("Negative length");
        }
        if (i10 <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i10];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new Exception("Underflow while reading length-prefixed value. Length: " + i10 + ", available: " + byteBuffer.remaining());
    }

    public static ByteBuffer tt(ByteBuffer byteBuffer) throws Exception {
        if (byteBuffer.remaining() >= 4) {
            int i10 = byteBuffer.getInt();
            if (i10 >= 0) {
                if (i10 <= byteBuffer.remaining()) {
                    return tt(byteBuffer, i10);
                }
                throw new Exception("Length-prefixed field longer than remaining buffer. Field length: " + i10 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new Exception("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static ByteBuffer c(ByteBuffer byteBuffer, int i10) throws Exception {
        c(byteBuffer);
        ByteBuffer byteBufferC = c(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i11 = 0;
        while (byteBufferC.hasRemaining()) {
            i11++;
            if (byteBufferC.remaining() >= 8) {
                long j10 = byteBufferC.getLong();
                if (j10 >= 4 && j10 <= 2147483647L) {
                    int i12 = (int) j10;
                    int iPosition = byteBufferC.position() + i12;
                    if (i12 <= byteBufferC.remaining()) {
                        if (byteBufferC.getInt() == i10) {
                            return tt(byteBufferC, i12 - 4);
                        }
                        byteBufferC.position(iPosition);
                    } else {
                        throw new Exception("APK Signing Block entry #" + i11 + " size out of range: " + i12 + ", available: " + byteBufferC.remaining());
                    }
                } else {
                    throw new Exception("APK Signing Block entry #" + i11 + " size out of range: " + j10);
                }
            } else {
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i11)));
            }
        }
        throw new Exception("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i10)));
    }

    public static void c(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static ByteBuffer c(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("start: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            int iCapacity = byteBuffer.capacity();
            if (i11 <= byteBuffer.capacity()) {
                int iLimit = byteBuffer.limit();
                int iPosition = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i11);
                    byteBuffer.position(i10);
                    ByteBuffer byteBufferSlice = byteBuffer.slice();
                    byteBufferSlice.order(byteBuffer.order());
                    return byteBufferSlice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(iLimit);
                    byteBuffer.position(iPosition);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i11 + " > " + iCapacity);
        }
        throw new IllegalArgumentException("end < start: " + i11 + " < " + i10);
    }
}
