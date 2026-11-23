package com.byazt.gy;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2085, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InputStream f14804c;
    public int tt;

    public tt(InputStream inputStream) {
        c(inputStream);
    }

    public final void c(InputStream inputStream) {
        this.f14804c = inputStream;
        this.tt = 0;
    }

    public final int tt() throws IOException {
        int i10 = 0;
        for (int i11 = 0; i11 != 32; i11 += 8) {
            int i12 = this.f14804c.read();
            if (i12 == -1) {
                throw new EOFException();
            }
            this.tt++;
            i10 |= i12 << i11;
        }
        return i10;
    }

    public final void ve() throws IOException {
        long jSkip = this.f14804c.skip(4L);
        this.tt = (int) (((long) this.tt) + jSkip);
        if (jSkip != 4) {
            throw new EOFException();
        }
    }

    public final void c() {
        InputStream inputStream = this.f14804c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            c((InputStream) null);
        }
    }

    public void tt(int i10) throws IOException {
        int iTt = tt();
        if (iTt != i10) {
            throw new IOException(String.format("Expected: 0x%08x got: 0x%08x", Integer.valueOf(i10), Integer.valueOf(iTt)));
        }
    }

    public final int[] c(int i10) throws IOException {
        int[] iArr = new int[i10];
        int i11 = 0;
        while (i10 > 0) {
            iArr[i11] = tt();
            i10--;
            i11++;
        }
        return iArr;
    }
}
