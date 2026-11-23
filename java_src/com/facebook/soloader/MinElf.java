package com.facebook.soloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.FileChannel;
import kotlin.UShort;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes9.dex */
public final class MinElf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f28904a = "MinElf";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28905b = 1179403647;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28906c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28907d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f28908e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f28909f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f28910g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f28911h = 65535;

    private static class ElfError extends RuntimeException {
        ElfError(String str) {
            super(str);
        }
    }

    public enum ISA {
        NOT_SO("not_so"),
        X86(com.join.mgps.mod.utils.d.f71904f),
        ARM("armeabi-v7a"),
        X86_64("x86_64"),
        AARCH64("arm64-v8a"),
        OTHERS("others");

        private final String value;

        ISA(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    public static String[] a(File file) throws IOException {
        int i10 = 0;
        while (true) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                String[] strArrB = b(fileInputStream.getChannel());
                fileInputStream.close();
                return strArrB;
            } catch (ClosedByInterruptException e10) {
                i10++;
                if (i10 > 3) {
                    throw e10;
                }
                try {
                    Thread.interrupted();
                    fileInputStream.close();
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }
    }

    public static String[] b(FileChannel fileChannel) throws IOException {
        long jC;
        long j10;
        long jF;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        long jF2 = f(fileChannel, byteBufferAllocate, 0L);
        if (jF2 != 1179403647) {
            throw new ElfError("file is not ELF: 0x" + Long.toHexString(jF2));
        }
        boolean z10 = g(fileChannel, byteBufferAllocate, 4L) == 1;
        if (g(fileChannel, byteBufferAllocate, 5L) == 2) {
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        }
        long jF3 = z10 ? f(fileChannel, byteBufferAllocate, 28L) : c(fileChannel, byteBufferAllocate, 32L);
        long jE = z10 ? e(fileChannel, byteBufferAllocate, 44L) : e(fileChannel, byteBufferAllocate, 56L);
        int iE = e(fileChannel, byteBufferAllocate, z10 ? 42L : 54L);
        if (jE == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            long jF4 = z10 ? f(fileChannel, byteBufferAllocate, 32L) : c(fileChannel, byteBufferAllocate, 40L);
            jE = z10 ? f(fileChannel, byteBufferAllocate, jF4 + 28) : f(fileChannel, byteBufferAllocate, jF4 + 44);
        }
        long j11 = jF3;
        long j12 = 0;
        while (true) {
            if (j12 >= jE) {
                jC = 0;
                break;
            }
            if ((z10 ? f(fileChannel, byteBufferAllocate, j11 + 0) : f(fileChannel, byteBufferAllocate, j11 + 0)) == 2) {
                if (!z10) {
                    jC = c(fileChannel, byteBufferAllocate, j11 + 8);
                    break;
                }
                jC = f(fileChannel, byteBufferAllocate, j11 + 4);
                break;
            }
            j11 += (long) iE;
            j12++;
        }
        long j13 = 0;
        if (jC == 0) {
            throw new ElfError("ELF file does not contain dynamic linking information");
        }
        long j14 = jC;
        long jF5 = 0;
        int i10 = 0;
        while (true) {
            boolean z11 = z10;
            long jF6 = z10 ? f(fileChannel, byteBufferAllocate, j14 + j13) : c(fileChannel, byteBufferAllocate, j14 + j13);
            if (jF6 == 1) {
                j10 = jC;
                if (i10 == Integer.MAX_VALUE) {
                    throw new ElfError("malformed DT_NEEDED section");
                }
                i10++;
            } else {
                j10 = jC;
                if (jF6 == 5) {
                    jF5 = z11 ? f(fileChannel, byteBufferAllocate, j14 + 4) : c(fileChannel, byteBufferAllocate, j14 + 8);
                }
            }
            long j15 = 16;
            j14 += z11 ? 8L : 16L;
            j13 = 0;
            if (jF6 != 0) {
                z10 = z11;
                jC = j10;
            } else {
                if (jF5 == 0) {
                    throw new ElfError("Dynamic section string-table not found");
                }
                int i11 = 0;
                while (true) {
                    if (i11 >= jE) {
                        jF = 0;
                        break;
                    }
                    if ((z11 ? f(fileChannel, byteBufferAllocate, jF3 + j13) : f(fileChannel, byteBufferAllocate, jF3 + j13)) == 1) {
                        long jF7 = z11 ? f(fileChannel, byteBufferAllocate, jF3 + 8) : c(fileChannel, byteBufferAllocate, jF3 + j15);
                        long jF8 = z11 ? f(fileChannel, byteBufferAllocate, jF3 + 20) : c(fileChannel, byteBufferAllocate, jF3 + 40);
                        if (jF7 <= jF5 && jF5 < jF8 + jF7) {
                            jF = (z11 ? f(fileChannel, byteBufferAllocate, jF3 + 4) : c(fileChannel, byteBufferAllocate, jF3 + 8)) + (jF5 - jF7);
                            break;
                        }
                    } else {
                        jE = jE;
                    }
                    jF3 += (long) iE;
                    i11++;
                    jE = jE;
                    j15 = 16;
                    j13 = 0;
                }
                long j16 = 0;
                if (jF == 0) {
                    throw new ElfError("did not find file offset of DT_STRTAB table");
                }
                String[] strArr = new String[i10];
                int i12 = 0;
                while (true) {
                    long j17 = j10 + j16;
                    long jF9 = z11 ? f(fileChannel, byteBufferAllocate, j17) : c(fileChannel, byteBufferAllocate, j17);
                    if (jF9 == 1) {
                        strArr[i12] = d(fileChannel, byteBufferAllocate, (z11 ? f(fileChannel, byteBufferAllocate, j10 + 4) : c(fileChannel, byteBufferAllocate, j10 + 8)) + jF);
                        if (i12 == Integer.MAX_VALUE) {
                            throw new ElfError("malformed DT_NEEDED section");
                        }
                        i12++;
                    }
                    j10 += z11 ? 8L : 16L;
                    if (jF9 == 0) {
                        if (i12 == i10) {
                            return strArr;
                        }
                        throw new ElfError("malformed DT_NEEDED section");
                    }
                    j16 = 0;
                }
            }
        }
    }

    private static long c(FileChannel fileChannel, ByteBuffer byteBuffer, long j10) throws IOException {
        h(fileChannel, byteBuffer, 8, j10);
        return byteBuffer.getLong();
    }

    private static String d(FileChannel fileChannel, ByteBuffer byteBuffer, long j10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            long j11 = 1 + j10;
            short sG = g(fileChannel, byteBuffer, j10);
            if (sG == 0) {
                return sb2.toString();
            }
            sb2.append((char) sG);
            j10 = j11;
        }
    }

    private static int e(FileChannel fileChannel, ByteBuffer byteBuffer, long j10) throws IOException {
        h(fileChannel, byteBuffer, 2, j10);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    private static long f(FileChannel fileChannel, ByteBuffer byteBuffer, long j10) throws IOException {
        h(fileChannel, byteBuffer, 4, j10);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    private static short g(FileChannel fileChannel, ByteBuffer byteBuffer, long j10) throws IOException {
        h(fileChannel, byteBuffer, 1, j10);
        return (short) (byteBuffer.get() & 255);
    }

    private static void h(FileChannel fileChannel, ByteBuffer byteBuffer, int i10, long j10) throws IOException {
        int i11;
        byteBuffer.position(0);
        byteBuffer.limit(i10);
        while (byteBuffer.remaining() > 0 && (i11 = fileChannel.read(byteBuffer, j10)) != -1) {
            j10 += (long) i11;
        }
        if (byteBuffer.remaining() > 0) {
            throw new ElfError("ELF file truncated");
        }
        byteBuffer.position(0);
    }
}
