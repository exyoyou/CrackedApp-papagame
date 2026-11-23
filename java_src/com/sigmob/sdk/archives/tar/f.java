package com.sigmob.sdk.archives.tar;

import com.android.dex.DexFormat;
import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f78765a = 255;

    private f() {
    }

    public static int a(String name, byte[] buf, final int offset, final int length) {
        int i10 = 0;
        while (i10 < length && i10 < name.length()) {
            buf[offset + i10] = (byte) name.charAt(i10);
            i10++;
        }
        while (i10 < length) {
            buf[offset + i10] = 0;
            i10++;
        }
        return offset + length;
    }

    public static int b(final long value, byte[] buf, final int offset, final int length) {
        int i10 = length - 2;
        a(value, buf, offset, i10);
        buf[i10 + offset] = 32;
        buf[i10 + 1 + offset] = 0;
        return offset + length;
    }

    public static int c(final long value, byte[] buf, final int offset, final int length) {
        int i10 = length - 1;
        a(value, buf, offset, i10);
        buf[i10 + offset] = 32;
        return offset + length;
    }

    public static int d(final long value, byte[] buf, final int offset, final int length) {
        int i10 = length - 2;
        a(value, buf, offset, i10);
        buf[i10 + offset] = 0;
        buf[i10 + 1 + offset] = 32;
        return offset + length;
    }

    public static long a(final byte[] buf) {
        long j10 = 0;
        for (byte b10 : buf) {
            j10 += (long) (b10 & 255);
        }
        return j10;
    }

    public static String b(byte[] buffer, final int offset, final int length) {
        StringBuffer stringBuffer = new StringBuffer(length);
        int i10 = length + offset;
        while (offset < i10) {
            byte b10 = buffer[offset];
            if (b10 == 0) {
                break;
            }
            stringBuffer.append((char) (b10 & 255));
            offset++;
        }
        return stringBuffer.toString();
    }

    public static long a(final byte[] buffer, final int offset, final int length) {
        boolean z10;
        int i10 = offset + length;
        if (length < 2) {
            throw new IllegalArgumentException("Length " + length + " must be at least 2");
        }
        int i11 = offset;
        while (true) {
            if (i11 >= i10) {
                z10 = true;
                break;
            }
            if (buffer[i11] != 0) {
                z10 = false;
                break;
            }
            i11++;
        }
        long j10 = 0;
        if (z10) {
            return 0L;
        }
        int i12 = offset;
        while (i12 < i10 && buffer[i12] == 32) {
            i12++;
        }
        int i13 = i10 - 1;
        byte b10 = buffer[i13];
        if (b10 != 0 && b10 != 32) {
            throw new IllegalArgumentException(a(buffer, offset, length, i13, b10));
        }
        int i14 = i10 - 1;
        byte b11 = buffer[i14 - 1];
        if (b11 == 0 || b11 == 32) {
            i14--;
        }
        while (i12 < i14) {
            byte b12 = buffer[i12];
            if (b12 < 48 || b12 > 55) {
                throw new IllegalArgumentException(a(buffer, offset, length, i12, b12));
            }
            j10 = (j10 << 3) + ((long) (b12 - 48));
            i12++;
        }
        return j10;
    }

    private static String a(byte[] buffer, final int offset, final int length, int current, final byte currentByte) {
        return "Invalid byte " + ((int) currentByte) + " at offset " + (current - offset) + " in '" + new String(buffer, offset, length).replaceAll(DexFormat.MAGIC_SUFFIX, "{NUL}") + "' len=" + length;
    }

    public static void a(final long value, byte[] buffer, final int offset, final int length) {
        int i10;
        int i11 = length - 1;
        if (value == 0) {
            i10 = i11 - 1;
            buffer[i11 + offset] = e.H;
        } else {
            long j10 = value;
            while (i11 >= 0 && j10 != 0) {
                buffer[offset + i11] = (byte) (((byte) (7 & j10)) + e.H);
                j10 >>>= 3;
                i11--;
            }
            if (j10 != 0) {
                throw new IllegalArgumentException(value + SimpleComparison.EQUAL_TO_OPERATION + Long.toOctalString(value) + " will not fit in octal number buffer of length " + length);
            }
            i10 = i11;
        }
        while (i10 >= 0) {
            buffer[offset + i10] = e.H;
            i10--;
        }
    }

    public static boolean a(final byte[] buffer, final int offset) {
        return buffer[offset] == 1;
    }
}
