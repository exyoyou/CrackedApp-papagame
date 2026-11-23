package com.byazt.fdg;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 145})
public abstract class my {
    public static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> pairC = c(randomAccessFile, 0);
        return pairC != null ? pairC : c(randomAccessFile, 65535);
    }

    public static long tt(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        return tt(byteBuffer, byteBuffer.position() + 12);
    }

    private static void uj(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int ve(ByteBuffer byteBuffer) {
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

    private static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile, int i10) throws IOException {
        if (i10 >= 0 && i10 <= 65535) {
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
            int iVe = ve(byteBufferAllocate);
            if (iVe == -1) {
                return null;
            }
            byteBufferAllocate.position(iVe);
            ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
            byteBufferSlice.order(byteOrder);
            return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + ((long) iVe)));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i10)));
    }

    private static long tt(ByteBuffer byteBuffer, int i10) {
        return ((long) byteBuffer.getInt(i10)) & 4294967295L;
    }

    public static final boolean c(RandomAccessFile randomAccessFile, long j10) throws IOException {
        long j11 = j10 - 20;
        if (j11 < 0) {
            return false;
        }
        randomAccessFile.seek(j11);
        return randomAccessFile.readInt() == 1347094023;
    }

    public static long c(ByteBuffer byteBuffer) {
        uj(byteBuffer);
        return tt(byteBuffer, byteBuffer.position() + 16);
    }

    public static void c(ByteBuffer byteBuffer, long j10) {
        uj(byteBuffer);
        c(byteBuffer, byteBuffer.position() + 16, j10);
    }

    private static int c(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getShort(i10) & UShort.MAX_VALUE;
    }

    private static void c(ByteBuffer byteBuffer, int i10, long j10) {
        if (j10 >= 0 && j10 <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + i10, (int) j10);
            return;
        }
        throw new IllegalArgumentException("uint32 value of out range: ".concat(String.valueOf(j10)));
    }
}
