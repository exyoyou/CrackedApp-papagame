package lc;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.LinkedHashMap;
import java.util.Map;
import kwai.h.e;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f94142a = {1897018457, 1897018458, 1897018459};

    public static ByteBuffer a(ByteBuffer byteBuffer, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("size: " + i10);
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i11 = i10 + iPosition;
        if (i11 < iPosition || i11 > iLimit) {
            throw new BufferUnderflowException();
        }
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            return byteBufferSlice;
        } finally {
        }
    }

    public static ByteBuffer b(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("start: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("end < start: " + i11 + " < " + i10);
        }
        int iCapacity = byteBuffer.capacity();
        if (i11 > byteBuffer.capacity()) {
            throw new IllegalArgumentException("end > capacity: " + i11 + " > " + iCapacity);
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            return byteBufferSlice;
        } finally {
        }
    }

    public static Map<Integer, ByteBuffer> c(ByteBuffer byteBuffer) throws e {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
        ByteBuffer byteBufferB = b(byteBuffer, 8, byteBuffer.capacity() - 24);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        while (byteBufferB.hasRemaining()) {
            i10++;
            if (byteBufferB.remaining() < 8) {
                throw new e("Insufficient data to read size of APK Signing Block entry #" + i10);
            }
            long j10 = byteBufferB.getLong();
            if (j10 < 4 || j10 > 2147483647L) {
                throw new e("APK Signing Block entry #" + i10 + " size out of range: " + j10);
            }
            int i11 = (int) j10;
            int iPosition = byteBufferB.position() + i11;
            if (i11 > byteBufferB.remaining()) {
                throw new e("APK Signing Block entry #" + i10 + " size out of range: " + i11 + ", available: " + byteBufferB.remaining());
            }
            linkedHashMap.put(Integer.valueOf(byteBufferB.getInt()), a(byteBufferB, i11 - 4));
        }
        return linkedHashMap;
    }

    public static c<ByteBuffer, Long> d(FileChannel fileChannel) throws e, IOException {
        long size = fileChannel.size();
        if (size < 22) {
            throw new IOException("APK too small for ZIP End of Central Directory (EOCD) record");
        }
        long j10 = size - 22;
        long jMin = Math.min(j10, WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i10 = 0;
        while (true) {
            long j11 = i10;
            if (j11 > jMin) {
                throw new IOException("ZIP End of Central Directory (EOCD) record not found");
            }
            long j12 = j10 - j11;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            fileChannel.position(j12);
            fileChannel.read(byteBufferAllocate);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            if (byteBufferAllocate.getInt(0) == 101010256) {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(2);
                fileChannel.position(j12 + 20);
                fileChannel.read(byteBufferAllocate2);
                byteBufferAllocate2.order(byteOrder);
                short s10 = byteBufferAllocate2.getShort(0);
                if (s10 == i10) {
                    ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(4);
                    byteBufferAllocate3.order(byteOrder);
                    fileChannel.position((fileChannel.size() - ((long) s10)) - 6);
                    fileChannel.read(byteBufferAllocate3);
                    long j13 = byteBufferAllocate3.getInt(0);
                    if (j13 <= 0) {
                        j13 &= 4294967295L;
                    }
                    if (j13 < 32) {
                        throw new e("APK too small for APK Signing Block. ZIP Central Directory offset: " + j13);
                    }
                    fileChannel.position(j13 - 24);
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(24);
                    fileChannel.read(byteBufferAllocate4);
                    byteBufferAllocate4.order(byteOrder);
                    if (byteBufferAllocate4.getLong(8) != 2334950737559900225L || byteBufferAllocate4.getLong(16) != 3617552046287187010L) {
                        throw new e("No APK Signing Block before ZIP Central Directory");
                    }
                    long j14 = byteBufferAllocate4.getLong(0);
                    if (j14 < byteBufferAllocate4.capacity() || j14 > 2147483639) {
                        throw new e("APK Signing Block size out of range: " + j14);
                    }
                    int i11 = (int) (8 + j14);
                    long j15 = j13 - ((long) i11);
                    if (j15 < 0) {
                        throw new e("APK Signing Block offset out of range: " + j15);
                    }
                    fileChannel.position(j15);
                    ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate(i11);
                    fileChannel.read(byteBufferAllocate5);
                    byteBufferAllocate5.order(byteOrder);
                    long j16 = byteBufferAllocate5.getLong(0);
                    if (j16 == j14) {
                        return new c<>(byteBufferAllocate5, Long.valueOf(j15));
                    }
                    throw new e("APK Signing Block sizes in header and footer do not match: " + j16 + " vs " + j14);
                }
            }
            i10++;
        }
    }
}
