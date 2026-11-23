package com.facebook.common.util;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {

    static class a extends ByteArrayOutputStream {
        a(int x10) {
            super(x10);
        }

        @Override // java.io.ByteArrayOutputStream
        public byte[] toByteArray() {
            int i10 = ((ByteArrayOutputStream) this).count;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            return i10 == bArr.length ? bArr : super.toByteArray();
        }
    }

    public static byte[] a(final InputStream is) throws IOException {
        return b(is, is.available());
    }

    public static byte[] b(InputStream inputStream, int hint) throws IOException {
        a aVar = new a(hint);
        com.facebook.common.internal.b.a(inputStream, aVar);
        return aVar.toByteArray();
    }

    public static long c(final InputStream inputStream, final long bytesCount) throws IOException {
        i.i(inputStream);
        i.d(Boolean.valueOf(bytesCount >= 0));
        long j10 = bytesCount;
        while (j10 > 0) {
            long jSkip = inputStream.skip(j10);
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    return bytesCount - j10;
                }
                jSkip = 1;
            }
            j10 -= jSkip;
        }
        return bytesCount;
    }
}
