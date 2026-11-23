package com.byazt.xai;

import android.util.Pair;
import com.byazt.uq.a;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1690, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f21773c = "";

    public static String[] c(File file) {
        String str;
        String strC = "";
        try {
            ByteBuffer byteBufferTt = tt(file);
            if (c(byteBufferTt)) {
                strC = a.c(byteBufferTt.array());
                str = "";
            } else {
                str = "without v2 & v3 signature.";
            }
        } catch (Exception unused) {
            str = strC;
        }
        return new String[]{strC, f21773c, str};
    }

    private static ByteBuffer tt(File file) throws Exception {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                Pair<ByteBuffer, Long> pairC = c(randomAccessFile2);
                ByteBuffer byteBuffer = (ByteBuffer) pairC.first;
                long jLongValue = ((Long) pairC.second).longValue();
                if (ve.c(randomAccessFile2, jLongValue)) {
                    throw new Exception("ZIP64 APK not supported");
                }
                ByteBuffer byteBuffer2 = (ByteBuffer) c(randomAccessFile2, c(byteBuffer, jLongValue)).first;
                randomAccessFile2.close();
                return byteBuffer2;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile) throws Exception {
        Pair<ByteBuffer, Long> pairC = ve.c(randomAccessFile);
        if (pairC != null) {
            return pairC;
        }
        throw new Exception("Not an APK file: ZIP End of Central Directory record not found");
    }

    private static long c(ByteBuffer byteBuffer, long j10) throws Exception {
        long jC = ve.c(byteBuffer);
        if (jC <= j10) {
            if (ve.tt(byteBuffer) + jC == j10) {
                return jC;
            }
            throw new Exception("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        throw new Exception("ZIP Central Directory offset out of range: " + jC + ". ZIP End of Central Directory offset: " + j10);
    }

    public static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile, long j10) throws Exception {
        if (j10 >= 32) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            randomAccessFile.seek(j10 - ((long) byteBufferAllocate.capacity()));
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.getLong(8) == 2334950737559900225L && byteBufferAllocate.getLong(16) == 3617552046287187010L) {
                long j11 = byteBufferAllocate.getLong(0);
                if (j11 < byteBufferAllocate.capacity() || j11 > 2147483639) {
                    throw new Exception("APK Signing Block size out of range: ".concat(String.valueOf(j11)));
                }
                int i10 = (int) (8 + j11);
                long j12 = j10 - ((long) i10);
                if (j12 >= 0) {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i10);
                    byteBufferAllocate2.order(byteOrder);
                    randomAccessFile.seek(j12);
                    randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
                    long j13 = byteBufferAllocate2.getLong(0);
                    if (j13 == j11) {
                        return Pair.create(byteBufferAllocate2, Long.valueOf(j12));
                    }
                    throw new Exception("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j11);
                }
                throw new Exception("APK Signing Block offset out of range: ".concat(String.valueOf(j12)));
            }
            throw new Exception("No APK Signing Block before ZIP Central Directory");
        }
        throw new Exception("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(j10)));
    }

    private static void tt(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static boolean c(ByteBuffer byteBuffer) throws Exception {
        tt(byteBuffer);
        ByteBuffer byteBufferC = c(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i10 = 0;
        while (byteBufferC.hasRemaining()) {
            i10++;
            if (byteBufferC.remaining() >= 8) {
                long j10 = byteBufferC.getLong();
                if (j10 >= 4 && j10 <= 2147483647L) {
                    int i11 = (int) j10;
                    int iPosition = byteBufferC.position() + i11;
                    if (i11 <= byteBufferC.remaining()) {
                        int i12 = byteBufferC.getInt();
                        if (i12 == -262969152) {
                            f21773c = "V3";
                            return true;
                        }
                        if (i12 == 1896449818) {
                            f21773c = "V2";
                            return true;
                        }
                        byteBufferC.position(iPosition);
                    } else {
                        throw new Exception("APK Signing Block entry #" + i10 + " size out of range: " + i11 + ", available: " + byteBufferC.remaining());
                    }
                } else {
                    throw new Exception("APK Signing Block entry #" + i10 + " size out of range: " + j10);
                }
            } else {
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i10)));
            }
        }
        return false;
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
