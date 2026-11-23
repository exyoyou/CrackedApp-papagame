package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ByteCounterInputStream extends InputStream implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f75503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f75504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnReadListener f75505c;

    public ByteCounterInputStream(InputStream inputStream) {
        this.f75503a = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f75503a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f75503a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f75503a.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f75503a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.f75503a.read();
        if (i10 >= 0) {
            long j10 = this.f75504b + 1;
            this.f75504b = j10;
            OnReadListener onReadListener = this.f75505c;
            if (onReadListener != null) {
                onReadListener.onRead(j10);
            }
        }
        return i10;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f75503a.reset();
        this.f75504b = 0L;
    }

    public void setOnInputStreamReadListener(OnReadListener onReadListener) {
        this.f75505c = onReadListener;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.f75503a.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f75503a.read(bArr, i10, i11);
        if (i12 > 0) {
            long j10 = this.f75504b + ((long) i12);
            this.f75504b = j10;
            OnReadListener onReadListener = this.f75505c;
            if (onReadListener != null) {
                onReadListener.onRead(j10);
            }
        }
        return i12;
    }
}
