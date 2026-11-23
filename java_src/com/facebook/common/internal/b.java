package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f26874a = 4096;

    /* JADX INFO: renamed from: com.facebook.common.internal.b$b, reason: collision with other inner class name */
    private static final class C0559b extends ByteArrayOutputStream {
        private C0559b() {
        }

        void a(byte[] b10, int off) {
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, b10, off, ((ByteArrayOutputStream) this).count);
        }
    }

    private b() {
    }

    public static long a(InputStream from, OutputStream to) throws IOException {
        i.i(from);
        i.i(to);
        byte[] bArr = new byte[4096];
        long j10 = 0;
        while (true) {
            int i10 = from.read(bArr);
            if (i10 == -1) {
                return j10;
            }
            to.write(bArr, 0, i10);
            j10 += (long) i10;
        }
    }

    public static int b(InputStream in2, byte[] b10, int off, int len) throws IOException {
        i.i(in2);
        i.i(b10);
        if (len < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i10 = 0;
        while (i10 < len) {
            int i11 = in2.read(b10, off + i10, len - i10);
            if (i11 == -1) {
                break;
            }
            i10 += i11;
        }
        return i10;
    }

    public static void c(InputStream in2, byte[] b10, int off, int len) throws IOException {
        int iB = b(in2, b10, off, len);
        if (iB == len) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + iB + " bytes; " + len + " bytes expected");
    }

    public static byte[] d(InputStream in2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(in2, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] e(InputStream in2, int expectedSize) throws IOException {
        byte[] bArr = new byte[expectedSize];
        int i10 = expectedSize;
        while (i10 > 0) {
            int i11 = expectedSize - i10;
            int i12 = in2.read(bArr, i11, i10);
            if (i12 == -1) {
                return Arrays.copyOf(bArr, i11);
            }
            i10 -= i12;
        }
        int i13 = in2.read();
        if (i13 == -1) {
            return bArr;
        }
        C0559b c0559b = new C0559b();
        c0559b.write(i13);
        a(in2, c0559b);
        byte[] bArr2 = new byte[c0559b.size() + expectedSize];
        System.arraycopy(bArr, 0, bArr2, 0, expectedSize);
        c0559b.a(bArr2, expectedSize);
        return bArr2;
    }
}
