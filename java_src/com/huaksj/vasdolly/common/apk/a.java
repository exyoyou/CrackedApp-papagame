package com.huaksj.vasdolly.common.apk;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f34378a = 1048576;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f34379b = 4096;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f34380c = 1114793335;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f34381d = 3617552046287187010L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f34382e = 2334950737559900225L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f34383f = 32;

    private a() {
    }

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static ByteBuffer b(ByteBuffer byteBuffer, int i10) throws SignatureNotFoundException {
        a(byteBuffer);
        ByteBuffer byteBufferH = h(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i11 = 0;
        while (byteBufferH.hasRemaining()) {
            i11++;
            if (byteBufferH.remaining() < 8) {
                throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i11);
            }
            long j10 = byteBufferH.getLong();
            if (j10 < 4 || j10 > 2147483647L) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i11 + " size out of range: " + j10);
            }
            int i12 = (int) j10;
            int iPosition = byteBufferH.position() + i12;
            if (i12 > byteBufferH.remaining()) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i11 + " size out of range: " + i12 + ", available: " + byteBufferH.remaining());
            }
            if (byteBufferH.getInt() == i10) {
                return e(byteBufferH, i12 - 4);
            }
            byteBufferH.position(iPosition);
        }
        throw new SignatureNotFoundException("No block with ID " + i10 + " in APK Signing Block.");
    }

    public static com.huaksj.vasdolly.common.c<ByteBuffer, Long> c(RandomAccessFile randomAccessFile, long j10) throws SignatureNotFoundException, IOException {
        if (j10 < 32) {
            throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + j10);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferAllocate.order(byteOrder);
        randomAccessFile.seek(j10 - ((long) byteBufferAllocate.capacity()));
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
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
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i10);
        byteBufferAllocate2.order(byteOrder);
        randomAccessFile.seek(j12);
        randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
        long j13 = byteBufferAllocate2.getLong(0);
        if (j13 == j11) {
            return com.huaksj.vasdolly.common.c.a(byteBufferAllocate2, Long.valueOf(j12));
        }
        throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j11);
    }

    public static b d(RandomAccessFile randomAccessFile, int i10) throws SignatureNotFoundException, IOException {
        com.huaksj.vasdolly.common.c<ByteBuffer, Long> cVarG = g(randomAccessFile);
        ByteBuffer byteBufferB = cVarG.b();
        long jLongValue = cVarG.c().longValue();
        if (c.i(randomAccessFile, jLongValue)) {
            throw new SignatureNotFoundException("ZIP64 APK not supported");
        }
        long jF = f(byteBufferB, jLongValue);
        com.huaksj.vasdolly.common.c<ByteBuffer, Long> cVarC = c(randomAccessFile, jF);
        ByteBuffer byteBufferB2 = cVarC.b();
        return new b(b(byteBufferB2, i10), cVarC.c().longValue(), jF, jLongValue, byteBufferB);
    }

    public static ByteBuffer e(ByteBuffer byteBuffer, int i10) throws BufferUnderflowException {
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

    public static long f(ByteBuffer byteBuffer, long j10) throws SignatureNotFoundException {
        long jG = c.g(byteBuffer);
        if (jG <= j10) {
            if (c.h(byteBuffer) + jG == j10) {
                return jG;
            }
            throw new SignatureNotFoundException("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        throw new SignatureNotFoundException("ZIP Central Directory offset out of range: " + jG + ". ZIP End of Central Directory offset: " + j10);
    }

    public static com.huaksj.vasdolly.common.c<ByteBuffer, Long> g(RandomAccessFile randomAccessFile) throws SignatureNotFoundException, IOException {
        com.huaksj.vasdolly.common.c<ByteBuffer, Long> cVarC = c.c(randomAccessFile);
        if (cVarC != null) {
            return cVarC;
        }
        throw new SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }

    public static ByteBuffer h(ByteBuffer byteBuffer, int i10, int i11) {
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
