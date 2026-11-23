package com.kwad.components.core.q;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends InputStream {
    private int akA;
    private volatile float akC;
    private volatile long akD;
    private InputStream akz;
    private int akw = -1;
    private int akx = 10000;
    private long aky = -1;
    private long akB = -1;
    private int akE = 20480;

    c(@NonNull InputStream inputStream, int i10) {
        i10 = i10 < 20480 ? 20480 : i10;
        this.akz = inputStream;
        this.akC = i10 / 1000.0f;
    }

    @WorkerThread
    private static void T(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    private static long g(long j10, long j11) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j11 <= 0) {
            return -1L;
        }
        return j10 / j11;
    }

    private void wk() {
        this.akw = 0;
        this.aky = System.currentTimeMillis();
    }

    private void wl() {
        if (this.akw < this.akx) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.aky;
        float f10 = this.akw / this.akC;
        this.akD = g(this.akA, jCurrentTimeMillis - this.akB);
        float f11 = j10;
        if (f10 > f11) {
            T((long) (f10 - f11));
        }
        wk();
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.akz.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.akz.close();
        b.a(this);
        this.akB = -1L;
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i10) {
        this.akz.mark(i10);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.akz.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.akB <= 0) {
            this.akB = System.currentTimeMillis();
        }
        this.akA++;
        if (!(b.aku && b.akt)) {
            return this.akz.read();
        }
        if (this.akw < 0) {
            wk();
        }
        int i10 = this.akz.read();
        this.akw++;
        wl();
        return i10;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.akz.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        return this.akz.skip(j10);
    }

    public final long wj() {
        return this.akD;
    }
}
