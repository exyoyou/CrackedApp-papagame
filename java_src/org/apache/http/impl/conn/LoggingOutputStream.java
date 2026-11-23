package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
class LoggingOutputStream extends OutputStream {
    private final OutputStream out;
    private final WireHC4 wire;

    public LoggingOutputStream(OutputStream outputStream, WireHC4 wireHC4) {
        this.out = outputStream;
        this.wire = wireHC4;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e10) {
            this.wire.output("[close] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e10) {
            this.wire.output("[flush] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        try {
            this.wire.output(i10);
        } catch (IOException e10) {
            this.wire.output("[write] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.wire.output(bArr);
            this.out.write(bArr);
        } catch (IOException e10) {
            this.wire.output("[write] I/O error: " + e10.getMessage());
            throw e10;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.wire.output(bArr, i10, i11);
            this.out.write(bArr, i10, i11);
        } catch (IOException e10) {
            this.wire.output("[write] I/O error: " + e10.getMessage());
            throw e10;
        }
    }
}
