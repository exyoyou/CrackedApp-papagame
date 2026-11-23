package com.byazt.vnu;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 46})
public class n extends da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f21306c;

    public n(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.byazt.vnu.da
    public synchronized void c(int i10) {
        if (i10 != -1) {
            this.f21306c += (long) i10;
        }
    }

    @Override // com.byazt.vnu.da, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) throws IOException {
        long jSkip;
        jSkip = super.skip(j10);
        this.f21306c += jSkip;
        return jSkip;
    }

    public synchronized long tt() {
        return this.f21306c;
    }

    public int c() {
        long jTt = tt();
        if (jTt <= 2147483647L) {
            return (int) jTt;
        }
        throw new ArithmeticException("The byte count " + jTt + " is too large to be converted to an int");
    }
}
