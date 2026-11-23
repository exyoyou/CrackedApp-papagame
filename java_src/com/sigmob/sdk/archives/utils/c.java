package com.sigmob.sdk.archives.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    private c() {
    }

    public static long a(final InputStream input, final OutputStream output) throws IOException {
        return a(input, output, 8024);
    }

    public static long a(final InputStream input, final OutputStream output, int buffersize) throws IOException {
        byte[] bArr = new byte[buffersize];
        long j10 = 0;
        while (true) {
            int i10 = input.read(bArr);
            if (-1 == i10) {
                return j10;
            }
            output.write(bArr, 0, i10);
            j10 += (long) i10;
        }
    }
}
