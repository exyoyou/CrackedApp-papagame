package com.meituan.android.walle;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f75342a = 3617552046287187010L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f75343b = 2334950737559900225L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f75344c = 32;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f75345d = 1896449818;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f75346e = 1903654775;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f75347f = "UTF-8";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f75348g = 22;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f75349h = 101010256;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f75350i = 65535;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f75351j = 20;

    private a() {
    }

    private static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static e<ByteBuffer, Long> b(FileChannel fileChannel) throws SignatureNotFoundException, IOException {
        return c(fileChannel, d(fileChannel));
    }

    public static e<ByteBuffer, Long> c(FileChannel fileChannel, long j10) throws SignatureNotFoundException, IOException {
        if (j10 < 32) {
            throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + j10);
        }
        fileChannel.position(j10 - 24);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
        fileChannel.read(byteBufferAllocate);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferAllocate.order(byteOrder);
        if (byteBufferAllocate.getLong(8) != 2334950737559900225L || byteBufferAllocate.getLong(16) != 3617552046287187010L) {
            throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
        }
        long j11 = byteBufferAllocate.getLong(0);
        if (j11 < byteBufferAllocate.capacity() || j11 > 2147483639) {
            throw new SignatureNotFoundException("APK Signing Block size out of range: " + j11);
        }
        int i10 = (int) (8 + j11);
        long j12 = j10 - ((long) i10);
        if (j12 < 0) {
            throw new SignatureNotFoundException("APK Signing Block offset out of range: " + j12);
        }
        fileChannel.position(j12);
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i10);
        fileChannel.read(byteBufferAllocate2);
        byteBufferAllocate2.order(byteOrder);
        long j13 = byteBufferAllocate2.getLong(0);
        if (j13 == j11) {
            return e.c(byteBufferAllocate2, Long.valueOf(j12));
        }
        throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j11);
    }

    public static long d(FileChannel fileChannel) throws IOException {
        return e(fileChannel, h(fileChannel));
    }

    public static long e(FileChannel fileChannel, long j10) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        fileChannel.position((fileChannel.size() - j10) - 6);
        fileChannel.read(byteBufferAllocate);
        return byteBufferAllocate.getInt(0);
    }

    public static Map<Integer, ByteBuffer> f(ByteBuffer byteBuffer) throws SignatureNotFoundException {
        a(byteBuffer);
        ByteBuffer byteBufferI = i(byteBuffer, 8, byteBuffer.capacity() - 24);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        while (byteBufferI.hasRemaining()) {
            i10++;
            if (byteBufferI.remaining() < 8) {
                throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i10);
            }
            long j10 = byteBufferI.getLong();
            if (j10 < 4 || j10 > 2147483647L) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i10 + " size out of range: " + j10);
            }
            int i11 = (int) j10;
            int iPosition = byteBufferI.position() + i11;
            if (i11 > byteBufferI.remaining()) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i10 + " size out of range: " + i11 + ", available: " + byteBufferI.remaining());
            }
            linkedHashMap.put(Integer.valueOf(byteBufferI.getInt()), g(byteBufferI, i11 - 4));
            byteBufferI.position(iPosition);
        }
        return linkedHashMap;
    }

    private static ByteBuffer g(ByteBuffer byteBuffer, int i10) throws BufferUnderflowException {
        if (i10 < 0) {
            throw new IllegalArgumentException("size: " + i10);
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

    public static long h(FileChannel fileChannel) throws IOException {
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
            if (byteBufferAllocate.getInt(0) == f75349h) {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(2);
                fileChannel.position(j12 + 20);
                fileChannel.read(byteBufferAllocate2);
                byteBufferAllocate2.order(byteOrder);
                short s10 = byteBufferAllocate2.getShort(0);
                if (s10 == i10) {
                    return s10;
                }
            }
            i10++;
        }
    }

    private static ByteBuffer i(ByteBuffer byteBuffer, int i10, int i11) {
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
}
