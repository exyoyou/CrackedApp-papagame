package cn.fly.tools.network;

import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class ByteCounterInputStream extends InputStream implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f2032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnReadListener f2034c;

    public ByteCounterInputStream(InputStream inputStream) {
        this.f2032a = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f2032a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2032a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f2032a.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f2032a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.f2032a.read();
        if (i10 >= 0) {
            long j10 = this.f2033b + 1;
            this.f2033b = j10;
            OnReadListener onReadListener = this.f2034c;
            if (onReadListener != null) {
                onReadListener.onRead(j10);
            }
        }
        return i10;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f2032a.reset();
        this.f2033b = 0L;
    }

    public void setOnInputStreamReadListener(OnReadListener onReadListener) {
        this.f2034c = onReadListener;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.f2032a.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f2032a.read(bArr, i10, i11);
        if (i12 > 0) {
            long j10 = this.f2033b + ((long) i12);
            this.f2033b = j10;
            OnReadListener onReadListener = this.f2034c;
            if (onReadListener != null) {
                onReadListener.onRead(j10);
            }
        }
        return i12;
    }
}
