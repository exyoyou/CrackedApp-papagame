package com.huaksj.vasdolly.common.apk;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f34389a = 22;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f34390b = 101010256;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f34391c = 12;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f34392d = 16;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f34393e = 20;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f34394f = 20;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f34395g = 1347094023;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f34396h = 65535;

    private c() {
    }

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i10 = iCapacity - 22;
        int iMin = Math.min(i10, 65535);
        for (int i11 = 0; i11 <= iMin; i11++) {
            int i12 = i10 - i11;
            if (byteBuffer.getInt(i12) == f34390b && e(byteBuffer, i12 + 20) == i11) {
                return i12;
            }
        }
        return -1;
    }

    static com.huaksj.vasdolly.common.c<ByteBuffer, Long> c(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        com.huaksj.vasdolly.common.c<ByteBuffer, Long> cVarD = d(randomAccessFile, 0);
        return cVarD != null ? cVarD : d(randomAccessFile, 65535);
    }

    private static com.huaksj.vasdolly.common.c<ByteBuffer, Long> d(RandomAccessFile randomAccessFile, int i10) throws IOException {
        if (i10 < 0 || i10 > 65535) {
            throw new IllegalArgumentException("maxCommentSize: " + i10);
        }
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i10, length - 22)) + 22);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferAllocate.order(byteOrder);
        long jCapacity = length - ((long) byteBufferAllocate.capacity());
        randomAccessFile.seek(jCapacity);
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        int iB = b(byteBufferAllocate);
        if (iB == -1) {
            return null;
        }
        byteBufferAllocate.position(iB);
        ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
        byteBufferSlice.order(byteOrder);
        return com.huaksj.vasdolly.common.c.a(byteBufferSlice, Long.valueOf(jCapacity + ((long) iB)));
    }

    public static int e(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getShort(i10) & UShort.MAX_VALUE;
    }

    public static long f(ByteBuffer byteBuffer, int i10) {
        return ((long) byteBuffer.getInt(i10)) & 4294967295L;
    }

    public static long g(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return f(byteBuffer, byteBuffer.position() + 16);
    }

    public static long h(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return f(byteBuffer, byteBuffer.position() + 12);
    }

    public static final boolean i(RandomAccessFile randomAccessFile, long j10) throws IOException {
        long j11 = j10 - 20;
        if (j11 < 0) {
            return false;
        }
        randomAccessFile.seek(j11);
        return randomAccessFile.readInt() == f34395g;
    }

    private static void j(ByteBuffer byteBuffer, int i10, long j10) {
        if (j10 >= 0 && j10 <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + i10, (int) j10);
            return;
        }
        throw new IllegalArgumentException("uint32 value of out range: " + j10);
    }

    public static void k(ByteBuffer byteBuffer, long j10) {
        a(byteBuffer);
        j(byteBuffer, byteBuffer.position() + 16, j10);
    }
}
