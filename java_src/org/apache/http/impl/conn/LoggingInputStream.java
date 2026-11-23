package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
class LoggingInputStream extends InputStream {

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final InputStream f95048in;
    private final WireHC4 wire;

    public LoggingInputStream(InputStream inputStream, WireHC4 wireHC4) {
        this.f95048in = inputStream;
        this.wire = wireHC4;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f95048in.available();
        } catch (IOException e10) {
            this.wire.input("[available] I/O error : " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f95048in.close();
        } catch (IOException e10) {
            this.wire.input("[close] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        super.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int i10 = this.f95048in.read();
            if (i10 == -1) {
                this.wire.input("end of stream");
            } else {
                this.wire.input(i10);
            }
            return i10;
        } catch (IOException e10) {
            this.wire.input("[read] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        super.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        try {
            return super.skip(j10);
        } catch (IOException e10) {
            this.wire.input("[skip] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int i10 = this.f95048in.read(bArr);
            if (i10 == -1) {
                this.wire.input("end of stream");
            } else if (i10 > 0) {
                this.wire.input(bArr, 0, i10);
            }
            return i10;
        } catch (IOException e10) {
            this.wire.input("[read] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = this.f95048in.read(bArr, i10, i11);
            if (i12 == -1) {
                this.wire.input("end of stream");
            } else if (i12 > 0) {
                this.wire.input(bArr, i10, i12);
            }
            return i12;
        } catch (IOException e10) {
            this.wire.input("[read] I/O error: " + e10.getMessage());
            throw e10;
        }
    }
}
